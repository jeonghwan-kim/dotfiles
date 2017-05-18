local M = {}

local function bindApp(mods)
  return function(key, app)
    hs.hotkey.bind(mods, key, function()
      hs.application.launchOrFocus(app)
    end)
  end
end

function M.init(mods)
  local bindAppwithMods = bindApp(mods)

  bindAppwithMods('a', 'atom')
  bindAppwithMods('c', 'Google Chrome')
  bindAppwithMods('e', 'Evernote')
  bindAppwithMods('i', 'IntelliJ IDEA')
  bindAppwithMods('l', 'Line')
  bindAppwithMods('k', 'KakaoTalk')
  bindAppwithMods('m', 'Mail')
  bindAppwithMods('n', 'Notes')
  bindAppwithMods('t', 'iTerm')
end

return M
