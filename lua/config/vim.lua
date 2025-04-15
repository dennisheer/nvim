-- General settings
vim.o.guicursor = ""
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
--vim.o.clipboard = "unnamedplus" -- Use system clipboard

-- UI Settings
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"

-- Search settings
--vim.o.ignorecase = true         -- Ignore case in search
vim.o.hlsearch = false
vim.o.smartcase = true
vim.o.incsearch = true

vim.o.scrolloff = 8

-- Performance optimizations
vim.o.lazyredraw = true
vim.o.updatetime = 50

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
