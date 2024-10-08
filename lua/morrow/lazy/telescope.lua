return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require('telescope.builtin')

        telescope.setup({
            defaults = {
                path_display = { "truncate " },
            },
        })


        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>pc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
        -- set keymap for buffer
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffer" })

        keymap.set("n", "<leader>g", builtin.git_files, {}) -- Corrected to use git_files
    end,
}
