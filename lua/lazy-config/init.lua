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

vim.g.mapleader = ' '
vim.opt.termguicolors = true

local plugins = {
    { "kyazdani42/nvim-web-devicons", config = true },
    { "kyazdani42/nvim-tree.lua",     config = true },
    { "hrsh7th/nvim-cmp",             config = true }, -- Autocompletion plugin
    { "hrsh7th/cmp-nvim-lsp",         config = true }, -- LSP source for nvim-cmp
    { "saadparwaiz1/cmp_luasnip", },                   -- Snippets source for nvim-cmp
    { "L3MON4D3/LuaSnip",             config = true }, -- Snippets plugin
    { "onsails/lspkind-nvim", },
    {
        "rcarriga/nvim-notify",
        config = function() require("notify-config") end,
    },
    { "nvim-lualine/lualine.nvim", config = true },
    { "romgrk/barbar.nvim",        config = true },
    {
        "nvim-treesitter/nvim-treesitter",
        config = true,
        run = ":TSUpdate"
    },
    { "nvim-treesitter/nvim-treesitter-refactor", },
    { "christoomey/vim-tmux-navigator", },
    {
        "nvim-telescope/telescope.nvim",
        config = true,
        dependencies =
        "nvim-lua/plenary.nvim"
    },
    { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
    { "williamboman/mason.nvim",                  config = true },
    { "williamboman/mason-lspconfig.nvim",        config = true },
    { "mfussenegger/nvim-dap", },
    { "mfussenegger/nvim-dap-python", },
    { "jay-babu/mason-nvim-dap.nvim",             config = true },
    { "neovim/nvim-lspconfig", },
    { "jose-elias-alvarez/null-ls.nvim",          config = true },
    { "preservim/vim-markdown", },
    { "bpstahlman/txtfmt", },
    { "tami5/sqlite.lua", },
    {
        "windwp/nvim-autopairs",
        config = function() require("autopairs-config") end
    },
    {
        "tzachar/cmp-tabnine",
        build = "./install.sh",
        dependencies =
        "hrsh7th/nvim-cmp",
        config = true
    },
    { "tanvirtin/monokai.nvim",        config = true },
    { "samirettali/shebang.nvim", },
    { "airblade/vim-gitgutter" },
    { "rhysd/vim-clang-format" },
    { "sainnhe/gruvbox-material",      config = true },
    { "lvimuser/lsp-inlayhints.nvim",  config = true },
    { "simrat39/rust-tools.nvim",      config = true },
    { "simrat39/symbols-outline.nvim", config = true },
    { "windwp/nvim-ts-autotag",        config = true },
    { "chrisbra/csv.vim" },
    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    { "cdelledonne/vim-cmake", },
    { "antoinemadec/FixCursorHold.nvim", },
    { "NvChad/nvim-colorizer.lua",       config = true },
    { "Bekaboo/dropbar.nvim",            config = true },
    {
        "folke/todo-comments.nvim",
        config = true,
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
}

local opts = {}

require("lazy").setup(plugins, opts)
