return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = {"stylua"},
            go = {"goimports", "gofmt"},
            rust = {
                "rustfmt",
                lsp_format = "fallback"
            }
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true
        }
    }
    -- Если у вас отдельная функция конфигурирования или хотите управлять форматом вручную:
    -- config = function(_, opts)
    --   require("conform").setup(opts)
    -- end,
}
