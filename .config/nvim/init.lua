require("config.lazy")
local plugins = require("plugins");

require("lazy").setup(plugins)
require("config.nvim-tree")

vim.cmd('colorscheme vscode')
