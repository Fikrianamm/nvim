return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
    { "<leader>fe", false },
    { "<leader>fE", false },
    { "<C-e>", "<cmd>Neotree focus<cr>", desc = "Neotree focus" },
    { "<C-b>", "<cmd>Neotree toggle<cr>", desc = "Neotree toggle" },
    { "<leader>bf", "<cmd>Neotree reveal float<cr>", desc = "Neotree float" },
    { "<leader>bv", "<cmd>Neotree reveal left<cr>", desc = "Neotree left" },
  },
}
