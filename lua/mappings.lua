require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- CHADtree
map("n", "<C-n>", "<cmd>CHADopen<CR>", { desc = "CHADTree toggle window", silent = true })

-- Tmux navigation keymaps
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Navigate to the left pane" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Navigate to the below pane" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Navigate to the above pane" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Navigate to the right pane" })
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", { desc = "Navigate to the previous pane" })
