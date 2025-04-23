local wk = require("which-key")--#.register({
wk.add(
  {
    { "<leader>'", ":Telescope resume<CR>", desc = "Resume last search" },
    { "<leader>,", ":Telescope buffers<CR>", desc = "List buffers" },
    { "<leader>.", ":Telescope file_browser path=%:p:help |select_buffer=true<CR>", desc = "file explorer" },
    { "<leader><leader>", ":Telescope git_files<CR>", desc = "Project Files" },
    { "<leader>b", group = "Buffers" },
    { "<leader>bK", ":%bd<CR>", desc = "Close all bufers" },
    { "<leader>bN", ":new<BR>", desc = "New buffer" },
    { "<leader>bO", ":%bd|e#<CR>", desc = "Close other buffers" },
    { "<leader>bd", ":bd<CR>", desc = "Close buffer" },
    { "<leader>bk", ":bd<CR>", desc = "Close buffer" },
    { "<leader>c", group = "Code" },
    { "<leader>cd", "<C-]>", desc = "Jump to Definition" },
    { "<leader>g", group = "Git" },
    { "<leader>gB", ":Git blame<CR>", desc = "Blame" },
    { "<leader>gL", ":Git log<CR>", desc = "Log" },
    { "<leader>gg", ":Neogit<CR>", desc = "Git status" },
    { "<leader>o", group = "Application (open)" },
    { "<leader>op", ":NvimTreeToggle<CR>", desc = "Open Tree" },
    { "<leader>r", group = "Rails" },
    { "<leader>rc", ":FindInDir app/controllers<CR>", desc = "find controllers" },
    { "<leader>rm", ":FindInDir app/models<CR>", desc = "find models" },
    { "<leader>rv", ":FindInDir app/views<CR>", desc = "find views" },
    { "<leader>s", group = "Search" },
    { "<leader>sD", ":Telescope dir live_grep<CR>", desc = "Search other directory" },
    { "<leader>sI", ":TagbarOpenAutoClose<CR>", desc = "Tag bar" },
    { "<leader>sd", ":GrepInCurrentDir<CR>", desc = "Search current dir" },
    { "<leader>si", ":Telescope treesitter<CR>", desc = "Tag bar" },
    { "<leader>sp", ":Telescope live_grep<CR>", desc = "Search project" },
    { "<leader>t", group = "Toggles" },
    { "<leader>ta", ":AvanteToggle<CR>", desc = "Toggle Avante Sidebar" },
    { "<leader>tc", ":Telescope colorscheme<CR>", desc = "Toggle colors" },
    { "<leader>tn", ":set number!<CR>", desc = "Toggle number" },
    { "<leader>tr", ":set relativenumber!<CR>", desc = "Toggle relative number" },
    { "<leader>tw", ":set wrap!<CR>", desc = "Toggle wrap" },
    { "<leader>w", group = "Window" },
    { "<leader>wh", "<C-h>", desc = "Move left " },
    { "<leader>wj", "<C-j>", desc = "Move down " },
    { "<leader>wk", "<C-k>", desc = "Move up " },
    { "<leader>wl", "<C-l>", desc = "Move right " },
    { "<leader>wmm", "<C-w>T", desc = "Maximize" },
    { "<leader>wq", ":close<CR>", desc = "Close window" },
    { "<leader>ws", ":split<CR>", desc = "Horizonal Split" },
    { "<leader>wv", ":vsplit<CR>", desc = "Vertical Split" },
    {"<leader>l", group = "LLM" },
    {"<leader>lg", ":Gen<CR>", desc = "Gen Menu" },
    {"<leader>lu", ":Gen Unit_Test<CR>", desc = "Gen Unit test for selection" },
    {"<leader>ls", ":Gen System_Test<CR>", desc = "Gen System test for selection" },
    {"<leader>lf", ":Gen Feature_Spec<CR>", desc = "Gen Feature Spec for selection" },
    {"<leader>lm", ":Gen Unit_Spec<CR>", desc = "Gen Unit Spec for selection" },
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
  })

-- prefil edit window with common scenarios to avoid repeating query and submit immediately
local prefill_edit_window = function(request)
  require('avante.api').edit()
  local code_bufnr = vim.api.nvim_get_current_buf()
  local code_winid = vim.api.nvim_get_current_win()
  if code_bufnr == nil or code_winid == nil then
    return
  end
  vim.api.nvim_buf_set_lines(code_bufnr, 0, -1, false, { request })
  -- Optionally set the cursor position to the end of the input
  vim.api.nvim_win_set_cursor(code_winid, { 1, #request + 1 })
  -- Simulate Ctrl+S keypress to submit
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-s>', true, true, true), 'v', true)
end

-- NOTE: most templates are inspired from ChatGPT.nvim -> chatgpt-actions.json
local avante_grammar_correction = 'Correct the text to standard English, but keep any code blocks inside intact.'
local avante_keywords = 'Extract the main keywords from the following text'
local avante_code_readability_analysis = [[
  You must identify any readability issues in the code snippet.
  Some readability issues to consider:
  - Unclear naming
  - Unclear purpose
  - Redundant or obvious comments
  - Lack of comments
  - Long or complex one liners
  - Too much nesting
  - Long variable names
  - Inconsistent naming and code style.
  - Code repetition
  You may identify additional problems. The user submits a small section of code from a larger file.
  Only list lines with readability issues, in the format <line_num>|<issue and proposed solution>
  If there's no issues with code respond with only: <OK>
]]
local avante_optimize_code = 'Optimize the following code'
local avante_summarize = 'Summarize the following text'
local avante_translate = 'Translate this into Chinese, but keep any code blocks inside intact'
local avante_explain_code = 'Explain the following code'
local avante_complete_code = 'Complete the following codes written in ' .. vim.bo.filetype
local avante_add_docstring = 'Add docstring to the following codes'
local avante_fix_bugs = 'Fix the bugs inside the following codes if any'
local avante_add_tests = 'Implement tests for the following code'

require('which-key').add {
  { '<leader>a', group = 'Avante' }, -- NOTE: add for avante.nvim
  {
    mode = { 'n', 'v' },

    {
      '<leader>aa',
      function()
        require('avante.api').ask()
      end,
      desc = 'Ask',
    },
    {
      '<leader>ag',
      function()
        require('avante.api').ask { question = avante_grammar_correction }
      end,
      desc = 'Grammar Correction(ask)',
    },
    {
      '<leader>ak',
      function()
        require('avante.api').ask { question = avante_keywords }
      end,
      desc = 'Keywords(ask)',
    },
    {
      '<leader>al',
      function()
        require('avante.api').ask { question = avante_code_readability_analysis }
      end,
      desc = 'Code Readability Analysis(ask)',
    },
    {
      '<leader>ao',
      function()
        require('avante.api').ask { question = avante_optimize_code }
      end,
      desc = 'Optimize Code(ask)',
    },
    {
      '<leader>am',
      function()
        require('avante.api').ask { question = avante_summarize }
      end,
      desc = 'Summarize text(ask)',
    },
    {
      '<leader>an',
      function()
        require('avante.api').ask { question = avante_translate }
      end,
      desc = 'Translate text(ask)',
    },
    {
      '<leader>ax',
      function()
        require('avante.api').ask { question = avante_explain_code }
      end,
      desc = 'Explain Code(ask)',
    },
    {
      '<leader>ac',
      ":AvanteClear<CR>",
      -- function()
      --   require('avante.api').ask { question = avante_complete_code }
      -- end,
      desc = 'Clear history',
    },
    {
      '<leader>af',
      ':AvanteFocus<CR>',
      desc = 'Focus',
    },
    {
      '<leader>ad',
      function()
        require('avante.api').ask { question = avante_add_docstring }
      end,
      desc = 'Docstring(ask)',
    },
    {
      '<leader>ab',
      function()
        require('avante.api').ask { question = avante_fix_bugs }
      end,
      desc = 'Fix Bugs(ask)',
    },
    {
      '<leader>au',
      function()
        require('avante.api').ask { question = avante_add_tests }
      end,
      desc = 'Add Tests(ask)',
    },
  },
}

require('which-key').add {
  { '<leader>a', group = 'Avante' }, -- NOTE: add for avante.nvim
  {
    mode = { 'v' },
    {
      '<leader>ae',
      function()
        require('avante.api').ask()
      end,
      desc = 'Ask (Edit)',
    },
    {
      '<leader>aG',
      function()
        prefill_edit_window(avante_grammar_correction)
      end,
      desc = 'Grammar Correction',
    },
    {
      '<leader>aK',
      function()
        prefill_edit_window(avante_keywords)
      end,
      desc = 'Keywords',
    },
    {
      '<leader>aO',
      function()
        prefill_edit_window(avante_optimize_code)
      end,
      desc = 'Optimize Code(edit)',
    },
    {
      '<leader>aC',
      function()
        prefill_edit_window(avante_complete_code)
      end,
      desc = 'Complete Code(edit)',
    },
    {
      '<leader>aD',
      function()
        prefill_edit_window(avante_add_docstring)
      end,
      desc = 'Docstring(edit)',
    },
    {
      '<leader>aB',
      function()
        prefill_edit_window(avante_fix_bugs)
      end,
      desc = 'Fix Bugs(edit)',
    },
    {
      '<leader>aU',
      function()
        prefill_edit_window(avante_add_tests)
      end,
      desc = 'Add Tests(edit)',
    },
  },
}
