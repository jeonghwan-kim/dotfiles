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

  bindAppwithMods('c', 'Google Chrome')
  bindAppwithMods('f', 'Firefox')
  bindAppwithMods('l', 'Terminal') -- terminaL
  bindAppwithMods('k', 'KakaoTalk')
  bindAppwithMods('s', 'Slack')
  bindAppwithMods('n', 'Notes') -- Note
  bindAppwithMods('i', 'Intellij Idea')
  bindAppwithMods('v', 'Visual Studio Code') 
  bindAppwithMods('p', 'Pages') -- Pages
  bindAppwithMods('y', 'Dictionary') -- dictionarY
end

return M
