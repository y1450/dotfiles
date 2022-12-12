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

--Keymaps for :w , :wq , :bd
keymap("n", "<leader>w", ":w<cr>",opts)
keymap("n", "<leader>q", ":wq<cr>",opts)
keymap("n", "<leader>Q", ":q<cr>",opts)
keymap("n", "<leader>bd", ":bd<cr>",opts)

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

