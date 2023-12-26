local telescope = require('telescope')
local actions = require 'telescope.actions'

telescope.load_extension("project")
telescope.load_extension("file_browser")

telescope.setup({
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  },
  defaults = vim.tbl_extend(
    "force",
    require('telescope.themes').get_ivy(),
    {
      mappings = {
        i = {
          ["<C-j>"] = {
            actions.move_selection_next, type = "action",
            opts = { nowait = true, silent = true }
          },
          ["<C-k>"] = {
            actions.move_selection_previous, type = "action",
            opts = { nowait = true, silent = true }
          },
        }
      }
    }
  )
})

-- local builtin = require('telescope.builtin')

require("dir-telescope").setup({
      -- these are the default options set
      hidden = true,
      no_ignore = false,
      show_preview = true,
    })
