vim.pack.add({
  { src = "git@github.com:williamboman/mason.nvim.git" },
  { src = "git@github.com:neovim/nvim-lspconfig.git" },
	{ src = "git@github.com:mason-org/mason-lspconfig.nvim.git"},
  { src = "git@github.com:WhoIsSethDaniel/mason-tool-installer.nvim.git" },
})

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

require("mason-lspconfig").setup({
})
require("mason-tool-installer").setup({
  ensure_installed = { "lua_ls", "tsc","ts_ls", "gopls" },
})

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
