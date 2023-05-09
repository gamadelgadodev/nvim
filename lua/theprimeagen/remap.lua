
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n","<leader>n", vim.cmd.NERDTreeToggle)

vim.keymap.set("n","<leader>r","<cmd>!dotnet run<CR>")

vim.g.NERDTreeQuitOnOpen=1
