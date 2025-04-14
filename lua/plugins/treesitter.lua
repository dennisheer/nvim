return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",

  config = function()
    require 'nvim-treesitter.configs'.setup {
      sync_install = false,
      auto_install = true,

      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "html",
        "scss",
        "javascript",
        "typescript",
        "yaml",
        "terraform",
      },

      indent = {
        enable = true
      },

      highlight = {
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true, it can also be a list of languages.
        additional_vim_regex_highlighting = false,
      },
    }
  end
}
