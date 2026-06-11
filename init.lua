require("searchjump"):setup({
	unmatch_fg = "#b2a496",
	match_str_fg = "#000000",
	match_str_bg = "#73AC3A",
	first_match_str_fg = "#000000",
	first_match_str_bg = "#73AC3A",
	label_fg = "#EADFC8",
	label_bg = "#BA603D",
	only_current = false,
	show_search_in_statusbar = false,
	auto_exit_when_unmatch = false,
	enable_capital_label = true,
	search_patterns = { "hell[dk]d", "%d+.1080p", "第%d+集", "第%d+话", "%.E%d+", "S%d+E%d+" },
})

require("restore"):setup({
	position = { "center", w = 60, h = 20 },
})

require("bunny"):setup({
	hops = {
		{ key = "p", path = "~/.config/nvim/lua/plugins", desc = "Neovim plugins" },
		{ key = "c", path = "~/.config", desc = "Config files" },
		{ key = "l", path = "~/.local", desc = ".local" },
		-- { key = { "l", "b" }, path = "~/.local/bin", desc = "Local bin" },
	},
	desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
	ephemeral = true, -- Enable ephemeral hops, default is true
	tabs = true, -- Enable tab hops, default is true
	notify = false, -- Notify after hopping, default is false
	fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})
