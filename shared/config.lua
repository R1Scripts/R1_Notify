Config = {}

Config.Position = 'top-center'
-- Opciones:
-- top-right
-- top-left
-- top-center
-- bottom-right
-- bottom-left
-- bottom-center
-- center-right
-- center-left

Config.DefaultDuration = 5000

Config.MaxNotifications = 5

Config.Sound = {
    Active = true,
    Volume = 0.05
}

Config.Types = {
    success = {
        icon = 'fa-solid fa-circle-check',
        color = '#00ff88',
        title = 'ÉXITO'
    },

    error = {
        icon = 'fa-solid fa-circle-xmark',
        color = '#ff2f4f',
        title = 'ERROR'
    },

    warning = {
        icon = 'fa-solid fa-triangle-exclamation',
        color = '#ffb300',
        title = 'ADVERTENCIA'
    },

    info = {
        icon = 'fa-solid fa-circle-info',
        color = '#00aaff',
        title = 'INFORMACIÓN'
    },

    system = {
        icon = 'fa-solid fa-gear',
        color = '#b266ff',
        title = 'SISTEMA'
    }
}
