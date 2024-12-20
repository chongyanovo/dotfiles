local wezterm = require('wezterm')
--# 绑定一个新的快捷键来删除pane，先进行确认
--unbind x
--bind -n C-x confirm -p "Are you sure you want to kill this pane? (y/n)" "if -F '#{?pane_in_mode,1,0}' 'send -X cancel' 'if -F '#{==:#{pane_current_command},bash}' 'send -X confirm' 'if -F '#{==:#{pane_current_command},zsh}' 'send -X confirm' 'if -F '#{==:#{pane_current_command},fish}' 'send -X confirm' 'send -X kill-pane'"
return {
    keys = {
        {
            key = 't',
            mods = "CTRL",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'c' }),
            })
        },
        {
            key = 'w',
            mods = "CTRL",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'x' }),
            })
        },
        {
            key = '[',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '%' }),
            })
        },
        {
            key = ']',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '"' }),
            })
        },
        {
            key = 'z',
            mods = "CTRL",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'z' }),
            })
        },
        {
            key = '1',
            mods = "CTRL",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '1' }),
            })
        },
        {
            key = '2',
            mods = "CTRL",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '2' }),
            })
        },
        {
            key = '3',
            mods = "CTRL",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '3' }),
            })
        },
        {
            key = '4',
            mods = "CTRL",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '4' }),
            })
        },
        {
            key = '5',
            mods = "CTRL",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '5' }),
            })
        }
    }
}