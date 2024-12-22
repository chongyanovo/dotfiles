local wezterm = require('wezterm')
return {
    keys = {
        {
            key = '/',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = ':' }),
            })
        },
        {
            key = 't',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'c' }),
            })
        },
        {
            key = 'w',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'x' }),
            })
        },
        {
            key = 'r',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = ',' }),
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
            key = 'h',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'h' }),
            })
        },
        {
            key = 'j',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'j' }),
            })
        },
        {
            key = 'k',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'k' }),
            })
        },
        {
            key = 'l',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'l' }),
            })
        },
        {
            key = 'z',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = 'z' }),
            })
        },
        {
            key = '1',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '1' }),
            })
        },
        {
            key = '2',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '2' }),
            })
        },
        {
            key = '3',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '3' }),
            })
        },
        {
            key = '4',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '4' }),
            })
        },
        {
            key = '5',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '5' }),
            })
        },
        {
            key = '6',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '6' }),
            })
        },
        {
            key = '7',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '7' }),
            })
        },
        {
            key = '8',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '8' }),
            })
        },
        {
            key = '9',
            mods = "CMD",
            action = wezterm.action.Multiple({
                wezterm.action.SendKey({ key = ' ', mods = 'CTRL' }),
                wezterm.action.SendKey({ key = '9' }),
            })
        }
    }
}