-- Keymaping ---
local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- File navigation
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)

-- Escape
keymap("i", "fd", "<ESC>", opts)

-- Code indentation
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Code moving
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

