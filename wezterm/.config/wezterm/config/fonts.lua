local wezterm = require('wezterm')
local platform = require('utils.platform')

 --local font = 'JetBrainsMonoNL Nerd Font'
local font = 'Monaco Nerd Font'
--local font = 'MesloLGL Nerd Font'
--local font = 'Hack Nerd Font'
-- local font_size = platform().is_mac and 18 or 14
local font_size = platform().is_mac and 16 or 14

return {
    -- 指定字体及样式
    font = wezterm.font(font, { weight = 'Regular', style = "Italic" }),
    -- 指定字体大小
    font_size = font_size
}
