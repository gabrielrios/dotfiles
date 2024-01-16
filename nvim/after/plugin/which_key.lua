require("which-key").register({
  ["<leader>"] = {
    ["."] = { ":Telescope file_browser path=%:p:h select_buffer=true<CR>", "file explorer" },
    [","] = { ":Telescope buffers<CR>", "List buffers" },
    ["'"] = { ":Telescope resume<CR>", "Resume last search" },
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
    o = {
      name = "Application (open)",
      p = { ":NvimTreeToggle<CR>", "Open Tree" },
    },
    p = {
      name = "Project",
      p = { ":Telescope project<CR>", "Switch project" },
      f = { ":Telescope git_files<CR>", "Find file in Project" },
    },
    s = {
      name = "Search",
      d = { ":GrepInCurrentDir<CR>", "Search current dir" },
      p = { ":Telescope live_grep<CR>", "Search project" },
      D = { ":Telescope dir live_grep<CR>", "Search othe directory" },
      i = { ":Telescope treesitter<CR>", "Tag bar"},
      I = { ":TagbarOpenAutoClose<CR>", "Tag bar"},
    },
    w = {
      name = "Window",
      v = { ":vsplit<CR>", "Vertical Split"},
      s = { ":split<CR>", "Horizonal Split"},
      q = { ":close<CR>", "Close window"},
      h = { "<C-h>", "Move left "},
      l = { "<C-l>", "Move right "},
      j = { "<C-j>", "Move down "},
      k = { "<C-k>", "Move up "},
      m = {
        m = { "<C-w>T", "Maximize" }
      }
    },
    r = {
      name = "Rails",
      c = { ":FindInDir app/controllers<CR>", "find controllers" },
      v = { ":FindInDir app/views<CR>", "find views" },
      m = { ":FindInDir app/models<CR>", "find models" },
    },
    t = {
      name = "Toggles",
      w = { ":set wrap!<CR>", "Toggle wrap" },
      r = { ":set relativenumber!<CR>", "Toggle relative number" },
      n = { ":set number!<CR>", "Toggle number" },
      c = { ":Telescope colorscheme<CR>", "Toggle colors" },
    }
  }
})
