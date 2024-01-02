local telescope_builtin = require('telescope.builtin')
local telescope_utils = require('telescope.utils')

function FindInDir(dir)
  telescope_builtin.find_files({ cwd = dir })
end

function GrepInDir(dir)
  telescope_builtin.live_grep({ cwd = dir })
end

vim.api.nvim_create_user_command(
  'FindInCurrentDir',
  function(_opts)
    FindInDir(telescope_utils.buffer_dir())
  end,
  { nargs = 0 }
)

vim.api.nvim_create_user_command(
  'GrepInCurrentDir',
  function(_opts)
    GrepInDir(telescope_utils.buffer_dir())
  end,
  { nargs = 0 }
)

vim.api.nvim_create_user_command(
  'FindInDir',
  function(opts)
    FindInDir(opts.args)
  end,
  { nargs = 1}
)

vim.api.nvim_create_user_command(
  'GrepInDir',
  function(opts)
    GrepInDir(opts.args)
  end,
  { nargs = 1}
)

