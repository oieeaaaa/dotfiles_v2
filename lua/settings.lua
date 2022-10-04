HOME = os.getenv("HOME")

-- global settings
vim.g.mapleader = ' ' -- space

-- having trouble? https://github.com/neovim/neovim/issues/19204
-- Only enable on windows subsystems
if vim.fn.has("wsl") then
  vim.g.clipboard = {
    name = 'win32yank-wsl',
    copy = {
      ["+"] = 'win32yank.exe -i --crlf',
      ["*"] = 'win32yank.exe -i --crlf',
    },
    paste = {
      ["+"] = 'win32yank.exe -o --lf',
      ["*"] = 'win32yank.exe -o --lf',
    },
    cache_enabled = 0,
  }
end

-- basic settings
vim.o.encoding = "utf-8"
vim.o.backspace = "indent,eol,start" -- backspace works on every char in insert mode
vim.o.completeopt = 'menuone,noselect'
vim.o.history = 1000
vim.o.clipboard = 'unnamedplus' -- always use clibboard on all operations

-- Mapping waiting time
vim.o.timeout = false
vim.o.ttimeoutlen = 100

-- Display
vim.o.showmatch  = true -- show matching brackets
vim.o.scrolloff = 3 -- always show 3 rows from edge of the screen
vim.o.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vim.o.laststatus = 2 -- always show status line
vim.o.colorcolumn = "80" -- will display the max character length guide

vim.o.list = false -- do not display white characters
vim.o.foldenable = false
vim.o.foldlevel = 4 -- limit folding to 4 levels
vim.o.foldmethod = 'syntax' -- use language syntax to generate folds
vim.o.wrap = false --do not wrap lines even if very long
vim.o.eol = false -- show if there's no eol char
vim.o.showbreak= '↪' -- character to show when line is broken
vim.o.splitbelow = true -- when splitting horizontally, move coursor to lower pane
vim.o.splitright = true -- when splitting vertically, mnove coursor to right pane

-- Sidebar
vim.o.number = true -- line number on the left
vim.o.relativenumber = true -- show relative number on the left
vim.o.numberwidth = 3 -- always reserve 3 spaces for line number
vim.o.signcolumn = 'yes' -- keep 1 column for coc.vim  check
vim.o.modelines = 0
vim.o.showcmd = true -- display command in bottom bar

-- Search
vim.o.incsearch = true -- starts searching as soon as typing, without enter needed
vim.o.ignorecase = true -- ignore letter case when searching
vim.o.smartcase = true -- case insentive unless capitals used in search

vim.o.matchtime = 2 -- delay before showing matching paren
vim.o.mps = vim.o.mps .. ",<:>"

-- White characters
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 2 -- 1 tab = 2 spaces
vim.o.shiftwidth = 2 -- indentation rule
vim.o.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.o.expandtab = true -- expand tab to spaces

-- Backup files
vim.o.backup = false -- don't use backup files
vim.o.swapfile = false -- do not use swap file
vim.o.undodir = HOME .. '/.vim/undodir//' -- undo files

-- Commands mode
vim.o.wildmenu = true -- on TAB, complete options for system command
vim.o.wildignore = 'deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc'

-- Only show cursorline in the current window and in normal mode.
vim.cmd([[
  augroup cline
      au!
      au WinLeave * set nocursorline
      au WinEnter * set cursorline
      au InsertEnter * set nocursorline
      au InsertLeave * set cursorline
  augroup END
]])

-- Color scheme, baby!
vim.cmd('colorscheme gruvbox')

