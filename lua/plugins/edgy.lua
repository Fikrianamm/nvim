return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  init = function()
    vim.opt.laststatus = 3
    vim.opt.splitkeep = "screen"
  end,
  opts = {
    -- edgebar animations
    animate = {
      enabled = true,
      fps = 100, -- frames per second
      cps = 120, -- cells per second
      on_begin = function()
        vim.g.minianimate_disable = true
      end,
      on_end = function()
        vim.g.minianimate_disable = false
      end,
      -- Spinner for pinned views that are loading.
      -- if you have noice.nvim installed, you can use any spinner from it, like:
      -- spinner = require("noice.util.spinners").spinners.circleFull,
      spinner = {
        frames = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
        interval = 80,
      },
    },
    bottom = {
      -- toggleterm / lazyterm at the bottom with a height of 40% of the screen
      {
        ft = "toggleterm",
        size = { height = 0.4 },
        -- exclude floating windows
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      {
        ft = "lazyterm",
        title = "LazyTerm",
        size = { height = 0.4 },
        filter = function(buf)
          return not vim.b[buf].lazyterm_cmd
        end,
      },
      "Trouble",
      { ft = "qf", title = "QuickFix" },
      {
        ft = "help",
        size = { height = 20 },
        -- only show help buffers
        filter = function(buf)
          return vim.bo[buf].buftype == "help"
        end,
      },
      { ft = "spectre_panel", size = { height = 0.4 } },
    },
    icons = {
      closed = " ",
      open = " ",
    },
    keys = {
      -- increase width
      ["<c-Right>"] = function(win)
        win:resize("width", 2)
      end,
      -- decrease width
      ["<c-Left>"] = function(win)
        win:resize("width", -2)
      end,
      -- increase height
      ["<c-Up>"] = function(win)
        win:resize("height", 2)
      end,
      -- decrease height
      ["<c-Down>"] = function(win)
        win:resize("height", -2)
      end,
    },
  },
}
