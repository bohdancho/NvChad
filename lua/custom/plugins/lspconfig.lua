return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "yioneko/nvim-vtsls",
  },
  config = function()
    local lspconfig = require "lspconfig"
    require("lspconfig.configs").vtsls = require("vtsls").lspconfig -- set default server config, optional but recommended

    local config = require "plugins.configs.lspconfig"
    require("mason-lspconfig").setup {
      ensure_installed = { "vtsls", "emmet_ls", "tailwindcss" },
    }

    lspconfig.vtsls.setup {
      on_attach = config.on_attach,
      capabilities = config.capabilities,
    }

    lspconfig.emmet_ls.setup {
      on_attach = config.on_attach,
      capabilities = config.capabilities,
    }

    lspconfig.tailwindcss.setup {
      on_attach = config.on_attach,
      capabilities = config.capabilities,
      settings = { tailwindCSS = { experimental = { classRegex = { { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" } } } } },
    }
  end,
}
