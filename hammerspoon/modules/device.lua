local M = {}

local function sendSystemKey(key)
  hs.eventtap.event.newSystemKeyEvent(key, true):post()
  hs.eventtap.event.newSystemKeyEvent(key, false):post()
end

local volume = {
  up   = function() sendSystemKey("SOUND_UP") end,
  down = function() sendSystemKey("SOUND_DOWN") end,
  mute = function() sendSystemKey("MUTE") end,
}

function M.init()
  hs.hotkey.bind({'cmd'}, "f13", volume.mute)
  hs.hotkey.bind({'cmd'}, "f14", volume.down, nil, volume.down) 
  hs.hotkey.bind({'cmd'}, "f15", volume.up, nil, volume.up) 
  
  hs.hotkey.bind({}, 'f13', function()  
    hs.application.launchOrFocus('launchpad')
  end)
end

return M
