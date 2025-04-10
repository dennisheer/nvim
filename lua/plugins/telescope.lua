return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = "make" },
  },

  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    telescope.setup {
      extensions = {
        file_browser = {
          theme = nil,
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- insert mode mappings
            },
            ["n"] = {
              -- normal mode mappings
            },
          },
        },
      },
    }

    -- Key mappings
    vim.keymap.set("n", "<leader>jk", function()
      telescope.extensions.file_browser.file_browser({
        path = vim.fn.expand("%:p:h"),
        select_buffer = true,
      })
    end, { desc = "Telescope File Browser (lokaler Pfad)" })
    vim.keymap.set('n', '<leader>jf', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>jg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)

    telescope.load_extension('fzf')
    telescope.load_extension('file_browser')
  end
}
