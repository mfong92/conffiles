" Use Vim settings, rather then Vi settings (much better!). This must be
" first, because it changes other options as a side effect.
set nocompatible

colorscheme bombat

filetype plugin on
filetype indent on

" Status/searching
set ls=2         " Always have status bar
set ruler        " Show cursor position
set scrolloff=4  " Display 4 lines when scrolling
set hlsearch     " Highlight searches
set incsearch    " Incremental searches
set ignorecase   " Ignore case when searching

" Tabbing/indentation
set tabstop=2     " Tab characters are displayed as 2 spaces
set shiftwidth=2  " Shift (<</>>) indents by 2 spaces
set expandtab     " Pressing tab inserts spaces
set smarttab      " Smart tabbing
set shiftround    " Round tabbing to shiftwidth
set autoindent    " Automatically indent

" Line numbers
set number         " Show line numbers
set numberwidth=4  " Use four characters

" Allow for shady usage of shift
command WQ wq
command Wq wq
command W w
command Q q

" Error handling
set cc=77               " Color columns > 77 letters
match ErrorMsg '\s\+$'  " Match trailing whitespace as an error

" General
set t_Co=256                   " Use 256 colors
set foldlevel=1                " Turn off folding
set wildmode=longest,list      " Use normal bash-like tab complete
set textwidth=76               " Maximum text width
set backspace=eol,indent,start " Allow backspacing in insert mode
set showmatch                  " Match parens
set matchtime=500              " Match for half a second
set mouse=a                    " Use the mouse correctly
set writebackup                " Make a backup before overwriting
set t_kb=                    " Fix backspaces
set t_kD=[3~
set viminfo='20,\"500
syntax on                      " Syntax highlighting

" File types
au FileType make set noexpandtab  " No spaces for Makefiles
au FileType conf syn region confBraces start="{" end="}" transparent fold  " Fold conf files

" Map s to insert one character
 function! RepeatChar(char, count)
   return repeat(a:char, a:count)
 endfunction
 nnoremap s :<C-U>exec "normal i".RepeatChar(nr2char(getchar()), v:count1)<CR>
 nnoremap S :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>

" Map C-t to open a new tab
map <C-t> <ESC>:tabnew

" Map Spellcheck to turn on spellcheck
command Spellcheck setlocal spell spelllang=en_us

