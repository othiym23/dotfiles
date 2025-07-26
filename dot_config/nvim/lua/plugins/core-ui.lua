return {
    {
        "mileszs/ack.vim",
        -- need to load eagerly so the key mappings get set up correctly
        lazy = false,
        keys = {
            { "<Leader>a", ":Ack ", mode = "", noremap = true },
            { "<Leader>c", ":ccl<CR>:lcl<CR>", mode = "", noremap = true },
        },
        config = function()
            -- this has to be done here because the keys mapping isn't smart
            -- enough to handle dynamic substitution / execution in Lua.
            vim.cmd([[
            map <Leader>A "zyw:exe ":Ack ".@z<CR>
            ]])
        end,
    },
    {
        "wincent/command-t",
        build = "cd lua/wincent/commandt/lib && make",
        setup = function()
            vim.g.CommandTPreferredImplementation = "lua"
        end,
        config = function()
            require("wincent.commandt").setup({
                -- Customizations go here.
            })
        end,
    },
    {
        -- Gundo is unsupported and doesn't work well with modern Python
        "mbbill/undotree",
        keys = {
            { "<F5>", ":UndotreeToggle<CR>" },
        },
    },
    "Lokaltog/vim-easymotion",
    "bkad/CamelCaseMotion",
    "scrooloose/nerdtree",
    "godlygeek/tabular",
    "arthurxavierx/vim-caser",
}
