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
    {"nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = { "nvim-lua/plenary.nvim" } },
    {"rose-pine/neovim", name = "rose-pine"},
    -- TREESITTER
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"nvim-treesitter/playground"},
    -- MUST HAVE
    --{"ThePrimeagen/harpoon", branch = "harpoon", dependencies = { "nvim-lua/plenary.nvim" } },
    {"mbbill/undotree"},
    {"tpope/vim-fugitive"},
    -- LSP-AERO
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'numToStr/FTerm.nvim'},
    {"nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }
}


require("lazy").setup(plugins)
