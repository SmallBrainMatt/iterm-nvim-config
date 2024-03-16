vim.g.mapleader= " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- moving selected lines up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search term navigation
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- saves paste buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- saves to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deleting in visual mode
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- dont press Q
vim.keymap.set("n", "Q", "<nop>")



