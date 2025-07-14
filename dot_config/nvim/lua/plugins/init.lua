return {
    "dense-analysis/ale",
    "kana/vim-smartinput",
    "vim-scripts/tComment",

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    "nvim-treesitter/nvim-treesitter",
    "neovim/nvim-lspconfig",
    "simrat39/rust-tools.nvim",

    -- Completion framework:
    "hrsh7th/nvim-cmp",

    -- LSP completion source:
    "hrsh7th/cmp-nvim-lsp",

    -- Useful completion sources:
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                ocaml = { "ocamlformat" },
                lua = { "stylua" },
            },
            formatters = {
                ocamlformat = {
                    prepend_args = {
                        "--if-then-else", "vertical",
                        "--break-cases",  "fit-or-vertical",
                        "--type-decl",    "sparse",
                    },
                },
            },
        },
    },
}
