return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- defaults
      "lua",

      -- web dev
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "json",
      "php",

      "make",
      "markdown",
      "bash",
    },
    highlight = {
      disable = { "lua" },
    },
  },
}
