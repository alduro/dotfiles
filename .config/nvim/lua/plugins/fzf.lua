-- Mappings
local map = require('utils').map
local opts = { noremap = true, silent = true }


local lspfuzzy = require('lspfuzzy')
lspfuzzy.setup {
  methods = 'all',         -- either 'all' or a list of LSP methods (see below)
  fzf_preview = {          -- arguments to the FZF '--preview-window' option
    'right:+{2}-/2'          -- preview on the right and centered on entry
  },
  fzf_action = {           -- FZF actions
    ['ctrl-t'] = 'tabedit',  -- go to location in a new tab
    ['ctrl-v'] = 'vsplit',   -- go to location in a vertical split
    ['ctrl-x'] = 'split',    -- go to location in a horizontal split
  },
  fzf_modifier = ':~:.',   -- format FZF entries, see |filename-modifiers|
  fzf_trim = true,         -- trim FZF entries
}
-- fzf
map('n', '<leader>ff', '<cmd>Files<CR>')
map('n', '<leader>g', '<cmd>Commits<CR>')
map('n', '<leader>fg', '<cmd>Rg<CR>')
map('n', '<leader>fb', '<cmd>Buffers<CR>')
vim.g['fzf_action'] = {['ctrl-s'] = 'split', ['ctrl-v'] = 'vsplit'}
vim.g.fzf_colors = {
  fg =      { 'fg', 'Normal' },
  bg =      { 'bg', 'Normal' },
  hl =      { 'fg', 'Comment' },
  ['fg+'] = { 'fg', 'CursorLine', 'CursorColumn', 'Normal' },
  ['bg+'] = { 'bg', 'CursorLine', 'CursorColumn' },
  ['hl+'] = { 'fg', 'Statement' },
  info =    { 'fg', 'PreProc' },
  border =  { 'fg', 'Ignore' },
  prompt =  { 'fg', 'Conditional' },
  pointer = { 'fg', 'Exception' },
  marker =  { 'fg', 'Keyword' },
  spinner = { 'fg', 'Label' },
  header =  { 'fg', 'Comment' }
}

