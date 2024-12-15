-- Initialize Configuration
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local opacity = 0.75
local transparent_bg = "rgba(22, 24, 26, " .. opacity .. ")"

-- Font
config.font = wezterm.font_with_fallback({
	{
		family = "JetBrains Mono",
		weight = "Regular",
	},
	"Segoe UI Emoji",
})
config.font_size = 10

-- Window
config.initial_rows = 45
config.initial_cols = 180
config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = opacity
config.window_close_confirmation = "NeverPrompt"
config.win32_system_backdrop = "Acrylic"
config.max_fps = 144
config.animation_fps = 60
config.cursor_blink_rate = 250

-- Colors
config.color_scheme = "Gruvbox Dark (Gogh)"
config.force_reverse_video_cursor = true
config.colors = {
	foreground = "#EBDBB2",
	background = "#282828",

	cursor_bg = "#EBDBB2",
	cursor_fg = "#282828",
	cursor_border = "#EBDBB2",

	selection_fg = "#EBDBB2",
	selection_bg = "#928374",

	scrollbar_thumb = "#282828",
	split = "#282828",

	ansi = { "#282828", "#CC241D", "#98971A", "#D79921", "#458588", "#B16286", "#689D6A", "#A89984" },
	brights = { "#928374", "#FB4934", "#B8BB26", "#FABD2F", "#83A598", "#D3869B", "#8EC07C", "#EBDBB2" },
	indexed = { [16] = "#FABD2F", [17] = "#FB4934" },
}

-- Tabs
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = false
config.colors.tab_bar = {
	background = transparent_bg,
	new_tab = { fg_color = config.colors.background, bg_color = config.colors.brights[6] },
	new_tab_hover = { fg_color = config.colors.background, bg_color = config.colors.foreground },
}

wezterm.on("format-tab-title", function(tab, _, _, _, hover)
	local background = config.colors.brights[1]
	local foreground = config.colors.foreground

	if tab.is_active then
		background = config.colors.brights[7]
		foreground = config.colors.background
	elseif hover then
		background = config.colors.brights[8]
		foreground = config.colors.background
	end

	local title = tostring(tab.tab_index + 1)
	return {
		{ Foreground = { Color = background } },
		{ Text = "█" },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Foreground = { Color = background } },
		{ Text = "█" },
	}
end)

-- Keybindings
config.keys = {
	-- Remap paste for clipboard history compatibility
	{ key = "v", mods = "CTRL", action = wezterm.action({ PasteFrom = "Clipboard" }) },
}

return config
