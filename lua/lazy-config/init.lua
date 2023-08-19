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

local plugins = {
    "kyazdani42/nvim-web-devicons",
    "kyazdani42/nvim-tree.lua",
    "hrsh7th/nvim-cmp",         -- Autocompletion plugin
    "hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
    "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
    "L3MON4D3/LuaSnip",         -- Snippets plugin
    "onsails/lspkind-nvim",
    "rcarriga/nvim-notify",
    "nvim-lualine/lualine.nvim",
    "romgrk/barbar.nvim",
    { "nvim-treesitter/nvim-treesitter",          run = ":TSUpdate" },
    "nvim-treesitter/nvim-treesitter-refactor",
    "christoomey/vim-tmux-navigator",
    { "nvim-telescope/telescope.nvim",            dependencies = "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    "preservim/vim-markdown",
    "bpstahlman/txtfmt",
    "tami5/sqlite.lua",
    "windwp/nvim-autopairs",
    --    { "tzachar/cmp-tabnine", build = "./install.sh", dependencies = "hrsh7th/nvim-cmp" },
    "tanvirtin/monokai.nvim",
    "samirettali/shebang.nvim",
    "airblade/vim-gitgutter",
    "rhysd/vim-clang-format",
    "sainnhe/gruvbox-material",
    "lvimuser/lsp-inlayhints.nvim",
    "simrat39/rust-tools.nvim",
    "iruzo/nvim-matrix",
    "windwp/nvim-ts-autotag",
    "chrisbra/csv.vim",
    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    "cdelledonne/vim-cmake",
    "antoinemadec/FixCursorHold.nvim",
    "NvChad/nvim-colorizer.lua",
}

local opts = {}

require("lazy").setup(plugins, opts)
