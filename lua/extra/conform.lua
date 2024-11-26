local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a list to run only the first available formatter
    javascript = { "biome-check", "prettierd" },
    typescript = { "biome-check", "prettierd" },
    tsx = { "biome-check", "prettierd" },
    jsx = { "biome-check", "prettierd" },
    typescriptreact = { "biome-check", "prettierd" },
    javascriptreact = { "biome-check", "prettierd" },
    nix = { "alejandra" },
    go = { "gofmt", "gofumt", "goimports_reviser", "golines" },
    rust = { "rustfmt" },
    json = { "biome-check", "prettierd" },
    sql = { "sqlfmt" },
    html = { "biome-check", "prettierd" },
    css = { "biome-check", "prettierd" },
    markdown = { "prettierd" },
    graphql = { "biome-check", "prettierd" },
    -- Use the "*" filetype to run formatters on all filetypes
    -- ["*"] = { "codespell" },
    -- Use the "_" filetype to run formatters on filetypes that don't
    -- have other formatters configured
    ["_"] = { "trim_whitespace", "prettierd" },
  },

  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = false,
    stop_after_first = true,
  },

  formatters = {
    ["biome-check"] = {
      require_cwd = true,
    },
  },
}

return options
