vim.pack.add {
  'https://github.com/OXY2DEV/markview.nvim',
  'https://github.com/gunasekar/markview-smart-tables.nvim',
}

require('markview-smart-tables').setup {
  wrap_width = 0.9,
  wrap_minwidth = 5,
}

require('markview').setup {
  preview = {
    icon_provider = 'mini',
    hybrid_modes = { 'n', 'v', 'V', 'i' },
  },
  renderers = {
    markdown_table = function(buffer, item)
      require('markview-smart-tables').render(buffer, item)
    end,
  },
}

vim.keymap.set('n', '<leader>tm', '<Cmd>Markview toggle<CR>', { desc = '[T]oggle [M]arkdown preview', silent = true })
