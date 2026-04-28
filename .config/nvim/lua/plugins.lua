vim.pack.add({
    "https://github.com/saghen/blink.lib",
    "https://github.com/saghen/blink.cmp",
    "https://github.com/nvimdev/dashboard-nvim",
    "https://github.com/ibhagwan/fzf-lua",
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/mason-org/mason.nvim",
    -- Themes
    "https://github.com/ellisonleao/gruvbox.nvim",
    "https://github.com/rebelot/kanagawa.nvim",
    "https://github.com/EdenEast/nightfox.nvim",
    "https://github.com/rose-pine/neovim",
    -- Icons
    "https://github.com/nvim-tree/nvim-web-devicons"
})

local cmp = require('blink.cmp')
cmp.build():wait(60000)
cmp.setup({
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },
    keymap = {
        preset = "default",
        ["<C-space>"] = {},
        ["<C-p>"] = {},
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-n>"] = { "select_and_accept" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-b>"] = { "scroll_documentation_down", "fallback" },
        ["<C-f>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-h>"] = { "snippet_backward", "fallback" },
        -- ["<C-e>"] = { "hide" },
    },
    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },
    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        }
    },
    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },
    sources = { default = { "lsp" } }
})

local fzf = require('fzf-lua')
require("dashboard").setup({
    theme = "hyper",
    disable_move = true,
    config = {
        header = {
            "███╗   ██╗ ██████╗     ██╗   ██╗██╗██████╗ ███████╗███████╗",
            "████╗  ██║██╔═══██╗    ██║   ██║██║██╔══██╗██╔════╝██╔════╝",
            "██╔██╗ ██║██║   ██║    ██║   ██║██║██████╔╝█████╗  ███████╗",
            "██║╚██╗██║██║   ██║    ╚██╗ ██╔╝██║██╔══██╗██╔══╝  ╚════██║",
            "██║ ╚████║╚██████╔╝     ╚████╔╝ ██║██████╔╝███████╗███████║",
            "╚═╝  ╚═══╝ ╚═════╝       ╚═══╝  ╚═╝╚═════╝ ╚══════╝╚══════╝",
        },
        shortcut = {
            {
                icon = ' ',
                desc = 'Files',
                group = 'Label',
                action = "FzfLua files",
                key = 'f',
            },
        },
        disable_move = true,
    }
})

local actions = require('fzf-lua.actions')
require('fzf-lua').setup({
    winopts = { backdrop = 85 },
    keymap = {
        builtin = {
            ["<C-f>"] = "preview-page-down",
            ["<C-b>"] = "preview-page-up",
            ["<C-p>"] = "toggle-preview",
        },
        fzf = {
            ["ctrl-a"] = "toggle-all",
            ["ctrl-t"] = "first",
            ["ctrl-g"] = "last",
            ["ctrl-d"] = "half-page-down",
            ["ctrl-u"] = "half-page-up",
        }
    },
    actions = {
        files = {
            ["ctrl-q"] = actions.file_sel_to_qf,
            ["ctrl-n"] = actions.toggle_ignore,
            ["ctrl-h"] = actions.toggle_hidden,
            ["enter"]  = actions.file_edit_or_qf,
        }
    }
})

require("lualine").setup({
    options = {
        theme = "nightfly"
    }
})

require("mason").setup({})


-- THEMES --
require("gruvbox").setup()

require("kanagawa").setup({
    transparent = true,
    keywordStyle = { italic = false },
    theme = "wave",
})

require("nightfox").setup({
    options = {
        transparent = true
    }
})

require("rose-pine").setup({
    styles = {
        italic = false
    }
})
