local lspconfig = require('lspconfig')
local custom_attach = require('lsp.on_attach')

lspconfig.sumneko_lua.setup{
  on_attach=custom_attach,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT", path = vim.split(package.path, ';'), },
      completion = { keywordSnippet = "Disable", },
      diagnostics = { enable = true, globals = {
              "vim", "describe", "it", "before_each", "after_each" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
        }
      }
    }
  }
}
