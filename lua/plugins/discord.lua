return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      auto_update = true,
      neovim_image_text = "The One True Text Editor",
      main_image = "neovim",
      buttons = false,
      show_time = false,
      editing_text = "Editing %s",
      workspace_text = "Working on %s",
      line_number_text = "Line %s out of %s",
    })
  end,
}
