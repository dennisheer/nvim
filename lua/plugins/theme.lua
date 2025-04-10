return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  opts = {
    no_italic = true,
    term_colors = true,
    integrations = {
      harpoon = true,
      mason = true,
      telescope = true,
      treesitter = true,
      dropbar = {
        enabled = true,
        color_mode = true,
      }
    }
  },
  config = function()
    vim.cmd("colorscheme catppuccin")
  end
}
