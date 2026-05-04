require("ts_context_commentstring").setup({
  enable_autocmd = false, -- Comment.nvim will handle triggering
})

require("Comment").setup({
  padding = true,
  sticky = true,
  ignore = "^$",
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
