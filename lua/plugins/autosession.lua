return {
	lazy = false,
	"rmagatti/auto-session",
	keys = {
		{ "<leader>ls", "<cmd>SessionSearch<CR>", desc = "[L]oad [s]ession" },
	},
	opts = {
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	},
}
