" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugins.fzf\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n申2\0\0\2\0\f\0\0216\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\0\0009\0\t\0'\1\v\0=\1\n\0K\0\1\0\n99999\16colorcolumn\awo$indent_blankline_use_treesitter\b笆十26indent_blankline_char\1\3\0\0\thelp\vpacker&indent_blankline_filetype_exclude\1\2\0\0\rterminal%indent_blankline_buftype_exclude\6g\bvim\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lualine\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/night-owl.vim"
  },
  ["nvim-bufbar"] = {
    config = { "\27LJ\2\nf\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15show_flags\1\17show_bufname\fvisible\rcounters\1\nsetup\vbufbar\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-bufbar"
  },
  ["nvim-bufdel"] = {
    config = { "\27LJ\2\nF\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tnext\ncycle\nsetup\vbufdel\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-bufdel"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rlsp.init\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-lspfuzzy"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.nvim_tree\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.vim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.onedark\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.fugitive\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-indexed-search"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-indexed-search"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty"
  },
  ["vim-polyglot"] = {
    config = { "\27LJ\2\n表1\0\0\2\0\a\0\0176\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1鐔3=\1\6\0K\0\1\0\fcsv_end\14csv_start\23csv_strict_columns\1\2\0\0\rsensible\22polyglot_disabled\6g\bvim\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-ruby-interpolation"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-ruby-interpolation"
  },
  ["vim-ruby-refactoring"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-ruby-refactoring"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.vim_test\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  vimux = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vimux"
  }
}

-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
-- Config for: nvim-bufferline.lua
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
-- Config for: indent-blankline.nvim
try_loadstring("\27LJ\2\n申2\0\0\2\0\f\0\0216\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\0\0009\0\t\0'\1\v\0=\1\n\0K\0\1\0\n99999\16colorcolumn\awo$indent_blankline_use_treesitter\b笆十26indent_blankline_char\1\3\0\0\thelp\vpacker&indent_blankline_filetype_exclude\1\2\0\0\rterminal%indent_blankline_buftype_exclude\6g\bvim\0", "config", "indent-blankline.nvim")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lualine\frequire\0", "config", "lualine.nvim")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0", "config", "nvim-treesitter")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rlsp.init\frequire\0", "config", "nvim-lspconfig")
-- Config for: onedark.vim
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.onedark\frequire\0", "config", "onedark.vim")
-- Config for: vim-fugitive
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.fugitive\frequire\0", "config", "vim-fugitive")
-- Config for: nvim-bufbar
try_loadstring("\27LJ\2\nf\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15show_flags\1\17show_bufname\fvisible\rcounters\1\nsetup\vbufbar\frequire\0", "config", "nvim-bufbar")
-- Config for: vim-test
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.vim_test\frequire\0", "config", "vim-test")
-- Config for: vim-polyglot
try_loadstring("\27LJ\2\n表1\0\0\2\0\a\0\0176\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1鐔3=\1\6\0K\0\1\0\fcsv_end\14csv_start\23csv_strict_columns\1\2\0\0\rsensible\22polyglot_disabled\6g\bvim\0", "config", "vim-polyglot")
-- Config for: nvim-bufdel
try_loadstring("\27LJ\2\nF\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tnext\ncycle\nsetup\vbufdel\frequire\0", "config", "nvim-bufdel")
-- Config for: fzf.vim
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugins.fzf\frequire\0", "config", "fzf.vim")
-- Config for: nvim-colorizer.lua
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
-- Config for: nvim-tree.lua
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.nvim_tree\frequire\0", "config", "nvim-tree.lua")
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'emmet-vim'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'emmet-vim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'emmet-vim'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'emmet-vim'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType eruby ++once lua require("packer.load")({'emmet-vim'}, { ft = "eruby" }, _G.packer_plugins)]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
