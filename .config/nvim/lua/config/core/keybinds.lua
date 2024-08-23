local utils = require("config.core.utils")

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- terminal
vim.api.nvim_set_keymap('n', '<A-k1>', '<cmd>ToggleTerm<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k2>', '<cmd>ToggleTerm2 direction=float<cr>', { noremap = true, silent = true })

-- window
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true }) -- to get back in normal mode (for toggleterm)
vim.api.nvim_set_keymap('n', '<C-Up>', [[:lua require('config.core.utils').window.resize("up")<cr>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', [[:lua require('config.core.utils').window.resize("down")<cr>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', [[:lua require('config.core.utils').window.resize("left")<cr>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', [[:lua require('config.core.utils').window.resize("right")<cr>]],
  { noremap = true, silent = true })

-- whick-key normal mode
local wk = require("which-key")
wk.add({
  -- editor
  { "<leader>c",   group = "Editor" },
  { "<leader>cj",  function() utils.editor.set_tab_width(2) end,          desc = "Set tab width to 2",       mode = "n" },
  { "<leader>ck",  function() utils.editor.set_tab_width(4) end,          desc = "Set tab width to 4",       mode = "n" },

  -- exlorer
  { "<leader>e",   "<cmd>NvimTreeToggle<cr>",                             desc = "Toggle Explorer",          mode = "n" },

  -- git
  { "<leader>g",   group = "Git" },
  { "<leader>gg",  "<cmd>LazyGit<cr>",                                    desc = "Lazygit",                  mode = "n" },

  -- telescope
  { "<leader>f",   group = "Telescope" }, -- group
  { "<leader>ff",  "<cmd>Telescope find_files<cr>",                       desc = "Find File",                mode = "n" },
  { "<leader>ft",  "<cmd>Telescope live_grep<cr>",                        desc = "Live grep",                mode = "n" },

  -- bufferline 
  { "<leader>b",   group = "Buffer" }, -- group
  { "<leader>bl",  "<cmd>BufferLineCloseLeft<cr>",                       desc = "Close left",                mode = "n" },
  { "<leader>bh",  "<cmd>BufferLineCloseRight<cr>",                       desc = "Close right",                mode = "n" },
  { "<leader>bo",  "<cmd>BufferLineCloseOthers<cr>",                       desc = "Close others",                mode = "n" },
  { "<leader>bn",  "<cmd>BufferLineCycleNext<cr>",                       desc = "Next buffer",                mode = "n" },
  { "<leader>bb",  "<cmd>BufferLineCyclePrev<cr>",                       desc = "Previous buffer",                mode = "n" },
  { "<leader>bc",  "<cmd>:bdelete<cr>",                       desc = "Close current",                mode = "n" },

  -- terminal
  { "<leader>t",   group = "Terminal" },     -- group
  { "<leader>tn",  group = "New Terminal" }, -- group
  { "<leader>tf",  "<cmd>ToggleTerm direction=float<cr>",                 desc = "Toggle Floating terminal", mode = "n" },
  { "<leader>tv",  "<cmd>ToggleTerm size=30 direction=vertical<cr>",      desc = "Toggle Split vertical",    mode = "n" },
  { "<leader>th",  "<cmd>ToggleTerm size=10 direction=horizontal<cr>",    desc = "Toggle Split horizontal",  mode = "n" },
  { "<leader>tnf", function() utils.toggleterm.open_new_float() end,      desc = "New Split float",          mode = "n" },
  { "<leader>tnv", function() utils.toggleterm.open_new_vertical() end,   desc = "New Split vertical",       mode = "n" },
  { "<leader>tnh", function() utils.toggleterm.open_new_horizontal() end, desc = "New Split horizontal",     mode = "n" },
})
