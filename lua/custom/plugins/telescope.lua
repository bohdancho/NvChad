return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  opts = {
    defaults = {
      preview = {
        treesitter = { disable = { "lua" } },
      },
      mappings = {
        i = {
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
        },
      },
    },
  },
  init = function()
    require("core.utils").load_mappings "telescope"
    require("telescope").load_extension "ui-select"
  end,
}
