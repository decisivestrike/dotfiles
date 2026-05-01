-- Highlight on copy
local ag = vim.api.nvim_create_augroup
local highlight_group = ag('YankHighlight', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({ timeout = 200 })
    end,
    group = highlight_group,
})

-- Save when leaving insert mode or switching buffers
-- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
--     callback = function()
--         vim.cmd('silent! wall') -- Saves all buffers
--     end,
-- })
