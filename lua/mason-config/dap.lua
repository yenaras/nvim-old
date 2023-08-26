#!/usr/bin/env lua
require("mason").setup()
require("mason-nvim-dap").setup({
    ensure_installed = { "python", },
    handlers = {
        function(config)
            require('mason-nvim-dap').default_setup(config)
        end,
    },
})
