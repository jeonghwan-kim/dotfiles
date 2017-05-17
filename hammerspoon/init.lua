require('modules.vim').init()
require('modules.app').init({"cmd", "alt", "shift"})


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  --Simple alert
--   hs.alert.show("Hello World!")

  --Notification
  hs.notify.new({title="Hammerspoon", informativeText="Hello world!"}):send()
end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x - 10
--   win:setFrame(f)
-- end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")
