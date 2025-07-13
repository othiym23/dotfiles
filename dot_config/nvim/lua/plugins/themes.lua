return {
    { 
        "maxmx03/solarized.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the color scheme here
            vim.cmd.colorscheme "solarized"
        end,
    },
    {
        "AmberLehmann/candyland.nvim", 
        priority = 1000,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}
