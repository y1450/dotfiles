require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.config.impatient"
require "user.config.autopairs"
require "user.config.treesitter"
require "user.config.telescope"
require "user.config.gitsigns"
require "user.config.nvimtree"
require "user.config.neoscroll"
require "user.config.cmp"
require "user.config.lsp"
require "user.config.kanagawa" 
-- bug nvim tree does not load 
require'nvim-tree'.setup {}
require'git-worktree'.setup {}
