return {
    {
        "maxmx03/solarized.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
    },
    {
        "AmberLehmann/candyland.nvim",
        priority = 1000,
    },
    {
        "tssm/fairyfloss.vim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000,
        config = function()
            -- load the color scheme here
            vim.cmd.colorscheme("solarized")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}
