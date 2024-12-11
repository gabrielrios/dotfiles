local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
    }
  },
  { 'echasnovski/mini.nvim', version = false },

  -- Telescope & Extensions
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'nvim-telescope/telescope-project.nvim',
    dependencies = { 'nvim-telescope/telescope-file-browser.nvim' }
  },
  { "princejoogie/dir-telescope.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" } },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  
  -- Themes
  { "sainnhe/sonokai",priority = 1000 },
  { "rebelot/kanagawa.nvim" },
  { "npxbr/gruvbox.nvim" },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  { "savq/melange-nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      "RRethy/nvim-treesitter-endwise", -- Needed to prevent treesitter ident issue with Ruby: https://github.com/tree-sitter/tree-sitter-ruby/issues/230#issuecomment-1312403487
      "yioneko/nvim-yati"
    },
    build = function ()
      require("nvim-treesitter.install").update({ with_sync = true })
    end
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- Git
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim",        -- optional
      "ibhagwan/fzf-lua",              -- optional
    },
    config = true
  },
  { 'tpope/vim-fugitive' },
  { 'airblade/vim-gitgutter' },


  -- Minimal configuration
  { "David-Kunz/gen.nvim" },
  -- {
  --   "nomnivore/ollama.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim"
  --   },
  --   cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },
  -- },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }

  },

  -- Lang specific
  { 'vim-ruby/vim-ruby' },
  { 'tpope/vim-rails' },
  { 'tpope/vim-endwise' },
  { 'slim-template/vim-slim' },

  -- Etc
  { "alexghergh/nvim-tmux-navigation" },
  { 'numToStr/Comment.nvim', opts = {} },
  { 'preservim/tagbar' },
  { 'gko/vim-coloresque' },
  { 'mbbill/undotree'},
  { 'ludovicchabant/vim-gutentags' },

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/nvim-cmp' },
      { 'L3MON4D3/LuaSnip' },
    },
  },

  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>x",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

  -- artificial inteligence
  { 'github/copilot.vim' }
})

