require('neo-tree').setup {
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
        }
    }
}

vim.keymap.set("n", "<C-t>", ":Neotree<CR>", {})
vim.cmd "Neotree"
