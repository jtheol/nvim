return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "biome-organize-imports", "biome" },
        javascriptreact = { "biome-organize-imports", "biome" },
        typescript = { "biome-organize-imports", "biome" },
        typescriptreact = { "biome-organize-imports", "biome" },
      },
    },
  },
}
