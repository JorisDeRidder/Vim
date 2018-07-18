
set encoding=utf-8                                 " Required by YouCompleteMe
set rtp+=~/.vim/bundle/Vundle.vim                  " Set the runtime path to include Vundle

" Initialise Vundle

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'                      " Vundle should manage itself
Plugin 'eiginn/netrw'                              " Reading/writing/browsing files even over network
Plugin 'tpope/vim-fugitive'                        " Git interface of Tim Pope
Plugin 'junegunn/gv.vim'                           " More Git functionality
Plugin 'ctrlpvim/ctrlp.vim'                        " Find files, even fuzzily
Plugin 'vim-airline/vim-airline'                   " To have a colorful status line
Plugin 'vim-airline/vim-airline-themes'            " To choose a specific theme for the status line
Plugin 'airblade/vim-gitgutter'                    " Shows changes in gutter in files tracked by git
Plugin 'ervandew/supertab'                         " Required to make ultisnips and YCM work together better
Plugin 'SirVer/ultisnips'                          " Customisable snippets
Plugin 'lervag/vimtex'                             " LaTeX plugin
Plugin 'vimoutliner/vimoutliner'                   " Outlining with some automation
Plugin 'majutsushi/tagbar'                         " Shows a list of tags in a tagbar
Plugin 'Valloric/YouCompleteMe'                    " Code completer and syntax checker
Plugin 'chrisbra/csv.vim'                          " Tools to work with comma-separated value files
Plugin 'easymotion/vim-easymotion'                 " Enhances motion throughout the text
Plugin 'altercation/vim-colors-solarized'          " The Solarized color scheme
Plugin 'mbbill/undotree'                           " To visualize the undo tree
Plugin 'vim-scripts/argtextobj.vim'                " Text object for function arguments
Plugin 'michaeljsmith/vim-indent-object'           " Text object for indented blocks

call vundle#end()

set background=dark                                " Either 'dark' or 'light'
colorscheme solarized                              " Set the proper color scheme
set guifont=Andale\ Mono:h13                       " Font and font size

let g:airline_theme='solarized'                    " Apply the solarized theme to the status line
let g:airline_solarized_bg='dark'                  " 

filetype plugin indent on                          " Set automatic indentation for the plugin files
set nocompatible                                   " No compatibility with vim
syntax enable                                      " Enable syntax highlighting
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
set mat=2                                          " Blink 2 tenths of a second when matching
set incsearch                                      " Incremental search = search starts from 1st char you type
set hlsearch                                       " Highlight search results
set nobackup                                       " Avoid backups
set confirm                                        " Ask to save changes
set visualbell                                     " Use visual bell instead of beeping 
set mouse=a                                        " Enable use of the mouse for all modes
set showcmd                                        " Show information about the current command going on
set nohidden                                       " When closing a tab, remove the buffer
set autoread                                       " Watch for file changes
set autowrite                                      " Automatically save when switching/abandoning a buffer
set scrolloff=5                                    " When scrolling, keep cursor 5 lines from top or bottom
set shortmess+=I                                   " Do not show the intro message at start-up
set laststatus=2                                   " Always show the status line
set nowrap                                         " Don't wrap too long lines
filetype on                                        " Enable filetype recognition
set backspace=indent,eol,start                     " Allow backspacing over autoindent, line breaks & start of insert action
set foldmethod=indent                              " Use indentation to decide how to fold
set foldlevel=99                                   " No folding at all when opening a file
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣    " List all white space characters. Show with :set list

let g:airline#extensions#tabline#enabled = 1                 " Show a tab bar at the top with buffers
let g:airline#extensions#tabline#left_sep = ' '              " Left separator between buffer names in the tab line
let g:airline#extensions#tabline#left_alt_sep = '>'          " Right separator between buffer names in the tab line
let g:airline#extensions#tabline#formatter = 'unique_tail'   " Only show file names, not path information in the tab line

let g:netrw_banner = 0                             " No banner when showing a folder contents with netrw
let g:netrw_browse_split = 4                       " Netrw opens files in existing window
let g:netrw_liststyle = 3                          " Use a tree style listing
let g:netrw_winsize = 20                           " Let the file list use 20% of the window size

let g:ycm_min_num_of_chars_for_completion = 3      " Don't attempt to complete before 3 chars are typed
let g:ycm_confirm_extra_conf = 0                   " Don't ask for confirmation to load the .ycm_extra_conf.py file                   
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']     " how to navigate down in popup menu
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']     " How to navigate up in popup menu
let g:ycm_autoclose_preview_window_after_completion = 1        " Get rid of the preview window after tab-complete           
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger="<C-z>"               " Expand snippet
let g:UltiSnipsJumpForwardTrigger="<Right>"        " Jump to next 
let g:UltiSnipsJumpBackwardTrigger="<Left>"        " Jump to previous
let g:UltiSnipsSnippetDirectories=["UltiSnips"]    " Folder where are the snippets can be found

let g:vimtex_view_method="skim"                    " Use Skim as the default pdf viewer for LaTeX documents

let g:ctrlp_map = '<c-p>'                          " Activate CtrlP with ^p
let g:ctrlp_cmd = 'CtrlP'                          "             or with :CtrlP

let g:csv_strict_columns = 1                       " Delimiter cannot appear inside field. Speeds up things.
let g:csv_comment = '#'                            " Lines starting with # are considered comment lines
let g:csv_start = 1                                " Only use lines 1-500 to analyse the file,
let g:csv_end = 500                                "      this speeds up things.


let g:EasyMotion_smartcase = 1                     " Make easymotion case-insensitive


":set lcs+=space:⋅                                 " Show each space as a tiny dot. Only for recent enough vim
":set lcs+=tab:‣‣                                  " Show each tab as a triangle. Only for recent enough vim 

" Map Ctrl-q to a file/buffer/mru list in which you can scroll and select

map <c-q> :CtrlPBuffer<cr>

" In normal mode, define a mapping to cycle through listed buffers

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" In visual mode, use ctrl-c to copy the selection to the clipboard

vnoremap <C-c> :w !pbcopy<CR><CR>

" Map shift-enter to insert an empty line in command mode

nmap <S-Enter> o<Esc>

" Map shift-space to insert one space in command mode

nmap <S-Space> i <Esc>

" Return to last edit position when opening files

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif


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

    " Show a cursorline in the current window and in normal mode.
    " In a terminal this would show up as an ugly underline.

    augroup cline
        au!
        au WinLeave,InsertEnter * set nocursorline
        au WinEnter,InsertLeave * set cursorline
    augroup END

endif

" Add a command to search in all files in the Notes/ folder

command! -nargs=1 Ngrep vimgrep "<args>" /Users/joris/Notes/*.otl

" I keep on mistyping :W instead of :w to write a file, so let's alias it.

command! -bang W w<bang>

" Make a command to select a range of lines
" Usage: :10,25Vr

command! -range Vr normal! <line1>GV<line2>G

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

