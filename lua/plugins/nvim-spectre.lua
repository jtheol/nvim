return {
  "nvim-pack/nvim-spectre",
  keys = {
    { "<F4>", "<cmd>Spectre<cr>", mode = { "n" } },
  },
  config = function()
    require("spectre").setup({ is_block_ui_break = true })
  end,
}
