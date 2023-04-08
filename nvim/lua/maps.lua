local keymap = vim.keymap

-- Normal mode --

-- Insert a new line empty current line
keymap.set('n', '<C-o>', 'O<esc>')
-- Quit --
keymap.set('n', '<C-q>', ':q<cr>')

-- New tab
keymap.set('n', 'te', ':tabedit')

keymap.set('n', '<C-s>', ':w<cr>')

keymap.set('n', '<C-b>', ':NvimTreeToggle<cr>')
keymap.set('n', '<C-B>', ':NvimTreeFocus<cr>')

keymap.set('n', '<C-p>', '"+p')

-- End Normal Mode --
