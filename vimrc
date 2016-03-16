set nocompatible
filetype off
set noshowmode

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"lo basico
set encoding=utf-8 nobomb
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
set title
set textwidth=80
set formatoptions+=t

" Cambia en font en GUI
if has('gui_running')
  "set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h12
  set guifont=Source\ Code\ Pro:h12
  colorscheme codeschool
  map <C-q> :NERDTreeToggle<CR>
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

" NERDTree
"autocmd VimEnter * NERDTree
map <F2> :NERDTreeToggle<CR> # Toggle NerdTree with F2 on CLI
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\.swp$']
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
set guioptions-=r
set guioptions-=L

"Powerline
"let g:Powerline_symbols = 'fancy'

" Go Syntax
au BufRead,BufNewFile *.go set filetype=go

" ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" JSON format
map <leader>jj <Esc>:%!python -m json.tool<CR>

" Airline
"set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
"" Move between buffers
map <C-l> :bn<CR>
map <C-h> :bp<CR>

" CtrlP
let g:ctrlp_working_path_mode = 'c'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_show_hidden = 1

