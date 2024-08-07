require("dashboard").setup({
    theme = 'hyper',
    config = {
        -- header = {
        --     [[    _______      ___    ___ ___    ___ ________  ___  ________        ]],
        --     [[  |\   ____\    |\  \  /  /|\  \  /  /|\   ___ \|\  \|\   ___  \      ]],
        --     [[  \ \  \___|    \ \  \/  / | \  \/  / | \  \_|\ \ \  \ \  \\ \  \     ]],
        --     [[   \ \  \  ___   \ \    / / \ \    / / \ \  \ \\ \ \  \ \  \\ \  \    ]],
        --     [[    \ \  \|\  \   \/  /  /   \/  /  /   \ \  \_\\ \ \  \ \  \\ \  \   ]],
        --     [[     \ \_______\__/  / /   __/  / /      \ \_______\ \__\ \__\\ \__\  ]],
        --     [[      \|_______|\___/ /   |\___/ /        \|_______|\|__|\|__| \|__|  ]],
        --     [[               \|___|/    \|___|/                                     ]],
        -- },
        header = {
            "                                                    ",
            " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        },
        shortcut = {
            {
                desc = '󰊳 Update',
                group = '@property',
                action = 'Lazy update',
                key = 'u'
            }
        },
        disable_move = true,
        project = { enable = false }
    }
})
