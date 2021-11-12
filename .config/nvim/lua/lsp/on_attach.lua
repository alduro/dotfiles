local on_attach = function(client)
  print('Language Server Protocol started!', client.name)

  -- vim.cmd [[au CursorHoldI * silent! lua vim.lsp.buf.signature_help({ focusable = false })]]
  -- vim.cmd [[au CursorMoved <buffer> lua vim.lsp.buf.clear_references()]]
  -- vim.cmd [[au CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]]
end

return on_attach
