-- Set space as the leader key 
vim.g.mapleader = " "

-- Open file explorer within NeoVim
vim.keymap.set("n", "<leader>ff", vim.cmd.Ex)

-- Open diagnostics messages within NeoVim
vim.keymap.set("n", "<leader>tt", function () require("trouble").toggle()  end)


-- Open diagnostics messages within NeoVim
vim.keymap.set("n", "<leader>md", vim.cmd.MarkdownPreview)

-- Allows lines reposition in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Keep cursor in place when joining lines with J  
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle of the screen when finding search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keep original copy parameter when pasting over something using Space + P
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy to system clipboard using Space + y or Space + Y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Substitute current word on whole document using Space + s 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Facilitates moving between splitscreens
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Remaps moving to beginning/end of line
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Remaps Esc to ;; because my keyboard hates ergonomy
vim.keymap.set("i", ";;", "<Esc>")

-- Remaps change character case to S
vim.keymap.set("n", "S", "~")

-- Remaps undo
vim.keymap.set("n", "U", "<C-R>")

-- Quick quit a file without writing changes
vim.keymap.set("n", "q", ":q!<Return>")
