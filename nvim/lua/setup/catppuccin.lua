
vim.g.catppuccin_flavour = "mocha"                  -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  dim_inactive = {
    enabled = true,
    shade = "dark",
    percentage = 0.15,
  },
  transparent_background = false,
  term_colors = false,
  compile = {
    enabled = true,
    path = vim.fn.stdpath("cache") .. "/catppuccin",
  },
  styles = {
    comments = { "italic" },
    conditionals = {},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
   treesitter = true,
--    native_lsp = {
--      enabled = true,
--      virtual_text = {
--        errors = { "italic" },
--        hints = { "italic" },
--        warnings = { "italic" },
--        information = { "italic" },
--      },
--      underlines = {
--        errors = { "underline" },
--        hints = { "underline" },
--        warnings = { "underline" },
--        information = { "underline" },
--      },
--    },
--    coc_nvim = false,
--    lsp_trouble = false,
--    cmp = true,
--    lsp_saga = false,
--    gitgutter = false,
--    gitsigns = true,
--    leap = false,
      telescope = true,
--    nvimtree = {
--      enabled = false,
--      show_root = true,
--      transparent_panel = false,
--    },
--    neotree = {
--      enabled = true,
--      show_root = true,
--      transparent_panel = false,
--    },
--    dap = {
--      enabled = false,
--      enable_ui = false,
--    },
--    which_key = false,
--    indent_blankline = {
--      enabled = true,
--      colored_indent_levels = false,
--    },
--    dashboard = false,
--    neogit = false,
--    vim_sneak = false,
--    fern = false,
    barbar = true,
--    bufferline = false,
    markdown = true,
--    lightspeed = false,
--    ts_rainbow = false,
    hop = true,
--    notify = true,
--    telekasten = false,
--    symbols_outline = true,
--    mini = false,
--    aerial = false,
    vimwiki = true,
--    beacon = false,
  },
  color_overrides = {},
  highlight_overrides = {},
  custom_highlights = {
    CursorLine = { bg = "#353A54" },
    CursorColumn = { bg = "#353A54" },
  },
})
--

-- Activate the color scheme

vim.cmd([[colorscheme catppuccin]])

