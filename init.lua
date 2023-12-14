-- init.lua
-- 2023.12.09


-- Load editor settings
require('settings')

-- Load custom keybindings
require('keybinding')

-- Load plugins
require('plugins')
require("configs.lsp") -- load manualy because idk lua...

-- Set colorscheme
vim.opt.termguicolors = true
vim.cmd("set background=dark")
vim.cmd("colorscheme kanagawa-wave")


