return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    use("kyazdani42/nvim-web-devicons")
    use("kyazdani42/nvim-tree.lua")
    use("hrsh7th/nvim-cmp") -- Autocompletion plugin
    use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
    use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
    use("L3MON4D3/LuaSnip") -- Snippets plugin
    use("onsails/lspkind-nvim")
    use("rcarriga/nvim-notify")
    use("nvim-lualine/lualine.nvim")
    use("romgrk/barbar.nvim")
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/nvim-treesitter-refactor")
    use("christoomey/vim-tmux-navigator")
    use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")
    use("jose-elias-alvarez/null-ls.nvim")
    use("preservim/vim-markdown")
    use("bpstahlman/txtfmt")
    use("tami5/sqlite.lua")
    use("windwp/nvim-autopairs")
    use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
    use("tanvirtin/monokai.nvim")
    use("samirettali/shebang.nvim")
    use("airblade/vim-gitgutter")
    use("rhysd/vim-clang-format")
    use("sainnhe/gruvbox-material")
    use("lvimuser/lsp-inlayhints.nvim")
    use("simrat39/rust-tools.nvim")
    use("iruzo/nvim-matrix")
    use("windwp/nvim-ts-autotag")
    use("chrisbra/csv.vim")
    use("andweeb/presence.nvim")
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup {}
        end,
        requires = "nvim-treesitter/nvim-treesitter",
        tag = "*"
    }
end)
