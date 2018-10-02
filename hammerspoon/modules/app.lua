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

  bindAppwithMods('a', 'Atom')
  bindAppwithMods('d', 'Dictionary')
  bindAppwithMods('f', 'Safari')
  bindAppwithMods('h', 'Google Chrome')
  bindAppwithMods('i', 'iTerm')
  bindAppwithMods('j', 'IntelliJ IDEA')
  bindAppwithMods('b', 'WebStorm.app')
  bindAppwithMods('l', 'Line')
  bindAppwithMods('k', 'KakaoTalk')
  bindAppwithMods('n', 'Evernote')
  bindAppwithMods('o', 'Visual Studio Code')
  bindAppwithMods('s', 'Slack')
end

return M
