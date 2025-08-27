-- syltens fork of breadonpenguins nvim config edited to my liking
-- with hints of radleylewis nvim-lite config


-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']


vim.g.start_time = vim.fn.reltime()
vim.loader.enable() --  SPEEEEEEEEEEED 
vim.call('plug#begin')

Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) --colorscheme
Plug('ellisonleao/gruvbox.nvim', { ['as'] = 'gruvbox' }) --colorscheme 2
Plug('nvim-tree/nvim-web-devicons') --pretty icons
Plug('folke/which-key.nvim') --mappings popup
Plug('romgrk/barbar.nvim') --bufferline
Plug('nvim-treesitter/nvim-treesitter') --improved syntax
Plug('mfussenegger/nvim-lint') --async linter
Plug('nvim-tree/nvim-tree.lua') --file explorer
Plug('norcalli/nvim-colorizer.lua') --color highlight
Plug('ibhagwan/fzf-lua') --fuzzy finder and grep
Plug('numToStr/FTerm.nvim') --floating terminal
Plug('MeanderingProgrammer/render-markdown.nvim') --render md inline
Plug('folke/twilight.nvim') --surrounding dim
Plug('numToStr/Comment.nvim') --easier comments
Plug('nvim-lualine/lualine.nvim') --statusline
-- Plug('uZer/pywal16.nvim', { [ 'as' ] = 'pywal16' }) --or, pywal colorscheme
-- Plug('goolord/alpha-nvim') --pretty startup
-- Plug('ron-rs/ron.vim') --ron syntax highlighting
-- Plug('windwp/nvim-autopairs') --autopairs 
-- Plug('lewis6991/gitsigns.nvim') --git
-- Plug('emmanueltouzery/decisive.nvim') --view csv files

vim.call('plug#end')

-- move config and plugin config to alternate files
require("config.theme")
require("config.mappings")
require("config.options")
require("config.autocmd")
require("plugins.colorizer")
require("plugins.colorscheme")
require("plugins.fterm")
require("plugins.fzf-lua")
require("plugins.nvim-lint")
require("plugins.nvim-tree")
require("plugins.render-markdown")
require("plugins.treesitter")
require("plugins.twilight")
require("plugins.which-key")
require("plugins.barbar")
require("plugins.comment")
require("plugins.lualine")
-- require("plugins.alpha")
-- require("plugins.gitsigns")
-- require("plugins.autopairs")

load_theme()
