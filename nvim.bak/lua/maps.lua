local keymap = vim.keymap

-- Normal mode --

-- Insert a new line empty current line
keymap.set('n', '<C-o>', 'O<esc>')
-- Quit --
keymap.set('n', '<C-q>', ':q<cr>')

-- New tab
keymap.set('n', 'te', ':tabedit')

keymap.set('n', '<C-s>', ':w<cr>')

keymap.set('n', '<C-b>', ':NvimTreeFocus<cr>')

keymap.set('n', '<C-p>', '"+p')

keymap.set('n', '`w', ':vs<cr>')
keymap.set('n', '`v', ':sp<cr>')
-- End Normal Mode --
