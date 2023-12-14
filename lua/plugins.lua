-- lua/plugins.lua
--
-- 
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        "akinsho/nvim-toggleterm.lua",
        config = function()
            require("configs.toggleterm")
        end,
    }

    use { "chrisgrieser/nvim-spider" }

    -- to config
    use ({
        "folke/noice.nvim", -- experimentale
        config = function()
            require("configs.noice")
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify"
        }
    })

    -- LSP 
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-path',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',
    }

    -- Colorschemes
    use 'codingpotions/codely-vim-theme'
    use "rebelot/kanagawa.nvim"
    use "ellisonleao/gruvbox.nvim"

    -- Icons
    use "nvim-tree/nvim-web-devicons"

    -- Hop
    use ({
        "phaazon/hop.nvim",
        config = function()
            require('hop').setup()
        end,
    }) 

    -- Statusline
    use({
        "nvim-lualine/lualine.nvim",
        event = "BufEnter",
        config = function()
            require("configs.lualine")
        end,
        requires = { "nvim-web-devicons" },
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
        config = function()
            require("configs.treesitter")
        end,
    })

    use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })  -- HTML auto tag

    -- File manager
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    })

    -- Show colors
    use({
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" })
        end,
    })

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-file-browser.nvim",
            "nvim-telescope/telescope-project.nvim",
        },

        config = function()
            require("telescope").setup()

            require("telescope").load_extension("file_browser")
            require("telescope").load_extension("project")
        end,

    })

    use({
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    })

    use 'folke/lsp-colors.nvim'


    use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup{} end
  }

  use {
    "folke/which-key.nvim",
     config = function()
       vim.o.timeout = true
       vim.o.timeoutlen = 300
       require("which-key").setup {
       -- your configuration comes here
       -- or leave it empty to use the default settings
       -- refer to the configuration section below
       }
     end
  }

    -- Comments handler
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Buffers tabs
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons',
    }

    -- Startup menu
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
          require("configs.alpha")
        end
    }

    -- Git wrapper
    use 'tpope/vim-fugitive'

    -- Markdown preview
    use {'iamcco/markdown-preview.nvim'}

    -- Repeat w/ . extension for plugins
    use 'tpope/vim-repeat'

end)
