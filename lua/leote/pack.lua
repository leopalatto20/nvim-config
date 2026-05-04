vim.pack.add {
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/dmtrKovalenko/fff.nvim' },
  { src = 'https://github.com/windwp/nvim-autopairs' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = 'https://github.com/mbbill/undotree' },
  { src = 'https://github.com/folke/todo-comments.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim', branch = 'master' },
  { src = 'https://github.com/andrew-george/telescope-themes' },
  { src = 'https://github.com/kevinhwang91/nvim-ufo' },
  { src = 'https://github.com/kevinhwang91/promise-async' },
  { src = 'https://github.com/NMAC427/guess-indent.nvim' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
  { src = 'https://github.com/echasnovski/mini.nvim' },
  { src = 'https://github.com/JoosepAlviste/nvim-ts-context-commentstring' },
  { src = 'https://github.com/numToStr/Comment.nvim' },

  -- completions cmp
  { src = 'https://github.com/hrsh7th/nvim-cmp' }, --enabled
  -- completions dependency
  { src = 'https://github.com/hrsh7th/cmp-nvim-lsp' },
  { src = 'https://github.com/stevearc/conform.nvim' },
  { src = 'https://github.com/hrsh7th/cmp-buffer' },
  { src = 'https://github.com/hrsh7th/cmp-path' },
  { src = 'https://github.com/hrsh7th/cmp-cmdline' },
  { src = 'https://github.com/f3fora/cmp-spell' },
  { src = 'https://github.com/L3MON4D3/LuaSnip', version = 'v2.4.1' },
  { src = 'https://github.com/saadparwaiz1/cmp_luasnip' },
  { src = 'https://github.com/rafamadriz/friendly-snippets' },
  { src = 'https://github.com/onsails/lspkind.nvim' },

  -- LSP stack
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/mason-org/mason.nvim' },
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
  { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
}

require 'leote.plugins.fff'
require 'leote.plugins.oil'
require 'leote.plugins.treesitter'
require 'leote.plugins.autopairs'
require 'leote.plugins.todo-comments'
require 'leote.plugins.telescope'
require 'leote.plugins.ufo'
require 'leote.plugins.gitsigns'
require 'leote.plugins.guess-indent'
require 'leote.plugins.mini'
require 'leote.plugins.nvim-cmp'
require 'leote.plugins.lsp.mason' -- mason has to load before lspconfig
require 'leote.plugins.lsp.lspconfig'
require 'leote.plugins.conform'
