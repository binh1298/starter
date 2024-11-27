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

map("i", "<C-s>", "<Esc> <C-s> <cmd> w <CR>", { desc = "Save file & Exit Input Mode" })

map(
  "n",
  "<leader>fl",
  "<cmd>lua vim.diagnostic.open_float(nil, { focus = false, scope = 'cursor' })<CR>",
  { desc = "Floating diagnostics" }
)

map("n", "<leader>h", "<cmd> lua vim.lsp.buf.hover()<CR>", { desc = "Hover" })

map("n", "<leader>fdf", "<cmd> Telescope dir find_files<CR>", { desc = "Find files in directory" })
map("n", "<leader>fdw", "<cmd> Telescope dir live_grep<CR>", { desc = "Find words in directory" })
