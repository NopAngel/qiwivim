vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- 🧠 Packer se gestiona a sí mismo
  use "wbthomason/packer.nvim"

  -- 🎨 Temas
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



  -- 🖼️ Pantalla de bienvenida
  use {
    "goolord/alpha-nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("qiwy.splash")
    end
  }

  -- 🔍 Navegación y búsqueda
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }

  -- 📁 Explorador de archivos
  use {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" }
  }

  -- 🧪 Árbol de sintaxis
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- 🧠 Autocompletado
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"
  use "saadparwaiz1/cmp_luasnip"

  -- ⚙️ LSP y linters
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "jose-elias-alvarez/null-ls.nvim"

  -- 🧬 Git
  use "lewis6991/gitsigns.nvim"


  -- 🧠 Debugging
  use "mfussenegger/nvim-dap"

  -- 🧞‍♂️ Barra de estado
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }

  -- 💡 Comentarios inteligentes
  use "folke/todo-comments.nvim"


  -- 🧠 Ayuda visual para atajos
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end
  }
end)
