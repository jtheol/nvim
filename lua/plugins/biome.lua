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
      formatters = {
        biome = { require_cwd = true },
        ["biome-organize-imports"] = { require_cwd = true },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = { enabled = false },
        vtsls = {
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
      },
    },
  },
}
