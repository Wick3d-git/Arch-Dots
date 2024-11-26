vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set breakindent")
vim.cmd("set hlsearch")
vim.cmd("set incsearch")
vim.cmd("set wrap")
vim.cmd("set mouse=a")
vim.cmd("set noshowmode")
vim.cmd("set cursorline")
vim.cmd("set termguicolors")
vim.cmd("set splitbelow")
vim.cmd("set splitright")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set updatetime=50")
vim.cmd("set noswapfile")
vim.cmd("set nobackup")
vim.cmd("set noundofile")
vim.cmd("set foldcolumn=0")
vim.cmd("set foldlevel=99")
vim.cmd("set foldlevelstart=99")
vim.cmd("set foldenable")
vim.cmd("set scrolloff=8")
vim.opt.completeopt = {"menuone", "noselect", "noinsert"}