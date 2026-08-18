require("core.options")
require("core.globalkeymaps")
require("core.autocommands")
require("core.formatting")
require("core.colorscheme")
-- require("plugins.plugins")
-- In init.lua
local plugins_path = vim.fn.stdpath("config") .. "/lua/plugins"
for _, file in ipairs(vim.fn.readdir(plugins_path)) do
  if file:match("%.lua$") and file ~= "init.lua" then
    require("plugins." .. file:gsub("%.lua$", ""))
  end
end

