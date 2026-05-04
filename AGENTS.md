# AGENTS.md

This is a **Neovim dotfiles** repository written in Lua. Not a typical software project.

## Verifying Changes

```bash
nvim -u ./init.lua --cmd "source init.lua"
```

Or restart Neovim and verify manually. No test suites exist.

## Repo Structure

- `init.lua` - Entry point
- `lua/leote/core/` - Core config (options, keymaps)
- `lua/leote/plugins/*` - Plugin configurations
- `lua/leote/pack.lua` - Plugin list (uses `vim.pack.add`)

## Key Conventions

- **Leader key**: Space (`<leader>`)
- **Indent**: 4 spaces, expandtab enabled
- **Fold**: nvim-ufo with `foldmethod = manual`

## Notable Plugins

- `oil.nvim` - File explorer (buffer-oriented)
- `telescope.nvim` - Fuzzy finder
- `nvim-ufo` - Folding
- `gitsigns.nvim` - Git integration

## Common Tasks

| Task | Command |
|------|---------|
| Add plugin | Add to `lua/leote/pack.lua`, create config in `lua/leote/plugins/` |
| Add keymap | Edit `lua/leote/core/keymaps.lua` |
| Modify options | Edit `lua/leote/core/options.lua` |
