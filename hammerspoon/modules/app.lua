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

  bindAppwithMods('b', 'Safari')
  bindAppwithMods('d', 'Dictionary')
  bindAppwithMods('i', 'iTerm')
  bindAppwithMods('j', 'IntelliJ IDEA')
  bindAppwithMods('n', 'Evernote')
  bindAppwithMods('o', 'Visual Studio Code')
  bindAppwithMods('s', 'Slack')
end

return M
