return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "helix",
        icons = {
            mappings = false,
            rules = false,
            keys = {
                Up = "UP",
                Down = "DW",
                Left = "LF",
                Right = "RG",
                C = "C-",
                M = "M-",
                D = "D-",
                S = "S-",
                CR = "CTR",
                Esc = "ESC",
                ScrollWheelDown = "SWD",
                ScrollWheelUp = "SWU",
                NL = "NL",
                BS = "BSC",
                Space = "SPC ",
                Tab = "TAB",
            },
        },
        defaults = {
            {"<C>e", group = "hrp - win" },
            {"<leader>a", group = "hrp - add" },
            {"<leader><C-H>", group = "hrp - rep 1"},
            {"<leader><C-T>", group = "hrp - rep 2"},
            {"<leader><C-N>", group = "hrp - rep 3"},
            {"<leader><C-S>", group = "hrp - rep 4"},
            {"<leader>e", group = "explorer" },
            {"<leader>ex", group = "explorer" },
            {"<leader>f", group = "fuzzy" },
            {"<leader>ff", group = "files" },
            {"<leader>fb", group = "buffer" },
            {"<leader>fg", group = "grep" },
            {"<leader>fh", group = "help" },
            {"<leader>u", group = "undotree" },
            {"<leader>y", group = "yank sys" },
            {"<leader>Y", group = "yank sys" },
            {"<leader>w", group = "wiki" },
            {"<leader>ww", group = "wiki - current" },
            {"<leader>wt", group = "wiki - tab" },
        },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "keys buff",
        },
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
        wk.add(opts.defaults)
    end,
}
