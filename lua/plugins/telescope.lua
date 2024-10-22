return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						layout_config = {
							width = 0.95,
						},
					},
					live_grep = {
						layout_config = {
							width = 0.95,
						},
					},
					oldfiles = {
						layout_config = {
							width = 0.95,
						},
					},
					current_buffer_fuzzy_find = {
						layout_config = {
							width = 0.95,
						},
					},
					lsp_references = {
						layout_config = {
							width = 0.95,
						},
					},
				},
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})

			vim.keymap.set("n", "<leader>sf", function()
				builtin.live_grep({
					prompt_title = "Live Grep in All Files",
				})
			end, { desc = "[S]earch in All [F]iles" })

			vim.keymap.set("n", "<leader>.", builtin.oldfiles, { desc = 'Search Recent Files ("." for repeat)' })

			vim.keymap.set("n", "<leader>/", function()
				require("telescope.builtin").current_buffer_fuzzy_find({
					prompt_title = "Search in Current Buffer",
				})
			end, { desc = "Search [/] in current file" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
		end,
	},
}
