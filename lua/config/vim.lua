-- General settings
vim.o.guicursor = ""
vim.o.number = true             -- Show line numbers
vim.o.relativenumber = true     -- Show relative line numbers
vim.o.tabstop = 2               -- Number of spaces for a tab
vim.o.shiftwidth = 2            -- Indentation width
vim.o.expandtab = true          -- Use spaces instead of tabs
vim.o.smartindent = true        -- Enable smart indentation
vim.o.clipboard = 'unnamedplus' -- Use system clipboard

-- UI Settings
vim.o.termguicolors = true -- Enable true colors
--vim.o.background = 'dark'       -- Set background to dark
vim.o.cursorline = true    -- Highlight the current line
vim.o.signcolumn = 'yes'   -- Always show the sign column
--vim.o.colorcolumn = '80'

-- Search settings
--vim.o.ignorecase = true         -- Ignore case in search
vim.o.hlsearch = false
vim.o.smartcase = true -- Use case-sensitive search if capital letters are used
vim.o.incsearch = true -- Incremental search

vim.o.scrolloff = 8

-- Performance optimizations
vim.o.lazyredraw = true -- Redraw screen only when necessary
vim.o.updatetime = 50   -- Faster completion (default is 4000ms)
