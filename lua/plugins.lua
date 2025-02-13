return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use {"catppuccin/nvim", as = "catppuccin"}

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end
    })

    use {
        'weirongxu/plantuml-previewer.vim',
        requires = {{'tyru/open-browser.vim'}, {'aklt/plantuml-syntax'}}
    }

    use {'janko/vim-test', requires = {{'benmills/vimux'}}}

    use "sbdchd/neoformat"

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"}, {"nvim-treesitter/nvim-treesitter"}
        }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            {'neovim/nvim-lspconfig'}, {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'}, {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'}, {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'}, {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'}
        }
    }
    use {"ray-x/lsp_signature.nvim"}

    use {
        'junegunn/fzf.vim',
        requires = {'junegunn/fzf', run = './install --bin'}
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use {"Olical/vim-enmasse"}

    use {'nvim-pack/nvim-spectre', requires = {{'nvim-lua/plenary.nvim'}}}

    use "airblade/vim-rooter"

    use {'tpope/vim-fugitive'}

    use {'ruifm/gitlinker.nvim', requires = 'nvim-lua/plenary.nvim'}

    use {'lewis6991/gitsigns.nvim'}

    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }

    use {'bogado/file-line'}

    use {'elixir-editors/vim-elixir'}
    use {'renderedtext/vim-elixir-alternative-files'}

    use {'jparise/vim-graphql'}
end)
