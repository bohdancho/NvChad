return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  init = function()
    require("core.utils").load_mappings "fugitive"
  end,
}
