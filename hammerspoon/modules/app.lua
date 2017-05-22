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
  bindAppwithMods('e', 'Evernote')
  bindAppwithMods('h', 'Google Chrome')
  bindAppwithMods('i', 'iTerm')
  bindAppwithMods('j', 'IntelliJ IDEA')
  bindAppwithMods('l', 'Line')
  bindAppwithMods('k', 'KakaoTalk')
  bindAppwithMods('m', 'Mail')
  bindAppwithMods('n', 'Notes')
  bindAppwithMods('s', 'Slack')
end

return M
