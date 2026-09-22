return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- LazyVim's Python extra already uses Pyright for type checking and
        -- Ruff for linting. An installed pylsp is otherwise auto-enabled by
        -- mason-lspconfig, duplicating diagnostics and formatting work.
        pylsp = { enabled = false },
      },
    },
  },
}
