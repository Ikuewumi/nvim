local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)



-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    { "folke/neoconf.nvim",              cmd = "Neoconf" },
    "folke/neodev.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    {
        "NvChad/nvterm",
        config = function()
            require("nvterm").setup()
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    -- Code Completion Tools
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/vim-vsnip",

    -- Theming and UI
    "Mofiqul/dracula.nvim",

    -- Treesiter for Highlighting
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- Search for files
    { "nvim-telescope/telescope.nvim",   tag = "0.1.1",      dependencies = "nvim-lua/plenary.nvim" },


    -- Bufferline
    { "akinsho/bufferline.nvim",         version = "*",      dependencies = "nvim-tree/nvim-web-devicons" },


    -- StatusBar
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },


    -- Autopairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function

    },


    -- Indent Backlines
    { "lukas-reineke/indent-blankline.nvim" },

    -- One Dark
    { "lukas-reineke/onedark.nvim" },
    { "phha/zenburn.nvim" },

    -- Trouble Tab
    { "folke/trouble.nvim",                 dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },

    -- Linting
    "mfussenegger/nvim-lint",

    -- Special Commments Highlighting
    { "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }, opts = {}, }

})
