require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- CHADtree
map("n", "<C-n>", "<cmd>CHADopen<CR>", { desc = "CHADTree toggle window", silent = true })


-- Tmux navigation keymaps
map("n", "<C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", { desc = "Navigate to the left pane" })
map("n", "<C-j>", "<cmd><C-U>TmuxNavigateDown<cr>", { desc = "Navigate to the below pane" })
map("n", "<C-k>", "<cmd><C-U>TmuxNavigateUp<cr>", { desc = "Navigate to the above pane" })
map("n", "<C-l>", "<cmd><C-U>TmuxNavigateRight<cr>", { desc = "Navigate to the right pane" })
map("n", "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", { desc = "Navigate to the previous pane" })

