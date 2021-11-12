local map = require('utils').map

local opts = { noremap = true, silent = true }

vim.g.mapleader = "," -- map leader to comma

map('n', '<leader>w', ':w<cr>') -- Save file
-- Easy splitting
map('n', '<leader>s', ':split<cr>')
map('n', '<leader>v', ':vsplit<cr>')
-- better indenting
map('v', '<', '<gv', opts )
map('v', '>', '>gv', opts)

-- bufdel
map('n', '<leader>bd', '<cmd>BufDel<CR>')

map('n', '<leader>d', ':NvimTreeToggle<cr>')
map('n', '<leader>r', ':NvimTreeRefresh<CR>')
map('n', '<leader>n', ':NvimTreeFindFile<CR>')

-- lsp
-- See `:help vim.lsp.*` for documentation on any of the below functions
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<leader>wa', ':lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<leader>wr', ':lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<leader>wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
map('n', '<leader>D', ':lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>', opts)
map('n', '<leader>e', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
map('n', '[d', ':lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', ':lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<leader>q', ':lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
map("n", '<leader>F', ":lua vim.lsp.buf.formatting()<CR>", opts)
