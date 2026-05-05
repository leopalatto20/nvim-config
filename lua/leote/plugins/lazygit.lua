vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function() vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<cr>', { desc = 'Open Lazygit' }) end,
})
