set nocompatible
filetype on
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'python.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'othree/html5.vim'
Plugin 'leshill/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'HTML-AutoCloseTag'

" The bundles you install will be listed here

filetype plugin indent on

autocmd FileType xhtml,html set shiftwidth=2 softtabstop=2 tabstop=2

map <F2> :NERDTreeToggle<CR>

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set number

let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Teste com statusline
set wildmode=longest,list,full
set wildmenu
