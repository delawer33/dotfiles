-- return {
--   'shaunsingh/nord.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Example config in lua
--     vim.g.nord_contrast = true
--     vim.g.nord_borders = false
--     vim.g.nord_disable_background = true
--     vim.g.nord_italic = false
--     vim.g.nord_uniform_diff_background = true
--     vim.g.nord_bold = false
--
--     -- Load the colorscheme
--     require('nord').set()
--
--     -- Toggle background transparency
--     local bg_transparent = true
--
--     local toggle_transparency = function()
--       bg_transparent = not bg_transparent
--       vim.g.nord_disable_background = bg_transparent
--       vim.cmd [[colorscheme nord]]
--     end
--
--     vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
--   end,
-- }
-- return {
--   'folke/tokyonight.nvim',
--   lazy = false, -- Загружается сразу
--   priority = 1000,
--   opts = {
--     style = 'storm', -- Или "night", "moon", "day"
--     transparent = false,
--     terminal_colors = true,
--   },
-- }

-- return {
--   'rose-pine/neovim',
--   name = 'rose-pine',
--   lazy = false,
--   priority = 1000,
--   opts = {
--     variant = 'auto', -- auto, main, moon, or dawn
--     dark_variant = 'main', -- main, moon, or dawn
--     dim_inactive_windows = false,
--     terminal = true,
--     disable_background = false,
--     styles = {
--       bold = true,
--       transparency = false,
--       italic = true,
--     },
--   },
--   config = function(_, opts)
--     require('rose-pine').setup(opts)
--     vim.cmd 'colorscheme rose-pine'
--   end,
-- }
return {
  'ellisonleao/gruvbox.nvim',
  name = 'gruvbox',
  lazy = false,
  priority = 1000,
  opts = {
    terminal_colors = false,
    undercurl = true,
    underline = true,
    bold = false,
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true,
    contrast = 'soft',
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
  },
  config = function(_, opts)
    require('gruvbox').setup(opts)
    vim.cmd 'colorscheme gruvbox'
  end,
}
