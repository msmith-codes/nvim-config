local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

-- Load Plugins:
require("lazy").setup("plugins")

-- Configure Plugins:
require("config.plugins.colors")
require("config.plugins.lspzero")
require("config.plugins.harpoon")
require("config.plugins.neotree")
