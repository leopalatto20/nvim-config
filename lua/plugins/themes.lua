return {
  { "ellisonleao/gruvbox.nvim" },
  { "kdheepak/monochrome.nvim" },
  {
    "idr4n/github-monochrome.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "sainnhe/edge" },
  { "rebelot/kanagawa.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "rose-pine/neovim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
  {
    "wnkz/monoglow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
  },
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
  },
}
