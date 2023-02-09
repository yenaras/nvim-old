#!/usr/bin/env lua
require('neogen').setup {
    snippet_engine = "lualine",
    languages = {
        python = {
            template = {
                annotation_convention = "reST" -- for a full list of annotation_conventions, see supported-languages below,
            }
        },
    }
}
