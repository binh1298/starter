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

-- Telescope LSP mappings
map("n", "<leader>fr", "<cmd>Telescope lsp_references<CR>", { desc = "Find all references" })
map("n", "<leader>fi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Find all implementations" })
map("n", "<leader>fd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Find all definitions" })

map("i", "<C-s>", "<Esc> <C-s> <cmd> w <CR>", { desc = "Save file & Exit Input Mode" })

map(
  "n",
  "<leader>fl",
  "<cmd>lua vim.diagnostic.open_float(nil, { focus = false, scope = 'cursor' })<CR>",
  { desc = "Floating diagnostics" }
)

map("n", "<leader>h", "<cmd> lua vim.lsp.buf.hover()<CR>", { desc = "Hover" })
