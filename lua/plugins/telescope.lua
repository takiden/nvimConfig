-- return {
-- 	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install' },
-- 	{'nvim-telescope/telescope.nvim', version = '*',
--     dependencies = {
--         'nvim-lua/plenary.nvim',
--         -- optional but recommended
--         { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
--     },
--     config = function()
-- 	    local builtin = require('telescope.builtin')
-- 	    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- 	    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- 	    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
--     end
--     },
-- }
vim.pack.add({
  { src = "git@github.com:nvim-lua/plenary.nvim.git" },
  { src = "git@github.com:nvim-telescope/telescope.nvim.git" },
  { src = "git@github.com:nvim-telescope/telescope-fzf-native.nvim.git"},

  -- telescope ui select
  { src = "git@github.com:nvim-telescope/telescope-ui-select.nvim.git" }
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })

-- telescope ui select
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")
