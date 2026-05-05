local conform = require 'conform'

conform.setup {
  formatters_by_ft = {
    javascript = { 'biome-check' },
    typescript = { 'biome-check' },
    javascriptreact = { 'biome-check' },
    typescriptreact = { 'biome-check' },
    css = { 'biome-check' },
    html = { 'prettier' },
    json = { 'biome-check' },
    yaml = { 'prettier' },
    graphql = { 'prettier' },
    liquid = { 'prettier' },
    lua = { 'stylua' },
    markdown = { 'mdformat', 'markdown-toc' },
    java = { 'google-java-format' },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
  formatters = {
    ['google-java-format'] = {
      prepend_args = { '--aosp' },
    },
  },
}
