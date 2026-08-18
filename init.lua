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
    local module = "plugins." .. file:gsub("%.lua$", "")
    local ok, err = pcall(require, module)
    if not ok then
      vim.notify("Error loading " .. module .. ": " .. err, vim.log.levels.WARN)
    end
  end
end

