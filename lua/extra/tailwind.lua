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

    opts.sources = {
      { name = "nvim_lua" },
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "vim-dadbod-completion" },
      { name = "path" },
      { name = "buffer", keyword_length = 5 },
      { name = "luasnip", group_index = 2 },
      { name = "crates", group_index = 2 },
    }
  end,
}
