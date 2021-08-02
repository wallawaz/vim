" Pathogen load
" filetype off
" execute pathogen#infect()
" execute pathogen#helptags()
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tyru/current-func-info.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'beloglazov/vim-online-thesaurus'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'chrisbra/csv.vim'
Bundle 'Blackrush/vim-gocode'
Bundle 'shmup/vim-sql-syntax'
"Plugin 'Valloric/YouCompleteMe'

" let Vundle manage Vundle ...
"Plugin 'gmarik/Vundle.vim'

"Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ctrlpvim/ctrlp'

" Other plugins where..
call vundle#end()
filetype plugin indent on

nnoremap <C-g>f :echo cfi#format("%s", "")<CR>

set syn=auto

" vmap <C-c> "+y
set clipboard=unnamedplus
" vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
colorscheme slate
set list listchars=tab:>-
set pastetoggle=<F2>

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufRead,BufNewFile *.sql
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

set encoding=utf-8
set fileencoding=utf-8
let python_highlight_all=1
syntax enable
set nu

autocmd FileType html setlocal expandtab shiftwidth=4 tabstop=4
" autocmd FileType js setlocal expandtab shiftwidth=2 tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

" folding
set foldmethod=marker
set foldlevelstart=1
set foldlevel=99
set laststatus=2
set nowrap
set foldmarker={{{,}}}

imap <F6> with open("/home/bwallad/tmp/query", "w+") as fp: fp.write(meta.compile_statement(

" WindowsTerminal workaround for VisualBlockMode
set vb t_vb=

" What was this one again???
" nnoremap q <c-v>


" Disable beep and Flash...
set noeb

" Highlight search results
set hlsearch
