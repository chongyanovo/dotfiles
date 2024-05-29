local wezterm = require('wezterm')
local gpu_adapters = require('utils.gpu_adapter')
local platform = require('utils.platform')

return {
    animation_fps = 60,
    max_fps = 60,
    front_end = 'WebGpu',
    webgpu_power_preference = 'HighPerformance',
    webgpu_preferred_adapter = gpu_adapters:pick(),

    -- 主题配色
    -- everforest 主题配色
    -- color_scheme_dirs = {wezterm.config_dir .. 'colors'},
    -- color_scheme = "everforest-dark-medium",
    -- Catppuccin 主题配色
    -- color_scheme = "Catppuccin Mocha", -- or Macchiato, Frappe, Latte
    color_scheme = "Catppuccin Frappe", -- or Macchiato, Mocha, Latte

    -- 背景透明度
    window_background_opacity = 0.9,

    -- 光标
    cursor_blink_ease_in = "EaseIn",
    cursor_blink_ease_out = "EaseOut",
    cursor_blink_rate = 600,
    default_cursor_style = "BlinkingBar",

    -- 滚动条
    enable_scroll_bar = true,

    -- 导航
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,
    use_fancy_tab_bar = false,
    tab_max_width = 25,
    show_tab_index_in_tab_bar = false,
    switch_to_last_active_tab_when_closing_tab = true,

    -- 页面
    integrated_title_button_alignment = "Right",
    integrated_title_button_color = "Auto",
    integrated_title_button_style = platform().is_win and "Windows" or
        "MacOsNative",
    integrated_title_buttons = {'Hide', 'Maximize', 'Close'},
    initial_cols = 120,
    initial_rows = 30,
    window_padding = {left = 5, right = 10, top = 12, bottom = 7},
    window_close_confirmation = 'NeverPrompt',
    window_decorations = "RESIZE",
    inactive_pane_hsb = {saturation = 0.7, brightness = 0.6}
}
