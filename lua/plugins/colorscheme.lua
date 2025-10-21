return {
  {

    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "wave", -- Load "wave" theme
        background = { -- map the value of 'background' option to a theme
          dark = "dragon", -- try "dragon" !
          light = "lotus",
        },
      })
    end,
  },
  -- {
  --   "rose-pine/neovim",
  --   priority = 1000,
  --   config = function()
  --     require("rose-pine").setup({
  --       variant = "moon", -- auto, main, moon, or dawn
  --       dark_variant = "moon", -- main, moon, or dawn
  --       dim_inactive_windows = false,
  --       extend_background_behind_borders = true,
  --
  --       enable = {
  --         terminal = true,
  --         legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
  --         migrations = true, -- Handle deprecated options automatically
  --       },
  --
  --       styles = {
  --         bold = true,
  --         italic = true,
  --         transparency = true,
  --       },
  --
  --       groups = {
  --         border = "muted",
  --         link = "iris",
  --         panel = "surface",
  --
  --         error = "love",
  --         hint = "iris",
  --         info = "foam",
  --         note = "pine",
  --         todo = "rose",
  --         warn = "gold",
  --
  --         git_add = "foam",
  --         git_change = "rose",
  --         git_delete = "love",
  --         git_dirty = "rose",
  --         git_ignore = "muted",
  --         git_merge = "iris",
  --         git_rename = "pine",
  --         git_stage = "iris",
  --         git_text = "rose",
  --         git_untracked = "subtle",
  --
  --         h1 = "iris",
  --         h2 = "foam",
  --         h3 = "rose",
  --         h4 = "gold",
  --         h5 = "pine",
  --         h6 = "foam",
  --       },
  --
  --       highlight_groups = {
  --         -- Comment = { fg = "foam" },
  --         -- VertSplit = { fg = "muted", bg = "muted" },
  --         CursorLine = { bg = "#2a2837" },
  --         NormalFloat = { bg = "none" },
  --       },
  --     })
  --
  --     -- vim.cmd("colorscheme rose-pine")
  --     -- vim.cmd("colorscheme rose-pine-main")
  --     -- vim.cmd("colorscheme rose-pine-moon")
  --     -- vim.cmd("colorscheme rose-pine-dawn")
  --   end,
  -- },
  -- { "EdenEast/nightfox.nvim" },
  { "datsfilipe/vesper.nvim" },
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.g.zenbones_darken_comments = 45
    --   vim.cmd.colorscheme("zenbones")
    -- end,
  },
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.o.background = "light"
    -- end,
    --
  },
  -- {
  --   "vague-theme/vague.nvim",
  --   config = function()
  --     require("vague").setup({
  --       transparent = true,
  --       style = {
  --         boolean = "none",
  --         number = "none",
  --         float = "none",
  --         error = "none",
  --         comments = "none",
  --         conditionals = "none",
  --         functions = "none",
  --         headings = "bold",
  --         operators = "none",
  --         strings = "none",
  --         variables = "none",
  --
  --         -- keywords
  --         keywords = "none",
  --         keyword_return = "none",
  --         keywords_loop = "none",
  --         keywords_label = "none",
  --         keywords_exception = "none",
  --
  --         -- builtin
  --         builtin_constants = "none",
  --         builtin_functions = "none",
  --         builtin_types = "none",
  --         builtin_variables = "none",
  --       },
  --     })
  --     local set_hl = vim.api.nvim_set_hl
  --     set_hl(0, "NeoTreeGitAdded", { fg = "#a6e3a1" }) -- green
  --     set_hl(0, "NeoTreeGitModified", { fg = "#f9e2af" }) -- yellow
  --     set_hl(0, "NeoTreeGitDeleted", { fg = "#f38ba8" }) -- red
  --     set_hl(0, "NeoTreeGitUntracked", { fg = "#94e2d5" }) -- teal
  --     set_hl(0, "NeoTreeGitIgnored", { fg = "#6c7086" }) -- gray
  --     set_hl(0, "NeoTreeGitRenamed", { fg = "#fab387" }) -- orange
  --     set_hl(0, "NeoTreeGitConflict", { fg = "#eba0ac", bold = true }) -- pink bold
  --     set_hl(0, "NeoTreeGitStaged", { fg = "#89dceb" }) -- light cyan
  --   end,
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
