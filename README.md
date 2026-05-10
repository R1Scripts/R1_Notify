# R1_NOTIFY

**R1_NOTIFY** is a custom notification system for FiveM with a modern NUI design, smooth animations and simple usage through exports or events.

Created by **R1 Scripts**.

<img width="375" height="501" alt="image" src="https://github.com/user-attachments/assets/d33c6268-5356-4fdc-83ff-fad6a9bcf207" />

---

## Features

- Modern NUI notifications
- Smooth animations
- Custom types
- Custom position
- Sound support
- Easy exports
- Client and server events
- No framework required

---

## Notification Types

Default notification types included:

- success
- error
- warning
- info
- system

You can add more notification types inside:

```lua
shared/config.lua
```

---

## Installation

1. Place `R1_Notify` inside your `resources` folder.
2. Rename folder `R1_Notify-main` for `R1_Notify`
3. Add this to your `server.cfg`:

```cfg
ensure R1_Notify
```

---

## Usage

Client Export
```
exports['R1_NOTIFY']:Notify('success', 'Success', 'Action completed successfully.', 5000)
```

Client Event
```
TriggerEvent('R1_NOTIFY:client:Notify', 'error', 'Error', 'You do not have permission.', 5000)
```

Server Event
```
TriggerClientEvent('R1_NOTIFY:client:Notify', source, 'info', 'Server', 'Notification sent from server.', 5000)
```

---

## Example

```
RegisterCommand('testnotify', function()
    exports['R1_NOTIFY']:Notify('success', 'R1 Notify', 'Notification system is working.', 5000)
end)
```

---

## Credits

Developed By R1 SCRIPTS: https://r1-scripts.tebex.io/
