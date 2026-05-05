local cmp = require 'blink.cmp'

vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function() cmp.build():wait(60000) end,
})

cmp.setup {
  keymap = {
    preset = 'enter',
  },
  appearance = {
    nerd_font_variant = 'mono',
  },
  completion = {
    documentation = { auto_show = false, auto_show_delay_ms = 500 },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets' },
  },
  snippets = { preset = 'luasnip' },
  fuzzy = { implementation = 'prefer_rust_with_warning' },
  signature = { enabled = true },
}
