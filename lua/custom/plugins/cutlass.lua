-- Cutlass overrides the delete operations to actually just delete and not affect the current yank.
return {
  "gbprod/cutlass.nvim",
  event = "InsertEnter",
  opts = {
    exclude = { "xx" }, -- exclude x in visual mode for cutting
  },
}
