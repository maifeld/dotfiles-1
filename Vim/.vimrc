" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" set the run time path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Some basic settings everyone should have
Plugin 'tpope/vim-sensible'

" Handle surround character, i.e. ''
" example: cs '"
Plugin 'tpope/vim-surround'
" Following plugin allows you to use '.' with surround
Plugin 'tpope/vim-repeat'

" Fuzzy Finder for dir
Plugin 'ctrlpvim/ctrlp.vim'

" Distraction free writing
Plugin 'junegunn/goyo.vim'
"
" A pretty statusline, bufferline integration
Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-bufferline'

Plugin 'easymotion/vim-easymotion'

""" GIT
" Git wrapper inside Vim
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dhruvasagar/vim-table-mode'

" UNIX shell command helpers, e.g. sudo, chmod, remove etc.
Plugin 'tpope/vim-eunuch'

" Glorious colorscheme
Plugin 'nanotech/jellybeans.vim'
" Plugin 'sjl/badwolf'

" Snippets like textmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'

" Super easy commenting, toggle comments etc
" example: <leader> cc to comment or <leader> cu to uncomment
Plugin 'scrooloose/nerdcommenter'

" Lint Checker
Plugin 'scrooloose/syntastic'


" A fancy start screen, shows MRU etc.
Plugin 'mhinz/vim-startify'

"File Tree
Plugin 'scrooloose/nerdtree'

" vim-orgmode and dependencies
Plugin 'vim-scripts/utl.vim'
Plugin 'vim-scripts/SyntaxRange'
Plugin 'jceb/vim-orgmode'


Plugin 'valloric/youcompleteme'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" " All of your Plugins must be added before the following line
call vundle#end()            " required


" For plugins to load correctly
filetype plugin indent on

" vim-indent-guides so that they are as thin as possible
" let g:indent_guides_guide_size = 1
" let g:indent_guides_color_change_percent = 3
"let g:indent_guides_enable_on_vim_startup = 1

" I am not satisfied with the lint settings yet.
" lint checker settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

" change the leader key
let mapleader = ","

imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" Youcomplete me, close preview box after you select
" chosen functioin.
let g:ycm_autoclose_preview_window_after_completion = 0

" Security
set modelines=0

" Show line numbers
set rnu

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Cursor motion
" I need to check if I still need this because of
" vim-sensible
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Navigate splits like a normal person
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Indention
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Searching
nnoremap / /\v
vnoremap / /\v
set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>


" Formatting
map <leader>q gqip

" Visualize tabs and newlines
" set listchars=tab:
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR>  


" Color scheme (terminal)
" Not sure if I like this one. 
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
set t_Co=256
set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
colorscheme jellybeans 
hi IndentGuidesEven ctermbg=black

" Comments
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" Spell Check
set spell spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=underline
