-- 零 created: 2025-07-12
-- Using Emmet for zencoding support instead of sparkup because the latter is unsupported.

local lspconfig = require('lspconfig')

lspconfig.emmet_ls.setup({
    filetypes = {
        "html", "css", "javascript", "javascriptreact", "typescriptreact",
        "sass", "scss", "less", "vue", "xml", "xsl", "php"
    },
    init_options = {
        html = {
            options = {
                ["bem.enabled"] = true
            }
        }
    }
})
