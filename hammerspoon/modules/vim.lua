local M = {}

local function bindApp(mods)
  return function(key, modifiers, character)
    hs.hotkey.bind(mods, key, function()
      hs.eventtap.keyStroke(modifiers, character, 1)
    end, nil, function() 
      hs.eventtap.keyStroke(modifiers, character, 1)
    end)
  end
end

function M.init()
  local bindAppWithCtrl = bindApp({'ctrl'})
  bindAppWithCtrl('h', {}, 'left')
  bindAppWithCtrl('j', {}, 'down')
  bindAppWithCtrl('k', {}, 'up')
  bindAppWithCtrl('l', {}, 'right')

  local bindAppWithCtrlShift = bindApp({'ctrl', 'shift'})
  bindAppWithCtrlShift('h', {'shift'}, 'left')
  bindAppWithCtrlShift('l', {'shift'}, 'right')
  bindAppWithCtrlShift('k', {'shift'}, 'up')
  bindAppWithCtrlShift('j', {'shift'}, 'down')

  local bindAppWithCtrlAlt = bindApp({'ctrl', 'alt'})
  bindAppWithCtrlAlt('h', {'alt'}, 'left')
  bindAppWithCtrlAlt('l', {'alt'}, 'right')

  local bindAppWithCtrlAltShift = bindApp({'ctrl', 'alt', 'shift'})
  bindAppWithCtrlAltShift('h', {'alt', 'shift'}, 'left')
  bindAppWithCtrlAltShift('l', {'alt', 'shift'}, 'right')

  local bindAppWithCtrlCmd = bindApp({'ctrl', 'cmd'})
  bindAppWithCtrlCmd('h', {'cmd'}, 'left')
  bindAppWithCtrlCmd('l', {'cmd'}, 'right')
  bindAppWithCtrlCmd('k', {'cmd'}, 'up')
  bindAppWithCtrlCmd('j', {'cmd'}, 'down')

  local bindAppWithCtrlCmdShift = bindApp({'ctrl', 'cmd', 'shift'})
  bindAppWithCtrlCmdShift('h', {'cmd', 'shift'}, 'left')
  bindAppWithCtrlCmdShift('l', {'cmd', 'shift'}, 'right')
  bindAppWithCtrlCmdShift('k', {'cmd', 'shift'}, 'up')
  bindAppWithCtrlCmdShift('j', {'cmd', 'shift'}, 'down')


  function changeVolume(diff)
    return function()
      local current = hs.audiodevice.defaultOutputDevice():volume()
      local new = math.min(100, math.max(0, math.floor(current + diff)))
      if new > 0 then
        hs.audiodevice.defaultOutputDevice():setMuted(false)
      end
      hs.alert.closeAll(0.0)
      hs.alert.show("Volume " .. new .. "%", {}, 0.5)
      hs.audiodevice.defaultOutputDevice():setVolume(new)
    end
  end

  hs.hotkey.bind({'cmd'}, 'f14', changeVolume(-5))
  hs.hotkey.bind({'cmd'}, 'f15', changeVolume(5))

end

return M
