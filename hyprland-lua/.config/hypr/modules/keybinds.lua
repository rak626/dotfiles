-- UWSM Keybindings
-- All applications are launched via 'uwsm app --' for proper systemd scoping

local mainMod = "SUPER"

-- Helper for exec binds with UWSM scoping
local function uwsm_exec(cmd)
    return hl.dsp.exec_cmd("uwsm app -- " .. cmd)
end

-- Core Binds
hl.bind(mainMod .. " + Return", uwsm_exec(_G.terminal))
hl.bind(mainMod .. " + SHIFT + Return", uwsm_exec(_G.browser))
hl.bind(mainMod .. " + SHIFT + B", uwsm_exec(_G.brave))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- Exit session via UWSM
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("uwsm stop"))

hl.bind(mainMod .. " + E", uwsm_exec(_G.fileManager))
hl.bind(mainMod .. " + SHIFT + V", uwsm_exec(_G.clipboard))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", uwsm_exec(_G.menu))
hl.bind(mainMod .. " + P", hl.dsp.layout("pseudo"))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- System control
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.exec_cmd("systemctl --user restart waybar"))

-- Screenshots
hl.bind("Print", uwsm_exec("~/.config/hypr/scripts/screenshot.sh area"))
hl.bind("SHIFT + Print", uwsm_exec("~/.config/hypr/scripts/screenshot.sh full"))

-- Focus
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))

-- Workspaces
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.workspace.focus(i))
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + 0", hl.dsp.workspace.focus(10))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Special Workspace
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Mouse Binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.move({}), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize({}), { mouse = true })

-- Multimedia Keys (Locked and repeating for volume/brightness)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --brightness raise"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness lower"), { locked = true, repeating = true })

-- Player Control
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
