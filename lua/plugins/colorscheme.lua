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
    config = function()
      require("black-metal").setup({
        -- optional configuration here
      })
      require("black-metal").load()
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "immortal",
    },
  },
}
