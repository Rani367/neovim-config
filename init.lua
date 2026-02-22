vim.o.relativenumber = true
vim.o.number = true
vim.o.cmdheight = 0
vim.cmd(":hi statusline guibg=NONE")

vim.g.mapleader = " "

vim.pack.add({
	{src = "https://github.com/ibhagwan/fzf-lua.git"},
})

require("fzf-lua").setup({ "fzf-native" })

vim.keymap.set("n", "<leader>f", function() require("fzf-lua").files() end)
