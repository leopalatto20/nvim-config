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
  { src = 'https://github.com/saghen/blink.lib' },
  { src = 'https://github.com/saghen/blink.cmp' },
  -- completions dependency
  { src = 'https://github.com/stevearc/conform.nvim' },
  { src = 'https://github.com/L3MON4D3/LuaSnip', version = 'v2.4.1' },
  { src = 'https://github.com/rafamadriz/friendly-snippets' },

  -- LSP stack
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/mason-org/mason.nvim' },
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
  { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
  {
    src = 'https://github.com/JavaHello/spring-boot.nvim',
    version = '218c0c26c14d99feca778e4d13f5ec3e8b1b60f0',
  },
  { src = 'https://github.com/MunifTanjim/nui.nvim' },
  { src = 'https://github.com/mfussenegger/nvim-dap' },

  { src = 'https://github.com/nvim-java/nvim-java' },

  { src = 'https://github.com/AvengeMedia/base46' },
  { src = 'https://github.com/HiPhish/rainbow-delimiters.nvim' },
  { src = 'https://github.com/kdheepak/lazygit.nvim' },
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
require 'leote.plugins.lsp.mason' -- mason has to load before lspconfig
require 'leote.plugins.lsp.lspconfig'
require 'leote.plugins.conform'
require 'leote.plugins.java'
require 'leote.plugins.blink'
require 'leote.plugins.lazygit'
