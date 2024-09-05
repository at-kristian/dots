require("ktmp")

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.opt.clipboard = 'unnamedplus'

vim.g.wiki_root = "~/Documents/Wiki"

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
