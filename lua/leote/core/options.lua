vim.opt.termguicolors = true
-- line numbers
vim.opt.nu = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

vim.opt.guicursor =
  'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = false
vim.opt.wrap = false

-- backup and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath 'data' .. '/undodir'
vim.opt.undofile = true

-- search
vim.opt.inccommand = 'split'

-- UI
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'

-- folding (for nvim-ufo)
vim.o.foldenable = true
vim.o.foldmethod = 'manual'
vim.o.foldlevel = 99
vim.o.foldcolumn = '0'

-- window splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- misc
vim.opt.updatetime = 50
vim.opt.colorcolumn = '0'
vim.opt.clipboard:append 'unnamedplus'
vim.opt.isfname:append '@-@'
vim.opt.mouse = 'a'
vim.o.cmdheight = 1

-- Hightlight yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function() vim.hl.on_yank() end,
})

vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = vim.diagnostic.severity.ERROR },
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Teest shows up underneath the line, with virtual lines
  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}
