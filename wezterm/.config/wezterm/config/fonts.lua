local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'JetBrainsMono Nerd Font'
-- local font = 'Monaco Nerd Font'
local font_size = platform().is_mac and 18 or 12

return {
    -- 指定字体及样式
    -- font = wezterm.font(font, {weight = 'Regular', style = "Italic"}),
    font = wezterm.font(font, {weight = 'Regular', style = "Normal"}),
    -- 指定字体大小
    font_size = font_size
}
