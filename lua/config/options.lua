
local options = {


    -- linenumbers etc
	number = true, --numbering lines
	scrolloff = 10,
	relativenumber = true, --toggle bound to leader nn
	numberwidth = 4,
	ruler = false, --disable extra numbering
	cursorline = true, --highlight line
	ttyfast = true, --faster scrolling
	smoothscroll = true,
	termguicolors = true,
	title = true, --automatic window titlebar


    -- etc 
	showmode = false, --not needed due to lualine
	showcmd = false,
    laststatus = 3,
	-- wrap = false, --toggle bound to leader W
    mouse = "a", --enable mouse
	foldmethod = "expr",
	foldlevel = 99, --disable folding, lower #s enable
	foldexpr = "nvim_treesitter#foldexpr()",
	ignorecase = true, --ignore case while searching
	smartcase = true, --but do not ignore if caps are used
	conceallevel = 2, --markdown conceal
	concealcursor = "nc",
	splitkeep = 'screen', --stablizie window open/close
    

    -- clipboard, backup and undo
	clipboard = "unnamedplus", --system clipboard integration
	history = 100, --command line history
	swapfile = false, --swap just gets in the way, usually
	backup = false,
	writebackup = false,
	undofile = true, --undos are saved to file
	undodir = vim.fn.expand("lua/undo"),


    -- indentation
	smarttab = true,
	-- cindent = true,
	autoindent = true,
	smartindent = true,
	tabstop = 4, --visual width of tab
    shiftwidth = 4,
    expandtab = true,

	
    -- cursor from radleylewis/nvim-lite
    guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false, })
