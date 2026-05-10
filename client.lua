local function GetNotifyType(type)
    if not type or not Config.Types[type] then
        return 'info'
    end

    return type
end

local function Notify(type, title, message, duration)
    local notifyType = GetNotifyType(type)
    local notifyData = Config.Types[notifyType]

    SendNUIMessage({
        action = 'showNotify',
        type = notifyType,
        title = title or notifyData.title,
        message = message or '',
        duration = duration or Config.DefaultDuration,
        icon = notifyData.icon,
        color = notifyData.color,
        position = Config.Position,
        sound = Config.Sound,
        max = Config.MaxNotifications
    })
end

exports('Notify', Notify)

RegisterNetEvent('R1_NOTIFY:client:Notify', function(type, title, message, duration)
    Notify(type, title, message, duration)
end)

-- Comando de prueba
RegisterCommand('r1notifytest', function()
    Notify('success', 'R1 NOTIFY', 'Notificación de prueba funcionando correctamente.', 5000)
end)