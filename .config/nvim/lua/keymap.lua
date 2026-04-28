local map = vim.keymap.set

-- База
map("n", ";", ":")

-- Перемещение строки вниз в normal mode
map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Перемещение выделенных строк вниз/вверх в visual mode
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
        map("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Tree toggle
map("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Focus
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Фокус влево" })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Фокус вниз" })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Фокус вверх" })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Фокус вправо" })

-- Fzf
local fzf = require("fzf-lua")
map("n", "<leader><leader>", fzf.files)
map("n", "<leader>/", fzf.live_grep)

local opts = { noremap = true, silent = true }
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
map("n", "<Leader>fo", ":lua vim.lsp.buf.format()<CR>", opts)
