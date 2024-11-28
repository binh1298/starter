return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
  },
  opts = function(_, opts)
    -- taiwind
    -- original LazyVim kind icon formatter
    local format_kinds = opts.formatting.format
    opts.formatting.format = function(entry, item)
      format_kinds(entry, item) -- add icons
      return require("tailwindcss-colorizer-cmp").formatter(entry, item)
    end
    -- conflict with copilot
    opts.mapping["<Tab>"] = nil
    opts.mapping["S-<Tab>"] = nil
    --
    -- -- rust
    -- local M = {
    --   sources = {
    --     { name = "nvim_lsp", group_index = 2 },
    --     -- { name = "copilot", group_index = 2 },
    --     { name = "luasnip", group_index = 2 },
    --     { name = "buffer", group_index = 2 },
    --     { name = "nvim_lua", group_index = 2 },
    --     { name = "path", group_index = 2 },
    --     { name = "crates", group_index = 2 },
    --   },
    -- }
    -- return M
  end,
}
