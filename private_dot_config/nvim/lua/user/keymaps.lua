local opts = { noremap = true, silent = true, }
local term_opts = { silent = true, }

local keymap = vim.api.nvim_set_keymap


-- vim.g.mapleader = ','
-- Map leader to space 
keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Buffer nav
keymap("n", "<s-l>", ":bnext<cr>", opts)
keymap("n", "<s-h>", ":bprevious<cr>", opts)

-- Map jk to Escape 
local options = { noremap = true }
keymap("i", "jk", "<Esc>", options)

-- Git
keymap("n", "<leader><leader>", ":Telescope git_files<cr>",opts)
-- Ctrl d to delete worktree
keymap("n", "<leader>gww", ":Telescope git_worktree git_worktrees<cr>",opts)
keymap("n", "<leader>gwc", ":Telescope git_worktree create_git_worktree<cr>",opts)

