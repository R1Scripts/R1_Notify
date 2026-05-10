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

## Installation

1. Place `R1_NOTIFY` inside your `resources` folder.
2. Add this to your `server.cfg`:

```cfg
ensure R1_NOTIFY
```

Usage

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
