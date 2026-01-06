return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>pf',  function() require('telescope.builtin').find_files() end,     desc = 'Find Files' },
        { '<C-p>',       function() require('telescope.builtin').git_files() end,      desc = 'Git Files' },
        { '<leader>ps',  function() require('telescope.builtin').live_grep() end,      desc = 'Live Grep' },
        { '<leader>vrr', function() require('telescope.builtin').lsp_references() end, desc = 'LSP References' },
        { '<leader>vh',  function() require('telescope.builtin').help_tags() end,      desc = 'Help Tags' },
    },
    config = function()
        require('telescope').setup {
            defaults = {
                file_ignore_patterns = {
                    "node_modules",
                    "venv"
                }
            },
            pickers = {
                git_commits = {
                    theme = "ivy"
                }
            },
        }
    end
}
