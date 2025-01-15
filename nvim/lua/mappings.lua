require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Buffer Control
map("n", "]]",
  function()
    require("nvchad.tabufline").next()
  end,
  { desc = "Buffer goto next" })
map("n", "[[",
  function()
    require("nvchad.tabufline").prev()
  end,
  { desc = "Buffer goto previous" })

-- LSP
map("n", "<leader>lf",
  function()
    vim.diagnostic.open_float()
  end,
  { desc = "Opens floating ERROR buffer"})
