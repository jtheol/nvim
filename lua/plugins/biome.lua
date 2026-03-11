return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 3000,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        javascript = { "biome-organize-imports", "biome" },
        javascriptreact = { "biome-organize-imports", "biome" },
        typescript = { "biome-organize-imports", "biome" },
        typescriptreact = { "biome-organize-imports", "biome" },
        json = { "biome" },
        jsonc = { "biome" },
        css = { "biome" },
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
        eslint = {
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
        vtsls = {
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
      },
    },
  },
}
