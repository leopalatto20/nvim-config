require('oil').setup {
  default_file_explorer = true, -- start up nvim with oil instead of netrw
  columns = {},
  keymaps = {
    ['<C-h>'] = false,
    ['<C-l>'] = false,
    ['<C-r>'] = 'actions.refresh',
    ['<M-h>'] = 'actions.select_split',
    ['q'] = 'actions.close',
  },
  delete_to_trash = true,
  view_options = {
    show_hidden = true,
  },
  skip_confirm_for_simple_edits = true,
}

vim.keymap.set('n', '<leader>e', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>-', require('oil').toggle_float)

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'oil',
  callback = function() vim.opt_local.cursorline = true end,
})
