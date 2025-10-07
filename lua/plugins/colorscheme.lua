return {
  { "rose-pine/neovim" },
  { "EdenEast/nightfox.nvim" },
  { "datsfilipe/vesper.nvim" },
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
  },
  {
    "miikanissi/modus-themes.nvim",
    lazy = false,
    priority = 1000,
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "zenwritten",
    },
  },
}
