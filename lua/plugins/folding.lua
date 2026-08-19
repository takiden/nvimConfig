--vim.pack.add{
--  {src = "git@github.com:kevinhwang91/nvim-ufo.git"},
--  {src = "git@github.com:kevinhwang91/promise-async.git"}
--}

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.cmd.set("foldmethod=indent")

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', '-', "<cmd>foldclose<CR>", {})
vim.keymap.set('n', '+', "<cmd>foldopen<CR>", {})
