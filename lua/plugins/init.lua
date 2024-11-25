return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
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
    "ms-jpq/chadtree",
    lazy = false,
    keys = {
      { "<C-n>", "<cmd>CHADopen<CR>", desc = "CHADTree toggle window", silent = true },
    }
  },
  {
		"christoomey/vim-tmux-navigator",
    lazy = false,
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<C-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<C-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<C-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
  {
  	"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"apex",
				"bash",
				"html",
				"css",
				"javascript",
				"typescript",
				"json",
				"lua",
				"luadoc",
				"luap",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"tsx",
				"yaml",
				"astro",
				"go",
				"nix",
				"sql",
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
						["ii"] = "@conditional.inner",
						["ai"] = "@conditional.outer",
						["il"] = "@loop.inner",
						["al"] = "@loop.outer",
						["at"] = "@comment.outer",
					},
				},
				move = {
					enable = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						["]f"] = "@function.outer",
						["]]"] = "@class.outer",
					},
					goto_next_end = {
						["]F"] = "@function.outer",
						["]["] = "@class.outer",
					},
					goto_previous_start = {
						["[f"] = "@function.outer",
						["[["] = "@class.outer",
					},
					goto_previous_end = {
						["[F"] = "@function.outer",
						["[]"] = "@class.outer",
					},
				},
				swap = {
					enable = true,
					swap_next = {
						["<leader>a"] = "@parameter.inner",
					},
					swap_previous = {
						["<leader>A"] = "@parameter.inner",
					},
				},
			},
		},
  },
}
