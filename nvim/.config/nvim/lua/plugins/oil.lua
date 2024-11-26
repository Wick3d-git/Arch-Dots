return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function()
    require("oil").setup({})
    vim.keymap.set("n", "-", ":Oil<CR>", { desc = "Open parent directory" })
    --vim.keymap.set("n", "<leader>-", require("oil").toggle_float)
  end,
}
