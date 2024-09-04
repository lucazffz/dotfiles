require("trouble").setup({
    auto_close = true,       -- auto close when there are no items
    auto_open = false,       -- auto open when there are items
    auto_preview = true,     -- automatically open preview when on an item
    auto_refresh = true,     -- auto refresh when open
    auto_jump = false,       -- auto jump to the item when there's only one
    focus = true,            -- Focus the window when opened
    restore = true,          -- restores the last location in the list when opening
    follow = false,          -- Follow the current item
    indent_guides = true,    -- show indent guides
    max_items = 200,         -- limit number of items that can be displayed per section
    multiline = true,        -- render multi-line messages
    pinned = false,          -- When pinned, the opened trouble window will be bound to the current buffer
    warn_no_results = false, -- show a warning when there are no results
    open_no_results = false, -- open the trouble window when there are no results
})

vim.keymap.set("n", "<leader>vD", "<cmd>Trouble diagnostics toggle <cr>")
vim.keymap.set("n", "<leader>vd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
vim.keymap.set("n", "<leader>vs", "<cmd>Trouble symbols toggle focus=true <cr>")
vim.keymap.set("n", "gr", "<cmd>Trouble lsp_references toggle<cr>")
