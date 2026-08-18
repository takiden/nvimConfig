vim.pack.add({
	-- lualine
	{src = "git@github.com:nvim-tree/nvim-web-devicons.git"},
  {src = "git@github.com:nvim-lualine/lualine.nvim.git"},
})

-- Lualine
require("lualine").setup({
  options = {
    theme = 'dracula'
  }
})
