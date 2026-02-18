# pocketbook8bitdo.koplugin

A super simple plugin to use the 8BitDo Bluetooth controller with Pocketbook devices running KOReader. The repository includes a `event_map.lua.sample` with my own preferences but you can change them (it also assumes the default keycodes). Follow the instructions below.

## About

This plugin is based on [bluetooth.koplugin](https://github.com/koreader/koreader/tree/master/plugins/bluetooth.koplugin) and was inspired by [this MobileRead forum discussion](https://www.mobileread.com/forums/showthread.php?t=370120).

## Installation

Follow these steps to install the plugin:

1. Put the `pocketbook8bitdo.koplugin` folder in `koreader/plugins`
2. **Copy `event_map.lua.sample` to `koreader/settings` and rename it to `event_map.lua`** ⚠️❗

After completing these steps, restart KOReader and your 8BitDo controller should be ready to use (make sure your controller is in keyboard mode).

## License

This project is licensed under the MIT License - see the LICENSE file for details.
