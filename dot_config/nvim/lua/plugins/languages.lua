-- 零 created 2025-07-12
--
-- For programming languages that don't tap into the Mason framework
-- or otherwise need their own config file.

return {
    {
        -- using this instead of my own cargo-culted vim support
        "mrcjkb/haskell-tools.nvim",
        version = '^6',  -- Recommended by mode README.
        lazy    = false, -- This plugin is already lazy.
        dependencies = {
            "nvim-telescope/telescope.nvim",
        }
    },
}
