
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "*.yml", "*.yaml" },
    callback = function()
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
        vim.opt.expandtab = true
    end
})
