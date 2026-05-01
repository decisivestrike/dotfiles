return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        dashboard = {
            enabled = true,
            preset = {
                header =
                    " ███╗   ██╗ ██████╗     ███████╗██╗      ██████╗ ██████╗ \n" ..
                    " ████╗  ██║██╔═══██╗    ██╔════╝██║     ██╔═══██╗██╔══██╗\n" ..
                    " ██╔██╗ ██║██║   ██║    ███████╗██║     ██║   ██║██████╔╝\n" ..
                    " ██║╚██╗██║██║   ██║    ╚════██║██║     ██║   ██║██╔═══╝ \n" ..
                    " ██║ ╚████║╚██████╔╝    ███████║███████╗╚██████╔╝██║     \n" ..
                    " ╚═╝  ╚═══╝ ╚═════╝     ╚══════╝╚══════╝ ╚═════╝ ╚═╝     \n",
            }
        },
        explorer = {
            enabled = true,
            replace_netrw = true,
            trash = true,
        },
        picker = { enabled = true },
        words = { enabled = true },
    },
    keys = {
        -- find
        { "<leader>fb", function() Snacks.picker.buffers() end,           desc = "Buffers" },
        { "<leader>ff", function() Snacks.picker.files({ cwd = "." }) end, desc = "Find Files" },
        { "<leader>fp", function() Snacks.picker.projects() end,          desc = "Projects" },
        { "<leader>fr", function() Snacks.picker.recent() end,            desc = "Recent" },
    }
}
