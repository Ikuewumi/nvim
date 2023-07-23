-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
--map <Ctrl-S> to save file
map('n', '<C-s>', [[:w<CR>]], {})
-- open up telescope
map('n', '<leader>t', [[:lua require"telescope.builtin".find_files()<CR>]], {})
--close with q
map('n', 'q', [[:q<CR>]], {})
map('n', '<C-q>', [[:qa<CR>]], {})
map('n', '<C-d>', [[:Dashboard<CR>]], {})
map('n', 'c', [[:CommentToggle<CR>]], {})
map('n', '<A-z>', [[:set wrap!<CR>]], {})
map('n', '<C-p>', [[:CmdPalette<CR>]], {})
map('n', '<Tab>', [[:tabn<CR>]], {})
map('n', '<S-Tab>', [[:tabp<CR>]], {})
map('n', '<C-c>', [[:copy<CR>]], {})
