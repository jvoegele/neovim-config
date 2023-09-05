local tokyonight = {
  "folke/tokyonight.nvim",
  opts = {
    style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day", -- The theme is used when the background is set to light
    -- transparent = false, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
    styles = {
      -- Style to be applied to different syntax groups
      -- Value is any valid attr-list value for `:help nvim_set_hl`
      comments = { italic = true },
      keywords = { italic = false, bold = true },
      functions = { bold = true },
      variables = {},
      types = { italic = true, bold = true },
      -- Background styles. Can be "dark", "transparent" or "normal"
      sidebars = "dark", -- style for sidebars, see below
      floats = "dark", -- style for floating windows
    },
    sidebars = { "qf", "help", "terminal" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false, -- dims inactive windows
    lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
  },
}

local catppuccin = {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  opts = {
    integrations = {
      alpha = true,
      cmp = true,
      flash = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      lsp_trouble = true,
      mason = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      noice = true,
      notify = true,
      neotree = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      which_key = true,
    },
  },
}

local kanagawa = {
  "rebelot/kanagawa.nvim",
  opts = {
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
    theme = "wave", -- Load "wave" theme when 'background' option is not set
    background = { -- map the value of 'background' option to a theme
      dark = "wave", -- try "dragon" !
      light = "lotus",
    },
  },
}

local nightfox = {
  "EdenEast/nightfox.nvim",
  opts = {
    options = {
      transparent = false, -- Disable setting background
      terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
      dim_inactive = true, -- Non focused panes set to alternative background
      module_default = true, -- Default enable value for modules
      styles = { -- Style to be applied to different syntax groups
        comments = "italic", -- Value is any valid attr-list value `:help attr-list`
        conditionals = "NONE",
        constants = "NONE",
        functions = "bold",
        keywords = "bold",
        numbers = "NONE",
        operators = "NONE",
        strings = "NONE",
        types = "italic,bold",
        variables = "NONE",
      },
      inverse = { -- Inverse highlight for different types
        match_paren = false,
        visual = false,
        search = false,
      },
    },
  },
}

local github = {
  "projekt0n/github-nvim-theme",
  lazy = false,
  name = "github",
  opts = {
    options = {
      hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
      hide_nc_statusline = true, -- Override the underline style for non-active statuslines
      transparent = false, -- Disable setting background
      terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
      dim_inactive = false, -- Non focused panes set to alternative background
      module_default = true, -- Default enable value for modules
      styles = { -- Style to be applied to different syntax groups
        comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
        functions = "NONE",
        keywords = "NONE",
        variables = "NONE",
        conditionals = "NONE",
        constants = "NONE",
        numbers = "NONE",
        operators = "NONE",
        strings = "NONE",
        types = "NONE",
      },
      inverse = { -- Inverse highlight for different types
        match_paren = false,
        visual = false,
        search = false,
      },
      darken = { -- Darken floating windows and sidebar-like windows
        floats = false,
        sidebars = {
          enable = true,
          list = {}, -- Apply dark background to specific windows
        },
      },
    },
    palettes = {},
    specs = {},
    groups = {},
  },
}

local rose_pine = { "rose-pine/neovim", name = "rose-pine" }

local gruvbox = { "ellisonleao/gruvbox.nvim" }

local gruvbox_baby = { "luisiacc/gruvbox-baby" }

return {
  tokyonight,
  catppuccin,
  kanagawa,
  nightfox,
  -- github,
  rose_pine,
  gruvbox,
  gruvbox_baby,

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
