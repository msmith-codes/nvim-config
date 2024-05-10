local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })    
end
vim.opt.rtp:prepend(lazypath)
local plugins = {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "rose-pine/neovim", name = "rose-pine"
    },
    {
        "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
    },
    {
        "nvim-treesitter/playground"
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "mbbill/undotree"
    },
    {
        "tpope/vim-fugitive"
    }
}

require("lazy").setup(plugins)
