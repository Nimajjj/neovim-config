-- lua/keybinding.lua

local global = vim.g

-- Change leader key to <Space>
global.leader = " "

-- Map function
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Use Ctrl-[hjkl] to select the active split
map("n", "<C-k>", ":wincmd k<CR>", {silent = true})
map("n", "<C-j>", ":wincmd j<CR>", {silent = true})
map("n", "<C-h>", ":wincmd h<CR>", {silent = true})
map("n", "<C-l>", ":wincmd l<CR>", {silent = true})

-- Use Ctrl-[arrows] to resize active pane 
map("n", "<C-up>", ":horizontal resize -1<CR>", {silent = true})
map("n", "<C-down>", ":horizontal resize +1<CR>", {silent = true})
map("n", "<C-left>", ":vertical resize -1<CR>", {silent = true})
map("n", "<C-right>", ":vertical resize +1<CR>", {silent = true})

-- Disable arrow for navigation in normal mode
map("n", "<up>", "<Nop>", {silent = true})
map("n", "<down>", "<Nop>", {silent = true})
map("n", "<left>", "<Nop>", {silent = true})
map("n", "<right>", "<Nop>", {silent = true})

-- Telescope
map("n", "<leader>lg", ":Telescope live_grep<CR>", {silent = false})

-- Neotree
map("n", "<leader>f", ":NeoTreeFocusToggle<CR>", {silent = false})

-- Hop
map("n", "<Leader><Leader>", ":HopWord<CR>", {silent = true})

-- Toggleterm
map("t", "<ESC>", "<c-\\><c-n>", {silent = true})
