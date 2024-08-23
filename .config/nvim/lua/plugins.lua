return {
  -- colorscheme
  { "Mofiqul/vscode.nvim" },
	
	-- colorizer
	{ "norcalli/nvim-colorizer.lua" },
	
	-- mason
	{ "williamboman/mason.nvim" },

  -- file explorer
  { 'nvim-tree/nvim-tree.lua' },

  -- terminal
  { 'akinsho/toggleterm.nvim', version = "*", config = true },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { 'nvim-lua/plenary.nvim' }
  },

  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- bufferline
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },

  -- which-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {}
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = { "nvim-lua/plenary.nvim", },
    keys = {}
  },
	-- nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "typescript", "cpp", "cmake" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
	{ "neovim/nvim-lspconfig" }
}
