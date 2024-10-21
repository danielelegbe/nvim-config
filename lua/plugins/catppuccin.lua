return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	flavour = "latte",
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
