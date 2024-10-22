return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>n", ":Neotree toggle float reveal<CR>", { desc = "Show file in NeoTree" })
		vim.keymap.set("n", "<C-n>", ":Neotree toggle float reveal<CR>")
	end,
}
