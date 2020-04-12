
set encoding=utf-8                                 " Required by YouCompleteMe
set rtp+=~/.vim/bundle/Vundle.vim                  " Set the runtime path to include Vundle

" Initialise Vundle

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                      " Vundle should manage itself
Plugin 'eiginn/netrw'                              " Reading/writing/browsing files even over network
Plugin 'tpope/vim-fugitive'                        " Git interface of Tim Pope
Plugin 'jreybert/vimagit'                          " To easily stage hunks/files and commit with Git
Plugin 'rhysd/conflict-marker.vim'                 " Fighting git conflicts
Plugin 'ctrlpvim/ctrlp.vim'                        " Find files, MRU, and buffers, even fuzzily
Plugin 'junegunn/fzf'                              " Plugin to interface the command-line fzf command
Plugin 'junegunn/fzf.vim'                          " Add vim commands to exploit the power of fzf 
Plugin 'vim-airline/vim-airline'                   " To have a colorful status line
Plugin 'vim-airline/vim-airline-themes'            " To choose a specific theme for the status line
Plugin 'airblade/vim-gitgutter'                    " Shows changes in gutter in files tracked by git
Plugin 'ervandew/supertab'                         " Context-aware tab completion
Plugin 'lervag/vimtex'                             " LaTeX plugin
Plugin 'majutsushi/tagbar'                         " Shows a list of tags in a tagbar
Plugin 'chrisbra/csv.vim'                          " Tools to work with comma-separated value files
Plugin 'easymotion/vim-easymotion'                 " Enhances motion throughout the text
Plugin 'Nequo/vim-allomancer'                      " The 'allomancer' color scheme
Plugin 'rakr/vim-one'                              " The 'one' color scheme
Plugin 'mbbill/undotree'                           " To visualize the undo tree
Plugin 'vim-scripts/argtextobj.vim'                " Text object for function arguments
Plugin 'michaeljsmith/vim-indent-object'           " Text object for indented blocks
Plugin 'tpope/vim-surround'                        " To wrap text in brackets, parenthesis, xml-tags, ...
Plugin 'JuliaEditorSupport/julia-vim'              " Julia support, e,g. LaTeX-to-unicode conversion
Plugin 'godlygeek/tabular'                         " Tabularizing text, e.g. on '=' char
Plugin 'ntpeters/vim-better-whitespace'            " Highlight and fix trailing whitespace.
Plugin 'tomtom/tcomment_vim'                       " Easy (un)commenting of code
Plugin 'goerz/jupytext.vim'                        " Edit jupyter notebooks (requires jupytext CLI) 
Plugin 'tommcdo/vim-exchange'                      " Easy text swapping operator
Plugin 'itchyny/vim-cursorword'                    " Underline the 'word' under the cursor  
Plugin 'jpalardy/vim-slime'                        " Communication between vim and a tmux session
Plugin 'christoomey/vim-tmux-navigator'            " To move between Vim panes and tmux splits
Plugin 'uguu-org/vim-matrix-screensaver'           " Follow the white rabbit...

call vundle#end()

colorscheme one                                    " Set the proper color scheme
set background=dark                                " Dark version of the color scheme
set guifont=Andale\ Mono:h13                       " Font and font size

let g:airline_theme='one'                          " Apply the solarized theme to the status line
let g:airline_solarized_bg='dark'                  " Background for the status line

set rtp+=/Users/joris/Bin/fzf/bin/fzf              " Add the location of fzf to the runtimepath

filetype on                                        " Enable filetype recognition
filetype plugin indent on                          " Set automatic indentation for the plugin files
syntax enable                                      " Enable syntax highlighting
set nocompatible                                   " No compatibility with vi
set ttyfast                                        " Faster terminal updates
set number                                         " Line numbering must be on by default
set tabstop=4                                      " Tabs are 4 columns wide
set softtabstop=4                                  " When hitting the <TAB> key, use a tab of 4 columns
set expandtab                                      " Tabs should always be expanded in spaces
set autoindent                                     " Use indentation from previous line for next line
set cindent                                        " C-style auto-indentation
set cinkeys-=0#                                    " Avoid bad indent of # comment lines in Python
set indentkeys-=0#                                 " Avoid bad indent of # comment lines in Python
set shiftwidth=4                                   " Indentation should always be done using 4 spaces
set showmatch                                      " Show matching pairs of brackets
set mat=3                                          " Blink 2 tenths of a second when matching
set incsearch                                      " Incremental search = search starts from 1st char you type
set hlsearch                                       " Highlight search results
set smartcase                                      " Case-insensitive search except when capitals are used
set nobackup                                       " Avoid backups
set confirm                                        " Ask to save changes
set visualbell                                     " Use visual bell instead of beeping
set mouse=a                                        " Enable use of the mouse for all modes
set showcmd                                        " Show information about the current command going on
set nohidden                                       " When closing a tab, remove the buffer
set autoread                                       " Watch for file changes
set autowrite                                      " Automatically save when switching/abandoning a buffer
set report=0                                       " Always report the number of lines that were changed
set scrolloff=10                                   " When scrolling, keep cursor 10 lines from top or bottom
set shortmess+=I                                   " Do not show the intro message at start-up
set laststatus=2                                   " Always show the status line
set nowrap                                         " Don't wrap too long lines
set relativenumber                                 " Line numbering is relative to the current line
set backspace=indent,eol,start                     " Allow backspacing over autoindent, line breaks & start of insert action
set foldmethod=indent                              " Use indentation to decide how to fold
set foldlevel=99                                   " No folding at all when opening a file
set lazyredraw                                     " Don't update the display while executing macros
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣    " List all white space characters. Show with :set list

let mapleader = '\'                                " Use backslash to start custom shortcuts

let g:airline#extensions#tabline#enabled = 1                 " Show a tab bar at the top with buffers
let g:airline#extensions#tabline#left_sep = '| '              " Left separator between buffer names in the tab line
let g:airline#extensions#tabline#left_alt_sep = '|'          " Right separator between buffer names in the tab line
let g:airline#extensions#tabline#formatter = 'unique_tail'   " Only show file names, not path information in the tab line
let g:airline#extensions#default#layout = [['a','b','c'],['x','y','z','error']] " Left & right section in status bar, no warnings.

let g:netrw_banner = 0                             " No banner when showing a folder contents with netrw
let g:netrw_browse_split = 4                       " Netrw opens files in existing window
let g:netrw_liststyle = 3                          " Use a tree style listing
let g:netrw_winsize = 20                           " Let the file list use 20% of the window size

let g:SuperTabDefaultCompletionType = '<C-n>'

let g:vimtex_view_method="skim"                    " Use Skim as the default pdf viewer for LaTeX documents

let g:ctrlp_map = '<c-p>'                          " Activate CtrlP with ^p or with :CtrlP
let g:ctrlp_cmd = 'CtrlPMRU'                       " Use MRU (rather than files) as the default

let g:csv_strict_columns = 1                       " Delimiter cannot appear inside field. Speeds up things.
let g:csv_comment = '#'                            " Lines starting with # are considered comment lines
let g:csv_start = 1                                " Only use lines 1-500 to analyse the file,
let g:csv_end = 500                                "      this speeds up things.

let g:tagbar_width = 31                            " Width of the tagbar
let g:tagbar_compact = 1                           " No short help at top of the tagbar


let g:better_whitespace_enabled=0                  " No highlighting of trailing whitespace by default
let g:strip_whitespace_on_save=0                   " No removing of trailing whitespace by default

let g:slime_target = "tmux"                        " Use tmux instead of screen
let g:slime_paste_file = "$HOME/.slime_paste"      " Temporary file to paste into tmux session
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_python_ipython = 1                     " 



" Configure Easymotion:
"   1) \\w for motion to words  (bi-directional (bd) and over different windows (overwin)).
"   2) \\L for motion to lines  (bi-directional (bd) and over different windows (overwin)).
"   3) \\h for motion on the current line (backward)
"   4) \\l for motion on the current line (forward)
"   5) Vim's search '/' can support <Tab>, <S-Tab> and Easymotion by pressing <CR>
" In addition, Easymotion's default colors hurt my eyes, so I change them.

let g:EasyMotion_smartcase = 1                     " Make easymotion case-insensitive
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
map  <Leader><Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>L <Plug>(easymotion-overwin-line)
map  <Leader><Leader>l <Plug>(easymotion-lineforward)
map  <Leader><Leader>h <Plug>(easymotion-linebackward)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

" In normal mode, use \s to fuzzy-search with fzf in the current file
" There was one other mapping (\swp) that made my \s really slow, because
" vim waits a while to be sure that after \s there is no 'wp' coming. 
" Unmap \swp as I never use it anyway.

nnoremap <leader>s :BLines<cr>
autocmd VimEnter * unmap \swp

":set lcs+=space:⋅                                 " Show each space as a tiny dot. Only for recent enough vim
":set lcs+=tab:‣‣                                  " Show each tab as a triangle. Only for recent enough vim

" Map Ctrl-q to a file/buffer/mru list in which you can scroll and select, use
" the MRU as the default starting point.

map <c-q> :CtrlPMRU<cr>

" In normal mode, define a mapping to cycle through listed buffers

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" In visual mode, use ctrl-c to copy the selection to the clipboard.
" The '<,'>B construct is to copy only the selection instead of the
" entire line (which, strangely, is Vim's default behaviour, no matter
" what you select). The '<,'>B construct works thanks to the vis plugin.

vnoremap <C-c> :'<,'>B write !pbcopy<CR><CR>

" Map shift-enter to insert an empty line in command mode

nmap <S-Enter> o<Esc>

" Map shift-space to insert one space in command mode

nmap <S-Space> i <Esc>

" Map <space> as a shortcut to remove search highlights

map <Space> :noh<cr>

" Return to last edit position when opening files

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Disable the automatically inserting the comment symbol
" E.g. When typing in Python # xxx <cr> a new comment symbol #
" is inserted on the next line by default. I dislike it.

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Better command-line tab-completion
" E.g. :buffer <Tab> shows a list of open buffers (filenames)
"      :edit <Tab> shows a list of files in the current folder

set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe                  " compiled object files
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX specific
set wildignore+=*.pyc                            " Python byte code


" following changes this behavior. The left and right arrow keys, as well as
" h and l, are wrapped when used at beginning or end of lines. ( < > are the
" cursor keys used in normal and visual mode, and [ ] are the cursor keys in
" insert mode).

set whichwrap+=<,>,h,l,[,]

" Set some specific settings only for MacVim

if has("gui_macvim")

    " Emulate the TextEdit behavior of selecting with Shift-Arrow,
    " and allow copying and pasting with resp. ctrl-c and ctrl-v

    let macvim_hig_shift_movement = 1

endif

" Show a cursorline in the current window and in normal mode.

augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

" Abbreviate :Tagbar to :tb

cabbrev tb Tagbar

" A shortcut to select a block that just pasted

nnoremap <expr> gV "`[".getregtype(v:register)[0]."`]"

" I keep on mistyping :W instead of :w to write a file, so let's alias it.

command! -bang W w<bang>
command! Wq wq

" Make a command to select a range of lines
" Usage: :10,25Vr

command! -range Vr normal! <line1>GV<line2>G

" Allow to visually select a region and then hit @ to run a macro on all lines.
" Only lines which match will change without stopping at lines that don't match the macro.

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" Make sure that the buffer list is not swamped with fugitive buffers after
" opening git objects.

autocmd BufReadPost fugitive://* set bufhidden=delete

" Undotree saves files with undo information to make the undo feature persistent
" even when the file was closed and reopened. Make sure that this undo info is
" not saved in the local folder but is centralized in one undo directory.

if has("persistent_undo")
    set undodir=~/.vim/undodir/
    set undofile
endif

" When toggling the undotree, put the window on the left
" Further options are 1, 2, 3, 4.

if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 1
endif

if !exists('g:undotree_DiffAutoOpen')
    let g:undotree_DiffAutoOpen = 1
endif

" Shorten the undo information, e.g. 'd' instead of 'days'.

if !exists('g:undotree_ShortIndicators')
    let g:undotree_ShortIndicators = 1
endif

" Specify the width of the undo windows

if !exists('g:undotree_SplitWidth')
    let g:undotree_SplitWidth = 22
endif

if !exists('g:undotree_DiffpanelHeight')
    let g:undotree_DiffpanelHeight = 10
endif

