require("pblischak")

local colors = require('ayu.colors')
colors.generate(true) -- Pass `true` to enable mirage

require('ayu').setup({
    mirage = true,
    overrides = {
      IncSearch = {
          fg = colors.fg,
          bg = colors.line,
      }
    },
})

require('lualine').setup({
    options = {
      theme = 'ayu',
    },
})

require('ayu').colorscheme('ayu-mirage')
