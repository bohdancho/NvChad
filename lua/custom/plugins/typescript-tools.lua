return {
  "pmizio/typescript-tools.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    settings = { expose_as_code_action = "all" },
  },
}
