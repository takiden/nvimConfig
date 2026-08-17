vim.pack.add{
  { src = "git@github.com:williamboman/mason.nvim.git" },
  { src = "git@github.com:neovim/nvim-lspconfig.git" },
	{ src = "git@github.com:mason-org/mason-lspconfig.nvim.git"},
  { src = "git@github.com:WhoIsSethDaniel/mason-tool-installer.nvim.git" },
  {
    src = "git@github.com:nvim-neo-tree/neo-tree.nvim.git",
    version = vim.version.range('3')
  },
  -- dependencies for neo-tree
	{ src = "git@github.com:nvim-lua/plenary.nvim.git"},
	{ src = "git@github.com:MunifTanjim/nui.nvim.git"},
  -- optional, but recommended
	{ src = "git@github.com:nvim-tree/nvim-web-devicons.git"},
	-- lualine
	{src = "git@github.com:nvim-tree/nvim-web-devicons.git"},
  {src = "git@github.com:nvim-lualine/lualine.nvim.git"},
	-- treesitter
	{ src = "git@github.com:nvim-treesitter/nvim-treesitter.git"}
}

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
  ensure_installed = { "lua_ls", "tsc", "gopls" },
})

-- Neotree
require('neo-tree').setup({
	    vim.keymap.set('n', '<leader>e', ":Neotree toggle <CR>", { desc = 'toggle Neotree' }),
	    vim.keymap.set('n', '<leader>ef', ":Neotree focus <CR>", { desc = 'focus Neotree' })
})

-- Lualine
require("lualine").setup()

-- treesitter
  require("nvim-treesitter.config").setup({
 				build=":TSUpdate",
 				 install_dir = vim.fn.stdpath('data') .. '/site'
 })
 require("nvim-treesitter").install({"javascript", "typescript", "go", "gomod"})
