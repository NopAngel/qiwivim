vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- themes
  use { "ellisonleao/gruvbox.nvim" }
  use { "shaunsingh/nord.nvim" }

  use "mhartington/formatter.nvim"
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  }

  use {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end
  }



  use {
    "goolord/alpha-nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("qiwy.splash")
    end
  }

  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }


  use {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" }
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- autocomplete :)
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"
  use "saadparwaiz1/cmp_luasnip"

  -- lsp and linters
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "jose-elias-alvarez/null-ls.nvim"

  -- Git
  use "lewis6991/gitsigns.nvim"


  -- Debugging
  use "mfussenegger/nvim-dap"

  -- bar state
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }

  use "folke/todo-comments.nvim"


  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end
  }
end)
