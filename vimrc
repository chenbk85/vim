set nocompatible
filetype off
set noshowmode
runtime! debian.vim

set rtp+=/home/boris/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"Plugin 'gmarik/vundle'
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
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'dracula/vim'
"Plugin 'sheerun/vim-polyglot'
Plugin 'fatih/vim-hclfmt'
Plugin 'hashivim/vim-vaultproject'
Plugin 'arcticicestudio/nord-vim'

call vundle#end()
filetype plugin indent on

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"lo basico
set encoding=utf-8 nobomb
if has("syntax")
   syntax on
endif

let g:solarized_termcolors=16
set t_Co=256
set mouse=a
set ai
set hlsearch
set showmatch
set ignorecase
set smartcase
set ruler
set number
set title
set textwidth=80
set formatoptions-=t

" Cambia en font en GUI
if has('gui_running')
  set background=dark
  set guifont=Meslo\ LG\ S\ for\ Powerline\ Regular\ 10
  colorscheme dracula
  map <C-q> :NERDTreeToggle<CR>
  set guioptions=-M
else
  set background=dark
  "colorscheme gruvbox
  "colorscheme dracula
  colorscheme nord
endif

"muestra 5 lineas arriba y abajo
set scrolloff=5

"muestra 5 columnas a izq. y derecha
set sidescrolloff=5

"define el "tab" a 4 espacios
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
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\.swp$']
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"
set guioptions-=r
set guioptions-=L
set swapfile
set dir=/tmp

"Powerline
let g:Powerline_symbols = 'fancy'

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
let g:airline_theme='nord'
"" Move between buffers
map <C-l> :bn<CR>
map <C-h> :bp<CR>

" CtrlP
let g:ctrlp_working_path_mode = 'c'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_show_hidden = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_temp_file=1
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

" HCL
let g:hcl_fmt_autosave = 0
let g:tf_fmt_autosave = 0
let g:nomad_fmt_autosave = 0

" Nord config
let g:nord_comment_brightness = 15
let g:nord_italic = 1
let g:nord_italic_comments = 1

" YAML syntax
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Invisibles
"set list
"set listchars=eol:¬,space:·,trail:~,extends:>,precedes:<
"highlight WhiteSpaceBol guifg=red
"highlight WhiteSpaceMol guifg=white
"match WhiteSpaceMol / /
"2match WhiteSpaceBol /^ \+/
