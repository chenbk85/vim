set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'maciakl/vim-neatstatus'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on


"lo basico
runtime! debian.vim
if has("syntax")
   syntax on
endif

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

"muestra 5 lineas arriba y abajo
set scrolloff=5

"muestra 5 columnas a izq. y derecha
set sidescrolloff=5

"define el "tab" a 4 caracteres
set shiftwidth=4
set softtabstop=4

"busqueda a medida que escribes
set incsearch

"Habilita la deteccion de tipos de archivos
filetype on
filetype indent on
filetype plugin on

"hightlights
set cul
set cursorline
hi StatusLine ctermbg=none ctermfg=grey

"vim-airline
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

"deshabilita cualquier tipo de sonido de error
set noerrorbells
set visualbell
set t_vb=

set backspace=indent,eol,start

autocmd VimEnter * NERDTree
let g:NERDTreeDirArrows=1
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

"gundo
nnoremap <F5> :GundoToggle<CR>

"Powerline
let g:Powerline_symbols = 'fancy'

"Markdown syntax
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Neat status
let g:NeatStatusLine_color_insert = 'guifg=#ffffff guibg=#ff0000 gui=bold ctermfg=15 ctermbg=9 cterm=bold'

" Go Syntax
au BufRead,BufNewFile *.go set filetype=go

" JSON format
map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>
