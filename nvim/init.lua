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

require('ayu').colorscheme('ayu-mirage')
require('lualine').setup({
    options = {
      theme = 'ayu',
    },
})

vim.wo.cursorline = true
vim.api.nvim_set_hl(0, 'ColorColumn', {ctermbg=0, bg='#695380'})
