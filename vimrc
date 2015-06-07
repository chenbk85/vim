set nocompatible
filetype off
set noshowmode

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Bling/vim-airline'
Plugin 'cohama/lexima.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()

"filetype plugin indent on
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"lo basico
set encoding=utf-8
runtime! debian.vim
if has("syntax")
   syntax on
endif

"Primary colors
"set t_Co=256
"colorscheme primary

colorscheme solarized
set mouse=a
set background=dark
set ai
set hlsearch
set showmatch
set ignorecase
set smartcase
set ruler
set number
set title
set textwidth=80
set formatoptions+=t


" Cambia en font en GUI
if has('gui_running')
  "set guifont=Meslo_LG_M_DZ_Regular_for_Powerline:h11
  set guifont=Source\ Code\ Pro:h12
  colorscheme codeschool
endif

"muestra 5 lineas arriba y abajo
set scrolloff=5

"muestra 5 columnas a izq. y derecha
set sidescrolloff=5

"define el "tab" a 4 caracteres
set shiftwidth=2
set softtabstop=2

"busqueda a medida que escribes
set incsearch

"Habilita la deteccion de tipos de archivos
filetype on
filetype indent on
filetype plugin on

"hightlights
set cul
set cursorline
highlight CursorLine term=underline guibg=#3b3b3b
hi StatusLine ctermbg=blue ctermfg=grey
set colorcolumn=80,81

"deshabilita cualquier tipo de sonido de error
set noerrorbells
set visualbell
set t_vb=

set backspace=indent,eol,start

autocmd VimEnter * NERDTree
let g:NERDTreeDirArrows=1
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\.swp$']

"Powerline
let g:Powerline_symbols = 'fancy'

" Go Syntax
au BufRead,BufNewFile *.go set filetype=go

" ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" JSON format
map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>
