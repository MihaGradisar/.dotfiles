return {
    {
        "tpope/vim-fugitive",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup {
                signs = {
                    add          = { text = '+' },
                    change       = { text = '~' },
                    delete       = { text = '-' },
                    topdelete    = { text = '-' },
                    changedelete = { text = '~' },
                    untracked    = { text = '?' },
                },
                signs_staged = {
                    add          = { text = '+' },
                    change       = { text = '~' },
                    delete       = { text = '-' },
                    topdelete    = { text = '-' },
                    changedelete = { text = '~' },
                    untracked    = { text = '?' },
                },
                watch_gitdir = {
                    follow_files = true
                },
            }
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
        end
    },
    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    }
}
