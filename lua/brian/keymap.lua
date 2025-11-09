vim.g.mapleader = " "

-- File explorer and terminal
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>t", vim.cmd.terminal)

-- Move selected lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centered while navigating
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- This remap makes me happy
vim.keymap.set("n", "Q", "<nop>")

-- Navigate quickfix/location lists
--vim.keymap.set("n", "<leader>fn", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<leader>fp", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")

-- Easy search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- The greatest remap that I'll never remember
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

