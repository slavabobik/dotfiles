local wezterm = require("wezterm")
local mux = wezterm.mux

local config = wezterm.config_builder()

config = {
        automatically_reload_config = true,
        enable_tab_bar = false,
        font = wezterm.font("Berkeley Mono", { weight = "Regular", stretch = "Normal", style = "Normal" }),
        font_size = 14,
        window_decorations = "RESIZE",
        color_scheme = "Tokyo Night Storm",
}

wezterm.on("gui-startup", function(cmd)
        local tab, pane, window = mux.spawn_window(cmd or {})
        window:gui_window():maximize()
end)

return config
