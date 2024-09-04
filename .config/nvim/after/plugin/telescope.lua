local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

local actions = require("telescope.actions")
require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
                ["<C-u>"] = false
            },
        },
        layout_config = {
            vertical = { width = 0.5 }
            -- other layout configuration here
        },
    }
}
