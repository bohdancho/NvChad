return {
  "napmn/react-extract.nvim",
  event = "VeryLazy",
  opts = {},
  init = function()
    require("core.utils").load_mappings "react_extract"
  end,
}
