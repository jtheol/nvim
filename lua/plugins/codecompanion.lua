return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      strategies = {
        chat = {
          adapter = "ollama",
          model = "gpt-oss:20b",
        },
        inline = {
          adapter = "ollama",
          model = "qwen3-coder:30b",
        },
        agent = {
          adapter = "ollama",
          model = "qwen3-coder:30b",
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
