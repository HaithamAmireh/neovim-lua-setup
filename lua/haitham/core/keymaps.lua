local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap("i", "jk", "<ESC>", opts)

--remove highlights when searching
keymap("n", "<leader>nh", ":nohl<CR>", opts)

--don't register deleted character
keymap("n", "x", '"_x', opts)

-- increment/decrement numbers
keymap("n", "<leader>+", "<C-a>", opts) -- increment
keymap("n", "<leader>-", "<C-x>", opts) -- decrement

-- window management
keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
keymap("n", "<leader>sx", ":close<CR>", opts) -- close current split window

keymap("n", "<leader>tt", ":tabnew<CR>", opts) -- open new tab
keymap("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
keymap("n", "<leader>gt", ":tabp<CR>", opts) --  go to previous tab

--vim-maximizer
keymap("n", "<leader>sm", ":MaximizerToggle<CR>", opts)

--File explorer
keymap("n", "<leader><leader>", ":NvimTreeToggle<CR>", opts) -- toggle file explorer

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags

-- autocomplete using tab
-- keymap("i", "<Tab>", "<C-n>", opts)
