vim.pack.add({
	-- treesitter
	{ src = "git@github.com:nvim-treesitter/nvim-treesitter.git"},
})

-- treesitter
  require("nvim-treesitter.config").setup({
    build=":TSUpdate",
    install_dir = vim.fn.stdpath('data') .. '/site',
    auto_install  = true
 })
 require("nvim-treesitter").install({"javascript", "typescript", "go", "gomod"})
