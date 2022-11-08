augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter, * match TrailingSpaces /\s\+$/
augroup END
execute pathogen#infect()
execute pathogen#helptags()
set nocompatible
syntax on
syntax enable
filetype on
set laststatus=2 " Always show the statusline "
set encoding=utf-8 " Necessary to show Unicode glyphs "
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'



let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_loc_list = 1
let g:netrw_liststyle = 6

Bundle 'hashivim/vim-terraform'
Bundle 'godlygeek/tabular'

Plugin 'vim-python/python-syntax'
Plugin 'octol/vim-cpp-enhanced-highlight'

call plug#begin()
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'joshdick/onedark.vim'
  Plug 'sickill/vim-monokai'
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'yuezk/vim-js'
  Plug 'tpope/vim-surround'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'jiangmiao/auto-pairs'
  Plug 'uiiaoo/java-syntax.vim'
  Plug 'itchyny/lightline.vim'
call plug#end()

set termguicolors
let g:tokyonight_style = 'night' "available: night, storm
let g:tokyonight_enable_italic = 0
let g:tokyonight_disable_italic_comment = 1
let g:tokyonight_transparent_background = 1
let g:lightline = {'colorscheme' : 'tokyonight'}

let g:python_highlight_all = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:go_info_mode='gocode'
let g:terraform_align=1
filetype plugin indent on
set t_Co=256
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent
set number
set cursorline!
set cursorcolumn
"set colorcolumn=80
set hlsearch
set noswapfile
set ttyfast
set lazyredraw
set backspace=indent,eol,start
set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
set noerrorbells
set incsearch
colorscheme molokai
"molokai, onedark, monokai, tokyonight
highlight Comment ctermfg=Gray

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
