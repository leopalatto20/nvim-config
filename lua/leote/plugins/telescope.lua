local telescope = require 'telescope'
local actions = require 'telescope.actions'
local builtin = require 'telescope.builtin'

telescope.load_extension 'themes'

telescope.setup {
  defaults = {
    path_display = { 'smart' },
    mappings = {
      i = {
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
      },
    },
  },
  extensions = {
    themes = {
      enable_previewer = true,
      enable_live_preview = true,
      persist = {
        enabled = true,
        path = vim.fn.stdpath 'config' .. '/lua/colorscheme.lua',
      },
    },
  },
}
vim.keymap.set('n', '<leader>uC', '<cmd>Telescope themes<CR>', { noremap = true, silent = true, desc = 'Theme Switcher' })
