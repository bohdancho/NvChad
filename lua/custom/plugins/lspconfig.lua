return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local config = require "plugins.configs.lspconfig"
    require("mason-lspconfig").setup {
      ensure_installed = { "tsserver" },
    }

    local function ts_organize_imports()
      local params = {
        command = "_typescript.organizeImports",
        arguments = { vim.api.nvim_buf_get_name(0) },
      }
      vim.lsp.buf.execute_command(params)
    end

    require("lspconfig").tsserver.setup {
      on_attach = config.on_attach,
      capabilities = config.capabilities,
      commands = {
        OrganizeImports = {
          ts_organize_imports,
          description = "Organize Imports",
        },
      },
    }
  end,
}
