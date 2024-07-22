require('FTerm').setup({
    dimensions = {
        height = 0.9,
        width = 0.9,
    }
})

vim.keymap.set('n', '<C-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

vim.cmd "tunmap <Tab>"
