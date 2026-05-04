local mini_files = require("mini.files")
mini_files.setup({
    mappings = {
        go_in = "l", -- Map both Enter and L to enter directories or open files
        go_in_plus = "L",
        go_out = "h",
        go_out_plus = "H",
    },
})
vim.keymap.set("n", "<leader>E", "<cmd>lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" })
vim.keymap.set("n", "<leader>Ef", function()
    mini_files.open(vim.api.nvim_buf_get_name(0), false)
    mini_files.reveal_cwd()
end, { desc = "Toggle into currently opened file" })

require("mini.surround").setup({
    -- Add custom surroundings to be used on top of builtin ones. For more
    -- information with examples, see `:h MiniSurround.config`.
    custom_surroundings = nil,
    -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
    highlight_duration = 300,
    -- Module mappings. Use `''` (empty string) to disable one.
    -- INFO:
    -- saiw surround with no whitespace
    -- saw surround with whitespace
    mappings = {
        add = 'sa', -- Add surrounding in Normal and Visual modes
        delete = 'ds', -- Delete surrounding
        find = 'sf', -- Find surrounding (to the right)
        find_left = 'sF', -- Find surrounding (to the left)
        highlight = 'sh', -- Highlight surrounding
        replace = 'ca', -- Replace surrounding
        update_n_lines = 'sn', -- Update `n_lines`
        suffix_last = 'l', -- Suffix to search with "prev" method
        suffix_next = 'n', -- Suffix to search with "next" method
    },
    -- Number of lines within which surrounding is searched
    n_lines = 20,
    -- Whether to respect selection type:
    -- - Place surroundings on separate lines in linewise mode.
    -- - Place surroundings on each line in blockwise mode.
    respect_selection_type = false,
    -- How to search for surrounding (first inside current line, then inside
    -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
    -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
    -- see `:h MiniSurround.config`.
    search_method = 'cover',
    -- Whether to disable showing non-error feedback
    silent = false,
})

require("mini.trailspace").setup({
    only_in_normal_buffers = true,
})
vim.keymap.set("n", "<leader>cw", function() require("mini.trailspace").trim() end, { desc = "Erase Whitespace" })
-- Ensure highlight never reappears by removing it on CursorMoved
vim.api.nvim_create_autocmd("CursorMoved", {
    pattern = "*",
    callback = function()
        require("mini.trailspace").unhighlight()
    end,
})
