local map_buf = require('utils').map_buf

local on_attach = function(client, bufnr)
  print("LSP started." .. client.name);
  -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  require'completion'.on_attach(client)
  require'lsp_signature'.on_attach(client)

  vim.cmd("command! LspDef lua vim.lsp.buf.definition()")
  vim.cmd("command! LspFormatting lua vim.lsp.buf.formatting()")
  vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
  vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
  vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
  vim.cmd("command! LspOrganize lua lsp_organize_imports()")
  vim.cmd("command! LspRefs lua vim.lsp.buf.references()")
  vim.cmd("command! LspTypeDef lua vim.lsp.buf.type_definition()")
  vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
  -- vim.cmd("command! LspDiagPrev lua vim.lsp.diagnostic.goto_prev()")
  -- vim.cmd("command! LspDiagNext lua vim.lsp.diagnostic.goto_next()")
  vim.cmd("command! LspDiagLine lua vim.lsp.diagnostic.show_line_diagnostics()")
  vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
  
  local opts = { noremap = true, silent = true }

  map_buf("n", "gd", ":LspDef<CR>", opts)
  map_buf("n", "gr", ":LspRename<CR>", opts)
  map_buf("n", "gR", ":LspRefs<CR>", opts)
  map_buf("n", "gy", ":LspTypeDef<CR>", opts)
  map_buf("n", "K",  ":LspHover<CR>", opts)
  map_buf("n", "gs", ":LspOrganize<CR>", opts)
  -- map_buf("n", "[a", ":LspDiagPrev<CR>", opts)
  -- map_buf("n", "]a", ":LspDiagNext<CR>", opts)
  map_buf("n", "ga", ":LspCodeAction<CR>", opts)
  map_buf("n", "<Leader>a", ":LspDiagLine<CR>", opts)
  map_buf("i", "<C-x><C-x>", "<cmd> LspSignatureHelp<CR>", opts)

  vim.cmd [[autocmd CursorHold * LspDiagLine]]
  vim.cmd [[autocmd CursorHoldI * silent! LspSignatureHelp]]

  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_exec([[
      augroup LspAutocommands
          autocmd! * <buffer>
          autocmd BufWritePre <buffer> LspFormatting
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
 
