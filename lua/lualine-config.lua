local colors = {
  blue   = '#268bd2',
  cyan   = '#2aa198',
  black  = '#002b36',
  white  = '#9e9e9e',
  red    = '#dc322f',
  violet = '#859900',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup({
  options = {
    theme = bubbles_theme,
    component_separators = '',
    section_separators = { right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { right= ''}, right_padding = 0 },
    },
    lualine_b = {{'filename',separator = { right= ''}}},
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = {'branch'},
    lualine_z = {
      { 'location', separator = { left = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
})
