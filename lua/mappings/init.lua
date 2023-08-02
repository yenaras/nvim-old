-- Define map to set key mappings
local map = vim.api.nvim_set_keymap

-- define options for key mappings
local opts = { noremap = true, silent = true }

-- set leader key to space bar
vim.g.mapleader = " "

-- toggle nvim tree file explorer with <leader>e
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- barbar keybinds (buffer navigation and manipulation)
-- Move to previous/next buffer using Alt+, and Alt+.
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)

-- Re-order to previous/next buffer with Alt+< and Alt+>
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", " :BufferMoveNext<CR>", opts)
-- Go to specific buffer positions with Alt+number
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)

-- Close current buffer using Alt+c, or close all buffers except current with Ctrl+c
map("n", "<A-c>", ":BufferClose<CR>", opts)
map("n", "<C-c>", ":BufferCloseAllButCurrent<CR>", opts)

-- Enable buffer-picking mode using Ctrl+p (magic buffer-picking)
map("n", "<C-p>", ":BufferPick<CR>", opts)

-- Sort buffers automatically by buffer number, directory, or language
-------------------------------------------------------------------
--sort by number with <leader>bb
--sort by Directory with <leader>bd
--sort by language with <leader>bl>
map("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)

-- Telescope mappings (fuzzy searching)
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)

-- oscyank mappings (advanced yanking)
map("v", "<leader>c", ":OSCYank<CR>", opts)
map("n", "<leader>o", "<Plug>OSCYank", opts)

-- generate docstrings using neogen
map("n", "<leader>nf", ":lua require('neogen').generate()<CR>", opts)

-- cmake stuffs
map ("n", "<leader>cg", ":CMakeGenerate<CR>", opts)
map ("n", "<leader>cb", ":CMakeBuild<CR>", opts)
