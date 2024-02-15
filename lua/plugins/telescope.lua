return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- change a keymap
    { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>i", "<cmd>Telescope import<cr>", desc = "Import File" },
  },
}
