local map_buf = require('utils').map_buf
local buf_option = require('utils').buf_option

local on_attach = function(client)
  -- buf_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  print("LSP started.");
  require'completion'.on_attach(client)

  -- if client.resolved_capabilities.document_formatting then
  --   vim.cmd [[augroup Format]]
  --   vim.cmd [[autocmd! * <buffer>]]
  --   vim.cmd [[autocmd BufWritePost <buffer> lua formatting()]]
  --   vim.cmd [[augroup END]]
  -- end
  -- Mappings
  local opts = { noremap = true, silent = true }

  map_buf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration() <CR>', opts)
  map_buf('n', 'gd', '<cmd>lua vim.lsp.buf.definition() <CR>', opts)
  map_buf('n', 'K', '<cmd>lua vim.lsp.buf.hover() <CR>', opts)
  map_buf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation() <CR>', opts)
  map_buf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename() <CR>', opts)
  map_buf('n', 'gr', '<cmd>lua vim.lsp.buf.references() <CR>', opts)
  -- map_buf('n', '<leader>ca', '<cmd>lua require("lspsaga.codeaction").code_action() <CR>', opts)
  map_buf('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action() <CR>', opts)
  -- mab_buf('v', '<leader>ca', ":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", opts)
  -- mab_buf('v', '<leader>ca', ":'<,'>lua vim.lsp.buf.range_code_action()<CR>", opts)
  map_buf('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev() <CR>', opts)
  map_buf('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next() <CR>', opts)
  map_buf('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist() <CR>', opts)

  vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
  vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
  vim.cmd [[autocmd BufWritePre *.js,*.jsx lua vim.lsp.buf.formatting_sync(nil, 1000)]]

  if client.resolved_capabilities.document_formatting then
    map_buf("n", "<leader>qf", "<cmd>lua vim.lsp.buf.formatting() <CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    map_buf("n", "<leader>qf", "<cmd>lua vim.lsp.buf.range_formatting() <CR>", opts)
  end
end

return on_attach
