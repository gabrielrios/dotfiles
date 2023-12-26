local parsers = { "lua", "vim", "query", "javascript", "html", "css", "ruby" , "yaml" }

require('nvim-treesitter.configs').setup({
	ensure_installed = parsers,
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlight = false
	},
	indent = { enable = true }
})
