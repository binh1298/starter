return {
  require "extra.treesitter",
  require "extra.chadtree",
  require "extra.tmux",
  require "extra.mason",
  require "extra.base46",
  require "extra.dadbod",
  require "extra.go",
  require "extra.rust",
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "extra.conform",
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  {
    "supermaven-inc/supermaven-nvim",
    event = "InsertEnter",
    config = function()
      require("supermaven-nvim").setup {}
    end,
  },

  { "mechatroner/rainbow_csv" },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
  {
    "princejoogie/dir-telescope.nvim",
    -- telescope.nvim is a required dependency
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {
      -- these are the default options set
      hidden = true,
      no_ignore = false,
      show_preview = true,
    },
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "3rd/image.nvim",
    config = function()
      require("image").setup()
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "3rd/image.nvim" },
  },
}
