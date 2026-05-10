const container = document.getElementById('notify-container');
const sound = document.getElementById('notify-sound');

let notifyCount = 0;

window.addEventListener('message', function(event) {
    const data = event.data;

    if (data.action === 'showNotify') {
        showNotify(data);
    }
});

function showNotify(data) {
    const duration = Number(data.duration) || 5000;
    const max = Number(data.max) || 5;

    container.className = data.position || 'top-right';

    const currentNotifications = container.querySelectorAll('.r1-notify');

    if (currentNotifications.length >= max) {
        currentNotifications[0].remove();
    }

    const notify = document.createElement('div');
    notify.className = `r1-notify ${data.type || 'info'}`;
    notify.style.setProperty('--notify-color', data.color || '#00aaff');

    notify.innerHTML = `
        <div class="notify-icon">
            <i class="${data.icon || 'fa-solid fa-circle-info'}"></i>
        </div>

        <div class="notify-content">
            <div class="notify-title">${escapeHtml(data.title || 'Notificación')}</div>
            <div class="notify-message">${escapeHtml(data.message || '')}</div>
        </div>

        <div class="notify-progress">
            <span style="animation-duration:${duration}ms"></span>
        </div>
    `;

    container.appendChild(notify);

    if (data.sound) {
        try {
            sound.currentTime = 0;
            sound.volume = Number(data.volume) || 0.25;
            sound.play();
        } catch (e) {}
    }

    setTimeout(() => {
        notify.classList.add('hide');

        setTimeout(() => {
            notify.remove();
        }, 350);
    }, duration);
}

function escapeHtml(text) {
    return String(text)
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#039;');
}
