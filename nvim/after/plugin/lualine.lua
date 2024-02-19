require('lualine').setup({
  options = {
    theme  = "auto",
  },
  sections = {
    lualine_b = {'diff', 'diagnostics'},
    lualine_c = {
      {
        'filename',
        file_status = true, -- displays file status (readonly status, modified status)
        path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
      }
    },
    lualine_x = {'encoding', 'filetype'},
  }
})
