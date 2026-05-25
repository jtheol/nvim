return {
  { "oahlen/iceberg.nvim" },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        win = {
          input = { wo = { winblend = 0 } },
          list = { wo = { winblend = 0 } },
          preview = { wo = { winblend = 0 } },
        },
      },
    },
    config = function(_, opts)
      require("snacks").setup(opts)

      vim.o.winblend = 0
      vim.o.pumblend = 0

      local bg = "#0f1117"
      local bg2 = "#161821"
      local border = "#3e445e"
      local fg = "#c6c8d1"
      local muted = "#6b7089"
      local accent = "#e2a478"

      local function apply()
        local normal_groups = {
          "NormalFloat",
          "SnacksPicker",
          "SnacksPickerBox",
          "SnacksPickerInput",
          "SnacksPickerList",
          "SnacksPickerPreview",
          "SnacksPickerListFooter",
        }

        for _, group in ipairs(normal_groups) do
          vim.api.nvim_set_hl(0, group, { bg = bg, fg = fg })
        end

        local border_groups = {
          "FloatBorder",
          "SnacksPickerBorder",
          "SnacksPickerInputBorder",
          "SnacksPickerListBorder",
          "SnacksPickerPreviewBorder",
        }

        for _, group in ipairs(border_groups) do
          vim.api.nvim_set_hl(0, group, { bg = bg, fg = border })
        end

        vim.api.nvim_set_hl(0, "SnacksPickerListCursorLine", { bg = bg2 })
        vim.api.nvim_set_hl(0, "SnacksPickerInputTitle", { bg = bg, fg = accent })
        vim.api.nvim_set_hl(0, "SnacksPickerListTitle", { bg = bg, fg = accent })
        vim.api.nvim_set_hl(0, "SnacksPickerPreviewTitle", { bg = bg, fg = accent })
        vim.api.nvim_set_hl(0, "SnacksPickerListFooter", { bg = bg, fg = muted })
      end

      vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter", "WinEnter" }, {
        callback = apply,
      })

      apply()
    end,
  },
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
