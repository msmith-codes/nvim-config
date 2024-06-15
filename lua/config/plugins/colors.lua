-- Configure Colors:
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Set Color Scheme command:
vim.api.nvim_create_user_command("ColorsSetDark", function()
    pcall(function() vim.o.background = "dark" end)
end, {})

vim.api.nvim_create_user_command("ColorsSetLight", function()
    pcall(function() vim.o.background = "light" end)
end, {})

-- Toggle Color command:
vim.api.nvim_create_user_command("ColorsToggle", function() 
    pcall(function() 
        if vim.o.background == "dark" then
            vim.o.background = "light"
        elseif vim.o.background == "light" then
            vim.o.background = "dark"
        end
    end)
end, {})

vim.keymap.set("n", "<leader>ct", ":ColorsToggle<CR>", { noremap = true, silent = true})
