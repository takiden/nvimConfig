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
  -- { src = "git@github.com:nvim-telescope/telescope-ui-select.nvim.git" }
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
