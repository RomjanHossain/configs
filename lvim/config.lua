-- THESE ARE EXAMPLE ClvimNFIGS FEEL FREE Tlvim CHANGE Tlvim WHATEVER YlvimU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
--lvim.colorscheme = "spacegray"
vim.wo.relativenumber = true
-- lvim.builtin.compe.autocomplete = true
lvim.transparent_window = true
-- keymappings [view all the defaults by pressing <leader>Lk]
-- add your own keymapping
lvim.lsp.diagnostics.virtual_text = false
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- hover doc in flutter
lvim.keys.normal_mode["gk"] = "<cmd> Lspsaga hover_doc<CR>"
lvim.keys.normal_mode["gs"] = "<cmd> Lspsaga signature_help<CR>"
lvim.keys.normal_mode["gd"] = "<cmd> Lspsaga preview_definition<CR>"
-- augroup neovim_terminal
    -- autocmd!
    -- " Enter Terminal-mode (insert) automatically
    -- autocmd Termlvimpen * startinsert
    -- " Disables number lines on terminal buffers
-- -    autocmd Termlvimpen * :set nonumber norelativenumber
   -- * :setlocal nonumber norelativenumber
    -- " allows you to use Ctrl-c on terminal window
    -- autocmd Termlvimpen * nnoremap <buffer> <C-c> i<C-c>
-- augroup END


-- keymappings
lvim.leader = "space"
-- overwrite the key-mappings provided by LunarVim for any mode, or leave it empty to keep them
-- lvim.keys.normal_mode = {
--   Page down/up
--   {'[d', '<PageUp>'},
--   {']d', '<PageDown>'},
--
--   Navigate buffers
--   {'<Tab>', ':bnext<CR>'},
--   {'<S-Tab>', ':bprevious<CR>'},
-- }
-- if you just want to augment the existing ones then use the utility function
-- require("utils").add_keymap_insert_mode({ silent = true }, {
-- { "<C-s>", ":w<cr>" },
-- { "<C-c>", "<ESC>" },
-- })
-- you can also use the native vim way directly
-- vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", { noremap = true, silent = true, expr = true })

-- TlvimDlvim: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = 'maintained'
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- Additional Plugins
lvim.plugins = {
    -- {"folke/tokyonight.nvim"}, {
    --     "ray-x/lsp_signature.nvim",
    --     config = function() require"lsp_signature".on_attach() end,
    --     event = "InsertEnter"
    -- },
-- {
--   'wfxr/minimap.vim',
--   run = "cargo install --locked code-minimap",
--   -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
--   config = function ()
--     vim.cmd ("let g:minimap_width = 10")
--     vim.cmd ("let g:minimap_auto_start = 1")
--     vim.cmd ("let g:minimap_auto_start_win_enter = 1")
--   end,
-- },

-- {
--   "karb94/neoscroll.nvim",
--   event = "WinScrolled",
--   config = function()
--   require('neoscroll').setup({
--         -- All these keys will be mapped to their corresponding default scrolling animation
--         mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
--         '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
--         hide_cursor = true,          -- Hide cursor while scrolling
--         stop_eof = true,             -- Stop at <EOF> when scrolling downwards
--         use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
--         respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
--         cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
--         easing_function = nil,        -- Default easing function
--         pre_hook = nil,              -- Function to run before the scrolling animation starts
--         post_hook = nil,              -- Function to run after the scrolling animation ends
--         })
--   end
-- },
  {
'Neevash/awesome-flutter-snippets',
  },
  {
    'felangel/bloc'
  },
  {
'glepnir/lspsaga.nvim',
},

{
    'SirVer/ultisnips'
  },
{
    'mlaursen/vim-react-snippets'
  },
{
    'akinsho/flutter-tools.nvim',
    config=function ()
    require("flutter-tools").setup{} -- use defaults
    end

},


},


-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

-- Additional Leader bindings for WhichKey

-- lvim.lang.dart.sdk_path = '/Users/pxsanghyo/.flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot'
-- lvim.lang.dart.flutter_tools.active = true
-- me comment
lvim.lang.dart.autoformat == true
lvim.builtin.which_key.mappings["F"] = {
      name = "Flutter",
      c = { ":FlutterCopyProfilerUrl<CR>", "Copy Profile Url" },
      d = { ":FlutterDevices<CR>", "Devices" },
      D = { ":FlutterDevTools<CR>", "Dev Tools" },
      e = { ":FlutterEmulators<CR>", "Emulators" },
      h = { ":FlutterReload<CR>", "Reload" },
      H = { ":FlutterRestart<CR>", "Restart" },
      l = { ":FlutterLogClear<CR>", "Log Clear" },
      o = { ":Flutterlvimutline<CR>", "lvimutline" },
      p = { ":FlutterPubGet<CR>", "Pub Get" },
      q = { ":FlutterQuit<CR>", "Quit" },
      r = { ":FlutterRun<CR>", "Run" },
      v = { ":FlutterVisualDebug<CR>", "Visual Debug" },

}


-- for python
-- me comment
-- lvim.lang.python.formatters = { { exe = "black" } }
-- me comment
-- lvim.lang.python.linters = { { exe = "flake8" } }

lvim.builtin.treesitter.indent = { enable = true, disable = { "yaml", "python" } } -- treesitter is buggy :(
-- bash check
lvim.lang.sh.linters = { { exe = "shellcheck" } }
lvim.lsp.automatic_servers_installation = true

-- format setup in new config

local formatters = require "lvim.lsp.null-ls.formatters"

local linterss = require "lvim.lsp.null-ls.linters"

linterss.setup{
  {exe="flake8",
    filetypes={
      "python"
    }
  }
}

formatters.setup {
  { exe = "black" },
  {
    exe = "prettier",
    args = { "--print-with", "100" },
    filetypes = {
      "typescript",
      "typescriptreact",
      "javascript",
      -- "javascriptreact",
      "html",
      "css",
      "scss",
    },
  },
  -- {
  --   exe="eslint",
  --   filetypes={
  --     "javascript"
  --   }
  -- },
}

-- lsp saga config shit
local saga = require 'lspsaga'
-- saga.init_lsp_saga()
