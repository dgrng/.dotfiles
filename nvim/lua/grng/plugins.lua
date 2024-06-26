-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'savq/melange-nvim',
        config = function()
            vim.cmd.colorscheme 'melange'
        end
    })

    use({
        'nvim-lualine/lualine.nvim',
        config = function()
            require("lualine").setup({
                options = {
                    theme = 'gruvbox'
                }
            })
        end
    })

    use('nvim-treesitter/nvim-treesitter-context')
    use('nvim-treesitter/playground')

    -- lsp
    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })

    use({
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',

        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',

        'ray-x/lsp_signature.nvim',
    })

    use('windwp/nvim-autopairs')

    use({
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    })

    use({
        'mfussenegger/nvim-dap',
        'nvim-neotest/nvim-nio',
        'rcarriga/nvim-dap-ui',
    })
end)
