vim.pack.add({
  {
    src = "git@github.com:nvim-neo-tree/neo-tree.nvim.git",
    version = vim.version.range('3')
  },
  -- dependencies for neo-tree
	{ src = "git@github.com:nvim-lua/plenary.nvim.git"},
	{ src = "git@github.com:MunifTanjim/nui.nvim.git"},
  -- optional, but recommended
	{ src = "git@github.com:nvim-tree/nvim-web-devicons.git"},
})

-- Neotree
require('neo-tree').setup({
	    vim.keymap.set('n', '<leader>e', ":Neotree toggle <CR>", { desc = 'toggle Neotree' }),
	    vim.keymap.set('n', '<leader>ef', ":Neotree focus <CR>", { desc = 'focus Neotree' })
})
