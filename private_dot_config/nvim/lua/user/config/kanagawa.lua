local status_ok, kanagawa = pcall(require, "kanagawa")
if not status_ok then return end

kanagawa.setup {
}

vim.api.nvim_command "colorscheme kanagawa"
