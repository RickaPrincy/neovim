return {
    { "Mofiqul/vscode.nvim" },
    { "nvim-tree/nvim-tree.lua" },
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {}
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    }
}
