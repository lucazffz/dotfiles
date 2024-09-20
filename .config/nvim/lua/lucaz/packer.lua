-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "ellisonleao/gruvbox.nvim" }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'nvim-treesitter/nvim-treesitter-context'

    use { "ThePrimeagen/harpoon" }
    use { "mbbill/undotree" }
    use { "tpope/vim-fugitive" }

    use({ 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' })
    use({ 'neovim/nvim-lspconfig' })
    use({ 'hrsh7th/nvim-cmp' })
    use({ 'hrsh7th/cmp-nvim-lsp' })

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    use { 'L3MON4D3/LuaSnip',
        requires = { "rafamadriz/friendly-snippets", opt = true }
    }

    use "rafamadriz/friendly-snippets"

    use 'saadparwaiz1/cmp_luasnip'

    use "windwp/nvim-autopairs"
    use 'nvim-tree/nvim-web-devicons'
    use "stevearc/oil.nvim"

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'vimpostor/vim-lumen'
    use {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup {
                auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
            }
        end
    }
    use "hedyhli/outline.nvim"
    use "folke/trouble.nvim"
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'mfussenegger/nvim-dap'
    use { 'leoluz/nvim-dap-go',
        ft = "go",
        requires = { "mfussenegger/nvim-dap" },
        config = function()
            require('dap-go').setup()
        end
    }

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use "tpope/vim-unimpaired"
end)
