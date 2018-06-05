-- For examples, see https://github.com/Hammerspoon/hammerspoon/wiki/Sample-Configurations

-- Password manager
-- Alternative binding? Interferes with Evernote strikethrough
hs.hotkey.bind({"ctrl", "option", "cmd"}, "K", function()
    hs.application.launchOrFocus("KeePassXC")
end)

-- Lock screen
-- Built-ins: CTRL+CMD+Q; CTRL+SHIFT+POWER/EJECT
-- Remap instead?
hs.hotkey.bind({"ctrl", "option", "cmd"}, "L", function()
    hs.caffeinate.lockScreen()
    --hs.caffeinate.startScreenSaver()
end)
