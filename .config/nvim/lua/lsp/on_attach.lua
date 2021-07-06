local map_buf = require('utils').map_buf

local on_attach = function(client)
  print('Language Server Protocol started!', client.name)

  if client.config.flags then
    client.config.flags.allow_incremental_sync = true
  end

  require'completion'.on_attach(client)
  require'lsp_signature'.on_attach(client)

  local opts = { noremap = true, silent = true }

  map_buf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  map_buf("n", "gr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  map_buf("n", "gR", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  map_buf("n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  map_buf("n", "K",  "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  map_buf("n", "gs", "<cmd>lua lsp_organize_imports()<CR>", opts)
  map_buf("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  map_buf("n", "<Leader>a", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})<CR>", opts)
  map_buf("i", "<C-x><C-x>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)

  vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]]
  vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]

  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_exec([[
      augroup LspAutocommands
          autocmd! * <buffer>
          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()
      augroup END
      ]], true)
  end
  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=Grey
      hi LspReferenceText cterm=bold ctermbg=red guibg=Grey
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=Grey
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end
return on_attach
 
