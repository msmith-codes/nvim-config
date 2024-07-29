vim.g.mapleader = " "

vim.keymap.set("n", "<leader>q", ":Ex<CR>", { noremap = true, silent = true })

local go_err = "if err != nil {\n\t\n}"

function insertAtCursor()
    local bufnr = vim.api.nvim_get_current_buf()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))

    local lines = vim.split(go_err, '\n', true)

    vim.api.nvim_buf_set_text(bufnr, row - 1, col, row - 1, col, lines)
    
    local new_row = row + #lines - 1
    vim.api.nvim_win_set_cursor(0, {new_row, col})
end

vim.api.nvim_set_keymap('n', "<leader>e", "<cmd>lua insertAtCursor()<CR>", {noremap = true, silent = true})


