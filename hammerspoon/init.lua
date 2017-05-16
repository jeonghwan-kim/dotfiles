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

hs.hotkey.bind({"ctrl"}, "H", function()
  hs.eventtap.keyStroke({}, 'left')
end)

hs.hotkey.bind({"ctrl"}, "J", function()
  hs.eventtap.keyStroke({}, 'down')
end)

hs.hotkey.bind({"ctrl"}, "K", function()
  hs.eventtap.keyStroke({}, 'up')
end)

hs.hotkey.bind({"ctrl"}, "L", function()
  hs.eventtap.keyStroke({}, 'right')
end)


hs.hotkey.bind({"ctrl", "alt"}, "H", function()
  hs.eventtap.keyStroke({"alt"}, 'left', 1)
end)

hs.hotkey.bind({"ctrl", "alt"}, "J", function()
  hs.eventtap.keyStroke({"alt"}, 'down')
end)

hs.hotkey.bind({"ctrl", "alt"}, "K", function()
  hs.eventtap.keyStroke({"alt"}, 'up')
end)

hs.hotkey.bind({"ctrl", "alt"}, "L", function()
  hs.eventtap.keyStroke({"alt"}, 'right')
end)


hs.hotkey.bind({"ctrl", "cmd"}, "H", function()
  hs.eventtap.keyStroke({"cmd"}, 'left')
end)

hs.hotkey.bind({"ctrl", "cmd"}, "J", function()
  hs.eventtap.keyStroke({"cmd"}, 'down')
end)

hs.hotkey.bind({"ctrl", "cmd"}, "K", function()
  hs.eventtap.keyStroke({"cmd"}, 'up')
end)

hs.hotkey.bind({"ctrl", "cmd"}, "L", function()
  hs.eventtap.keyStroke({"cmd"}, 'right')
end)


hs.hotkey.bind({"ctrl", "shift"}, "H", function()
  hs.eventtap.keyStroke({"shift"}, 'left')
end)

hs.hotkey.bind({"ctrl", "shift"}, "J", function()
  hs.eventtap.keyStroke({"shift"}, 'down')
end)

hs.hotkey.bind({"ctrl", "shift"}, "K", function()
  hs.eventtap.keyStroke({"shift"}, 'up')
end)

hs.hotkey.bind({"ctrl", "shift"}, "L", function()
  hs.eventtap.keyStroke({"shift"}, 'right')
end)


hs.hotkey.bind({"ctrl", "shift", "alt"}, "H", function()
  hs.eventtap.keyStroke({"shift", "alt"}, 'left')
end)

hs.hotkey.bind({"ctrl", "shift", "alt"}, "J", function()
  hs.eventtap.keyStroke({"shift", "alt"}, 'down')
end)

hs.hotkey.bind({"ctrl", "shift", "alt"}, "K", function()
  hs.eventtap.keyStroke({"shift", "alt"}, 'up')
end)

hs.hotkey.bind({"ctrl", "shift", "alt"}, "L", function()
  hs.eventtap.keyStroke({"shift", "alt"}, 'right')
end)


hs.hotkey.bind({"ctrl", "shift", "cmd"}, "H", function()
  hs.eventtap.keyStroke({"shift", "cmd"}, 'left')
end)

hs.hotkey.bind({"ctrl", "shift", "cmd"}, "J", function()
  hs.eventtap.keyStroke({"shift", "cmd"}, 'down')
end)

hs.hotkey.bind({"ctrl", "shift", "cmd"}, "K", function()
  hs.eventtap.keyStroke({"shift", "cmd"}, 'up')
end)

hs.hotkey.bind({"ctrl", "shift", "cmd"}, "L", function()
  hs.eventtap.keyStroke({"shift", "cmd"}, 'right')
end)
