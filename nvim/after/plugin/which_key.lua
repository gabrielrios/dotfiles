require("which-key").register({
  ["<leader>"] = {
    ["."] = { ":Ex<CR>", "File explorer" },
    [","] = {  ":Telescope buffers<CR>", "List buffers" },
    ["<leader>"] = { ":Telescope git_files<CR>", "Project Files" },
    b = {
      name = "Buffers",
      k = { ":bd<CR>", "Close buffer" },
      d = { ":bd<CR>", "Close buffer" },
      K = { ":%bd<CR>", "Close all bufers" },
      O = { ":%bd|e#<CR>", "Close other buffers" },
      N = { ":new<BR>", "New buffer" },
    },
    c = {
      name = "Code",
      d = { "<C-]>", "Jump to Definition" },
    },
    g = {
      name = "Git",
      g = { ":Neogit<CR>", "Git status" },
      B = { ":Git blame<CR>", "Blame" },
      L = { ":Git log<CR>", "Log" },
    },
    p = {
      name = "Project",
      p = { ":Telescope project<CR>", "Switch project" },
      f = { ":Telescope git_files<CR>", "Find file in Project" },
    },
    s = {
      name = "Search",
      p = { ":Telescope live_grep<CR>", "Search project" },
      D = { ":Telescope dir live_grep<CR>", "Search othe directory" },
      i = { ":TagbarOpenAutoClose<CR>", "Tag bar"},
    },
    w = {
      name = "Window",
      v = { ":vsplit<CR>", "Vertical Split"},
      s = { ":split<CR>", "Horizonal Split"},
      q = { ":close<CR>", "Close window"},
      h = { "<C-w>h", "Move left "},
      l = { "<C-w>l", "Move right "},
      j = { "<C-w>j", "Move down "},
      k = { "<C-w>k", "Move up "},
      m = {
        m = { "<C-w>T", "Maximize" }
      }
    }
  }
})
