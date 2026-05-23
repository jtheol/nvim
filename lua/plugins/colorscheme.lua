return {
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "hard"
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  { "datsfilipe/vesper.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanso-zen",
    },
  },
}
