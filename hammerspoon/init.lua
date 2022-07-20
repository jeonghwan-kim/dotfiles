require('modules.vim').init()
-- require('modules.app').init({"cmd", "alt", "shift"})
-- require('modules.device').init()

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  --Simple alert
  hs.alert.show("Hello World!")

  --Notification
  -- hs.notify.new({title="Hammerspoon", informativeText="Hello world!"}):send()
  -- print(hs.keycodes.currentSourceID())
  -- hs.alert.show(hs.keycodes.currentSourceID())
  -- com.apple.keylayout.ABC
  -- com.apple.inputmethod.Korean.2SetKorean
end)


-- hs.keycodes.inputSourceChanged(function(v)
--   local inputSource = {
--     english = "com.apple.keylayout.ABC",
--     korean = "com.apple.inputmethod.Korean.2SetKorean",
--   }
  
--   local current = hs.keycodes.currentSourceID()
--   local language = nil

--   if current == inputSource.korean then
--     language = '🇰🇷 한글'
--   elseif current == inputSource.english then
--     language = '🇺🇸 영문'
--   else 
--     language = current
--   end

--   hs.alert.closeAll()
--   hs.alert.show(language)
-- end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

hs.alert.show("Config loaded")
