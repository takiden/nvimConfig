require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  integrations = {
    neotree = true,
  },
})
vim.cmd.colorscheme("catppuccin")
