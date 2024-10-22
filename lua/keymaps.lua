local opts = { noremap = true, silent = true }

-- Set keymaps with flexible options
vim.api.nvim_set_keymap("i", "jk", "<Esc>", opts)

-- Remove search highlighting when you escape
vim.api.nvim_set_keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- Open diagnostic quickfix list
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Save file
vim.keymap.set("n", "<C-s>", ":w<CR>", opts)

-- Delete single character without adding to the register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":Bdelete!<CR>", { silent = true, noremap = true, desc = "Close current buffer" })
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", { silent = true, noremap = true, desc = "New [B]uffer" })

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", { silent = true, noremap = true, desc = "Split Window [V]ertically" })
vim.keymap.set("n", "<leader>h", "<C-w>s", { silent = true, noremap = true, desc = "Split Window [H]orizontally" })
vim.keymap.set("n", "<leader>=", "<C-w>=", { silent = true, noremap = true, desc = "Balance Windows [=]" })
vim.keymap.set("n", "<leader>o", "<C-w>o", { silent = true, noremap = true, desc = "Close [O]ther windows" })
vim.keymap.set("n", "<leader>O", ":%bd|e#|bd#<CR>", { silent = true, noremap = true, desc = "Close [O]ther buffers" })

-- Toggle line wrapping
vim.keymap.set(
	"n",
	"<leader>lw",
	":set wrap!<CR>",
	{ silent = true, noremap = true, desc = "Toggle [L]ine [W]rapping" }
)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)
