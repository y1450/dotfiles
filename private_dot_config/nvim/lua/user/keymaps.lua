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
keymap("n", "<leader>gb", ":Telescope git_branches<cr>",opts)
keymap("n", "<leader>gs", ":Git<cr>",opts)

-- Ctrl d to delete worktree
keymap("n", "<leader>gww", ":Telescope git_worktree git_worktrees<cr>",opts)
keymap("n", "<leader>gwc", ":Telescope git_worktree create_git_worktree<cr>",opts)

-- Nvim Tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>",opts)
keymap("n", "<leader>b", ":Telescope buffers<cr>",opts)
-- Telecope 
--TODO Buffer fuzzy
--does not work , I have tried setup with fzf 
--keymap("n", "<leader>bf", ":Telescope current_buffer_fuzzy_find<cr>",opts)
keymap("n", "<leader>bt", ":Telescope current_buffer_tags<cr>",opts)
keymap("n", "<leader>ff", ":Telescope find_files<cr>",opts)
keymap("n", "<leader>ft", ":Telescope tags<cr>",opts)
keymap("n", "<leader>rg", ":Telescope live_grep<cr>",opts)
keymap("n", "<leader>rr", ":Telescope grep_string<cr>",opts)
