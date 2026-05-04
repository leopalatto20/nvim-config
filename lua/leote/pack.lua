vim.pack.add({
{ src = "https://github.com/nvim-lua/plenary.nvim" },
{ src = "https://github.com/dmtrKovalenko/fff.nvim" },
{ src = "https://github.com/windwp/nvim-autopairs" }, 
{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" }, 
{ src = "https://github.com/nvim-lualine/lualine.nvim" },
{ src = "https://github.com/stevearc/oil.nvim" },
{ src = "https://github.com/mbbill/undotree" },
{ src = "https://github.com/folke/todo-comments.nvim" }, 
    { src = "https://github.com/nvim-telescope/telescope.nvim", branch = "master" },
    { src = "https://github.com/andrew-george/telescope-themes" }, 
{ src = "https://github.com/kevinhwang91/nvim-ufo" }, 
    { src = "https://github.com/kevinhwang91/promise-async" }, 
    { src = 'https://github.com/NMAC427/guess-indent.nvim'},
    { src = 'https://github.com/lewis6991/gitsigns.nvim'},
})

require("leote.plugins.fff")
require("leote.plugins.oil")
require("leote.plugins.treesitter")
require("leote.plugins.autopairs")
require("leote.plugins.todo-comments")
require("leote.plugins.telescope")
require("leote.plugins.ufo")
require("leote.plugins.gitsigns")
require("leote.plugins.guess-indent")

