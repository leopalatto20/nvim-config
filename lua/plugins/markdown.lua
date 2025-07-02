return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      enabled = true,

      heading = {
        enabled = true,
        render_modes = false,
        atx = true,
        setext = true,
        sign = true,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        position = "overlay",
        signs = { "󰫎 " },
        width = "full",
        left_margin = 0,
        left_pad = 0,
        right_pad = 0,
        min_width = 0,
        border = false,
        border_virtual = false,
        border_prefix = false,
        above = "▄",
        below = "▀",
        backgrounds = {
          "RenderMarkdownH1Bg",
          "RenderMarkdownH2Bg",
          "RenderMarkdownH3Bg",
          "RenderMarkdownH4Bg",
          "RenderMarkdownH5Bg",
          "RenderMarkdownH6Bg",
        },
        foregrounds = {
          "RenderMarkdownH1",
          "RenderMarkdownH2",
          "RenderMarkdownH3",
          "RenderMarkdownH4",
          "RenderMarkdownH5",
          "RenderMarkdownH6",
        },
        custom = {},
      },

      bullet = {
        enabled = true,
        render_modes = false,
        sign = false,
        icons = { "•", "◦", "▪" },
        icons_empty = { "○", "◦", "◻" },
        icons_checked = { "✅", "☑️", "✔️" },
        icons_indeterminate = { "➖", "➖", "➖" },
        icons_cancelled = { "❌", "✖️", "✖️" },
        indent = 2,
        left_margin = 2,
        padding = 1,
        highlight = "RenderMarkdownBullet",
      },

      checkbox = {
        enabled = true,
        render_modes = false,
        symbols = {
          unchecked = "☐",
          checked = "☑",
          indeterminate = "➖",
          cancelled = "✘",
        },
        indent = 2,
        left_margin = 2,
        padding = 1,
        highlight = "RenderMarkdownCheckbox",
      },
    },
  },
}
