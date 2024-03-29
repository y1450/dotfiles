-- vim:set ts=2 sts=2 sw=2 et:
local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  completeopt = { "menuone", "noselect", },
  -- conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  swapfile = false,
  termguicolors = true,
  splitbelow = true,
  splitright = true,
  -- timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  tabstop = 2,
  shiftwidth = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

vim.opt.shortmess:append "c"
-- vim.opt.iskeyword:remove "_"
vim.opt.whichwrap:prepend "<,>,[,],h,l"

for k, v in pairs(options) do
  vim.opt[k] = v
end

local disabled_builtins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit",
  "netrwSettings",
}

for _, plugin in pairs(disabled_builtins) do
  vim.g["loaded_" .. plugin] = 1
end
vim.api.nvim_create_autocmd('TextYankPost', {group = group, callback = function() vim.highlight.on_yank() end})
