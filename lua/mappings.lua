-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
--map <Ctrl-S> to save file
map('n', '<C-s>', [[:w<CR>]], {})
-- open up telescope
map('n', '<leader>t', [[:Telescope<CR>]], {})
--close with q
map('n', 'q', [[:q<CR>]], {})
map('n', '<C-q>', [[:qa<CR>]], {})
