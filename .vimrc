""""""""""""""""""""""""""""""""""""""""""""
" NS Vimrc configuration
""""""""""""""""""""""""""""""""""""""""""""
syntax on

set noswapfile
set visualbell
set nocompatible
set nowrap
set nobackup
set nowritebackup
set fileencoding=utf8
set langmenu=cp949
set guifont=Gulimche:h12:cHANGEUL
set number
set ruler
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set laststatus=2  "Always display the status line
set cursorline "Enable highlighting of the current line
set ic "ignore case
set scs "smartcase
set foldmethod=indent
set foldmarker={{{,}}}
set foldnestmax=10
set nofoldenable
set foldlevel=2

"""START Vundle
filetype off   " Disable file type for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'vim-syntastic/syntastic'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'ervandew/supertab'
Plugin 'Bufonly.vim'

Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'ajh17/Spacegray.vim'

"OSX stupid backspace fix
set backspace=indent,eol,start

call vundle#end()            " required
filetype plugin indent on    " required
"""END Vundle Configuration 

"Enable Elite mode. no arrows
let g:elite_mode=1

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }

"Theme and Styling
set t_Co=256
set background=dark
if (has("termguicolors"))
  set termguicolors
endif
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme spacegray
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
"map <C-t> :TagbarToggle<CR>

"map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
":nnoremap gR :grep "\<<cword>\>" *<CR>
":nnoremap GR :grep "\<<cword>\>" %:p:h/*<CR>
nmap <F3> :grep -R -F --include=*.[ch] "<C-R>=expand("<cword>")<CR>" .
":nmap <F3> :vimgrep /<C-R><C-W>/ *<CR>
"
" Shortcuts
let mapleader = "," "Leader is originally '\(back slash)' but I changed it to ',(comma)'
nnoremap <Leader>F :Files<CR>
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **/*.c" <Bar> cw<CR>
