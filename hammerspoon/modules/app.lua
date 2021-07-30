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

  bindAppwithMods('b', 'Firefox')
  bindAppwithMods('d', 'Dictionary')
  bindAppwithMods('l', 'Terminal')
  bindAppwithMods('j', 'IntelliJ IDEA')
  bindAppwithMods('m', 'Slack')
  bindAppwithMods('n', 'Notes')
  bindAppwithMods('o', 'Visual Studio Code')
end

return M
