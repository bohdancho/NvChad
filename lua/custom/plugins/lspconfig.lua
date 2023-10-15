return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require "lspconfig"
    local config = require "plugins.configs.lspconfig"
    require("mason-lspconfig").setup {
      ensure_installed = { "emmet_ls", "tailwindcss" },
    }

    lspconfig.emmet_ls.setup {
      on_attach = config.on_attach,
      capabilities = config.capabilities,
    }

    lspconfig.tailwindcss.setup {
      on_attach = config.on_attach,
      capabilities = config.capabilities,
    }
  end,
}
