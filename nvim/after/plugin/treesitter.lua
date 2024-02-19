local parsers = {
  "lua",
  "vim",
  "query",
  "javascript",
  "embedded_template",
  "html",
  "css",
  "scss",
  "ruby" ,
  "yaml" ,
  "diff",
  "json",
  "scss",
  "gitcommit",
  "git_rebase"
}

require('nvim-treesitter.configs').setup({
  ensure_installed = parsers,
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = parsers,
    additional_vim_regex_highlight = false
  },
  indent = { enable = true },
  endwise = {
    enable = true
  },
})
