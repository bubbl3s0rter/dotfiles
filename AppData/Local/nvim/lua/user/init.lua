-- Enable Neovide clipboard provider (fixes AstroNvim error)
if vim.g.neovide then
  vim.g.neovide_clipboard_vim = vim.cmd('set clipboard+=unnamedplus')
end
