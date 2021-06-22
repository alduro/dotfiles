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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/alduro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["ctrlsf.vim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugins.ctrlsf\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/ctrlsf.vim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/opt/emmet-vim"
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
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
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
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.night_owl\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/night-owl.vim"
  },
  ["nvim-bufbar"] = {
    config = { "\27LJ\2\nf\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\17show_bufname\fvisible\rcounters\1\15show_flags\1\nsetup\vbufbar\frequire\0" },
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
  ["nvim-hardline"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/nvim-hardline"
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
  onebuddy = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/onebuddy"
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
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/trouble.nvim"
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
    config = { "\27LJ\2\n｣\1\0\0\6\0\n\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0B\1\4\1\18\1\0\0'\3\3\0'\4\6\0'\5\a\0B\1\4\1\18\1\0\0'\3\3\0'\4\b\0'\5\t\0B\1\4\1K\0\1\0\f:AS<cr>\15<leader>as\r:AV <cr>\15<leader>av\v:A<cr>\14<leader>a\6n\bmap\nutils\frequire\0" },
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rescript"] = {
    loaded = true,
    path = "/Users/alduro/.local/share/nvim/site/pack/packer/start/vim-rescript"
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

time("Defining packer_plugins", false)
-- Config for: nvim-tree.lua
time("Config for nvim-tree.lua", true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.nvim_tree\frequire\0", "config", "nvim-tree.lua")
time("Config for nvim-tree.lua", false)
-- Config for: trouble.nvim
time("Config for trouble.nvim", true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time("Config for trouble.nvim", false)
-- Config for: vim-fugitive
time("Config for vim-fugitive", true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.fugitive\frequire\0", "config", "vim-fugitive")
time("Config for vim-fugitive", false)
-- Config for: nvim-lspconfig
time("Config for nvim-lspconfig", true)
try_loadstring("\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rlsp.init\frequire\0", "config", "nvim-lspconfig")
time("Config for nvim-lspconfig", false)
-- Config for: nvim-bufdel
time("Config for nvim-bufdel", true)
try_loadstring("\27LJ\2\nF\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tnext\ncycle\nsetup\vbufdel\frequire\0", "config", "nvim-bufdel")
time("Config for nvim-bufdel", false)
-- Config for: vim-test
time("Config for vim-test", true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.vim_test\frequire\0", "config", "vim-test")
time("Config for vim-test", false)
-- Config for: vim-polyglot
time("Config for vim-polyglot", true)
try_loadstring("\27LJ\2\n表1\0\0\2\0\a\0\0176\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\1\0)\1鐔3=\1\6\0K\0\1\0\fcsv_end\14csv_start\23csv_strict_columns\1\2\0\0\rsensible\22polyglot_disabled\6g\bvim\0", "config", "vim-polyglot")
time("Config for vim-polyglot", false)
-- Config for: lualine.nvim
time("Config for lualine.nvim", true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lualine\frequire\0", "config", "lualine.nvim")
time("Config for lualine.nvim", false)
-- Config for: ctrlsf.vim
time("Config for ctrlsf.vim", true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugins.ctrlsf\frequire\0", "config", "ctrlsf.vim")
time("Config for ctrlsf.vim", false)
-- Config for: nvim-bufbar
time("Config for nvim-bufbar", true)
try_loadstring("\27LJ\2\nf\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\17show_bufname\fvisible\rcounters\1\15show_flags\1\nsetup\vbufbar\frequire\0", "config", "nvim-bufbar")
time("Config for nvim-bufbar", false)
-- Config for: indent-blankline.nvim
time("Config for indent-blankline.nvim", true)
try_loadstring("\27LJ\2\n申2\0\0\2\0\f\0\0216\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\0\0009\0\t\0'\1\v\0=\1\n\0K\0\1\0\n99999\16colorcolumn\awo$indent_blankline_use_treesitter\b笆十26indent_blankline_char\1\3\0\0\thelp\vpacker&indent_blankline_filetype_exclude\1\2\0\0\rterminal%indent_blankline_buftype_exclude\6g\bvim\0", "config", "indent-blankline.nvim")
time("Config for indent-blankline.nvim", false)
-- Config for: telescope.nvim
time("Config for telescope.nvim", true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0", "config", "telescope.nvim")
time("Config for telescope.nvim", false)
-- Config for: vim-rails
time("Config for vim-rails", true)
try_loadstring("\27LJ\2\n｣\1\0\0\6\0\n\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0B\1\4\1\18\1\0\0'\3\3\0'\4\6\0'\5\a\0B\1\4\1\18\1\0\0'\3\3\0'\4\b\0'\5\t\0B\1\4\1K\0\1\0\f:AS<cr>\15<leader>as\r:AV <cr>\15<leader>av\v:A<cr>\14<leader>a\6n\bmap\nutils\frequire\0", "config", "vim-rails")
time("Config for vim-rails", false)
-- Config for: nvim-treesitter
time("Config for nvim-treesitter", true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0", "config", "nvim-treesitter")
time("Config for nvim-treesitter", false)
-- Config for: nvim-colorizer.lua
time("Config for nvim-colorizer.lua", true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time("Config for nvim-colorizer.lua", false)
-- Config for: nvim-bufferline.lua
time("Config for nvim-bufferline.lua", true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time("Config for nvim-bufferline.lua", false)
-- Config for: night-owl.vim
time("Config for night-owl.vim", true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.night_owl\frequire\0", "config", "night-owl.vim")
time("Config for night-owl.vim", false)
-- Config for: gitsigns.nvim
time("Config for gitsigns.nvim", true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time("Config for gitsigns.nvim", false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time("Defining lazy-load filetype autocommands", true)
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'emmet-vim'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'emmet-vim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'emmet-vim'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'emmet-vim'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType eruby ++once lua require("packer.load")({'emmet-vim'}, { ft = "eruby" }, _G.packer_plugins)]]
time("Defining lazy-load filetype autocommands", false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
