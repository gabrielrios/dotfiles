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
  { "folke/which-key.nvim" },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  { "folke/neodev.nvim" },

  { 'slim-template/vim-slim' },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'nvim-telescope/telescope-project.nvim',
    dependencies = { 'nvim-telescope/telescope-file-browser.nvim' }
  },
  { "princejoogie/dir-telescope.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" } },
  --
  -- Themes
  { "sainnhe/sonokai",priority = 1000 },
  { "rebelot/kanagawa.nvim" },
  { "npxbr/gruvbox.nvim" },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  { "savq/melange-nvim" },
  { "GustavoPrietoP/doom-themes.nvim" },
  --
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
  },
  { 'mbbill/undotree'},
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
  -- nvim v0.8.0
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  { 'airblade/vim-gitgutter' },
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
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }

  },

  { "alexghergh/nvim-tmux-navigation" },

  { 'numToStr/Comment.nvim', opts = {} },
  { 'preservim/tagbar' },
  { 'gko/vim-coloresque' },
  { 'tpope/vim-fugitive' },
  { 'ludovicchabant/vim-gutentags' },

  -- Uncomment these if you want to manage LSP servers from neovim
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},


})

