
"set encoding=utf-8                                 " Set output encoding to UTF-8
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
Plugin 'ap/vim-buftabline'
Plugin 'vim-airline/vim-airline'                   " To have a colorful status line
Plugin 'vim-airline/vim-airline-themes'            " To choose a specific theme for the status line
Plugin 'airblade/vim-gitgutter'                    " Shows changes in gutter in files tracked by git
Plugin 'ervandew/supertab'                         " Context-aware tab completion
Plugin 'vim-syntastic/syntastic'                   " Syntax checker for various languages
Plugin 'lervag/vimtex'                             " LaTeX plugin
Plugin 'majutsushi/tagbar'                         " Shows a list of tags in a tagbar
Plugin 'chrisbra/csv.vim'                          " Tools to work with comma-separated value files
Plugin 'rakr/vim-one'                              " The 'one' color scheme
Plugin 'sainnhe/sonokai'                           " The 'sonakai' color scheme
Plugin 'morhetz/gruvbox'                           " The 'gruvbox' color scheme
Plugin 'mbbill/undotree'                           " To visualize the undo tree
Plugin 'vim-scripts/argtextobj.vim'                " Text object for function arguments
Plugin 'michaeljsmith/vim-indent-object'           " Text object for indented blocks
Plugin 'tpope/vim-surround'                        " To wrap text in brackets, parenthesis, xml-tags, ...
Plugin 'JuliaEditorSupport/julia-vim'              " Julia support, e,g. LaTeX-to-unicode conversion
Plugin 'mg979/vim-visual-multi'                    " Support for multiple cursors, like in Sublime
Plugin 'rust-lang/rust.vim'                        " Syntax highlighting for the Rust language
Plugin 'godlygeek/tabular'                         " Tabularizing text, e.g. on '=' char
Plugin 'ntpeters/vim-better-whitespace'            " Highlight and fix trailing whitespace.
Plugin 'tomtom/tcomment_vim'                       " Easy (un)commenting of code
Plugin 'matze/vim-move'                            " Moving selected blocks of text
Plugin 'pechorin/any-jump.vim'                     " List def and refs of word under cursor, project wide. Requires ripgrep.
Plugin 'sickill/vim-pasta'                         " Adjust indentation of pasted text to that of the surrounding code
Plugin 'justinmk/vim-sneak'                        " Jump to next/prev location with s{char}{char} / S{char}{char}
Plugin 'gcmt/wildfire.vim'                         " (Un)select closest text object with <return> and <backspace>
Plugin 'goerz/jupytext.vim'                        " Edit jupyter notebooks (requires jupytext CLI)
Plugin 'tommcdo/vim-exchange'                      " Easy text swapping operator
Plugin 'itchyny/vim-cursorword'                    " Underline the 'word' under the cursor
Plugin 'jpalardy/vim-slime'                        " Communication between vim and a tmux session
Plugin 'christoomey/vim-tmux-navigator'            " To move between Vim panes and tmux splits
Plugin 'ludovicchabant/vim-gutentags'              " Manages ctags files
Plugin 'psliwka/vim-smoothie'                      " Smooth scrolling with ^f, ^b, ^u, ^d
Plugin 'Yggdroot/indentLine'                       " Show tiny vertical lines at each indent level
Plugin 'markonm/traces.vim'                        " Range, pattern and substitute preview
Plugin 'jiangmiao/auto-pairs'                      " Inserts or deletes brackets, parens, quotes in pairs
Plugin 'rhysd/git-messenger.vim'                   " Show commit history under the cursor in popup window
Plugin 'thinca/vim-localrc'                        " Loads vimrc files dedicated to local dirs/projects
Plugin 'tpope/vim-speeddating'                     " Incrementing and decrementing dates with <C-A>
Plugin 'mattn/calendar-vim'                        " Creates a calendar window with :CalendarH
Plugin 'uguu-org/vim-matrix-screensaver'           " Follow the white rabbit...

call vundle#end()

let GUIcolorscheme   = 'sonokai'
let ShellColorscheme = 'gruvbox'
if has('gui_running')                              " Set the proper color scheme
    exe 'colorscheme' GUIcolorscheme
else
    exe 'colorscheme' ShellColorscheme
endif

set background=dark                                " Dark version of the color scheme
set guifont=Andale\ Mono:h13                       " Font and font size

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
set textwidth=0                                    " Don't break long lines
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

let g:airline#extensions#default#layout = [['a','b','c'],['x','y','z','error']] " Left & right section in status bar, no warnings.

let g:buftabline_show=1                            " Only show tabline when there are at least 2 buffers
let g:buftabline_numbers=2                         " Give each buffer an ordinal nr != its buffer number
let g:buftabline_separators='|'                    " Separator between buffer names in tabline
nmap <leader>1 <Plug>BufTabLine.Go(1)              " Use \1 to switch to buffer 1
nmap <leader>2 <Plug>BufTabLine.Go(2)              " Use \2 to switch to buffer 2
nmap <leader>3 <Plug>BufTabLine.Go(3)              " Use \3 to switch to buffer 3
nmap <leader>4 <Plug>BufTabLine.Go(4)              " Use \4 to switch to buffer 4
nmap <leader>5 <Plug>BufTabLine.Go(5)              " Use \5 to switch to buffer 5
nmap <leader>6 <Plug>BufTabLine.Go(6)              " Use \6 to switch to buffer 6
nmap <leader>7 <Plug>BufTabLine.Go(7)              " Use \7 to switch to buffer 7
nmap <leader>8 <Plug>BufTabLine.Go(8)              " Use \8 to switch to buffer 8
nmap <leader>9 <Plug>BufTabLine.Go(9)              " Use \9 to switch to buffer 9


let g:netrw_banner = 0                             " No banner when showing a folder contents with netrw
let g:netrw_browse_split = 4                       " Netrw opens files in existing window
let g:netrw_liststyle = 3                          " Use a tree style listing
let g:netrw_winsize = 20                           " Let the file list use 20% of the window size

let g:SuperTabDefaultCompletionType = '<C-n>'

let g:syntastic_python_checkers = ['pylint']       " No flake, just pylint
let g:syntastic_python_pylint_args='-E'            " Errors only
let g:syntastic_cpp_compiler = "clang++"           " Compiler is Clang, not gcc
let g:syntastic_cpp_check_header = 1               " Also check the header files
let g:syntastic_cpp_auto_refresh_includes = 1      " Check headers everytime you write
let g:syntastic_always_populate_loc_list = 0       " Don't auto-populate location list with errors to avoid clashes with other plugins. Manual way: :Errors
let g:syntastic_auto_loc_list = 0                  " Don't automatically open the location list when errors are detected.
let g:syntastic_check_on_open = 0                  " Don't check when opening a file, this slows down opening a file too much.
let g:syntastic_check_on_wq = 0                    " Don't bother syntax-checking when :wq as we're quitting Vim anyway.

let g:vimtex_view_method="skim"                    " Use Skim as the default pdf viewer for LaTeX documents
let g:vimtex_quickfix_latexlog = {'default':0}     " Only report LaTeX errors, not warnings
let g:vimtex_quickfix_mode = 2                     " Open quickfix only when there are errors, and don't make it the active window
let g:vimtex_quickfix_autojump = 0                 " Don't auto-jump to the first LaTeX error when there are compilation errors

let g:ctrlp_map = '<c-p>'                          " Activate CtrlP with ^p or with :CtrlP
let g:ctrlp_cmd = 'CtrlPMRU'                       " Use MRU (rather than files) as the default

let g:csv_strict_columns = 1                       " Delimiter cannot appear inside field. Speeds up things.
let g:csv_comment = '#'                            " Lines starting with # are considered comment lines
let g:csv_start = 1                                " Only use lines 1-500 to analyse the file,
let g:csv_end = 500                                "      this speeds up things.

let g:tagbar_width = 40                            " Width of the tagbar
let g:tagbar_compact = 1                           " No short help at top of the tagbar

let g:git_messenger_close_on_cursor_moved = v:true

let g:better_whitespace_enabled=0                  " No highlighting of trailing whitespace by default
let g:strip_whitespace_on_save=0                   " No removing of trailing whitespace by default

let g:slime_target = "tmux"                        " Use tmux instead of screen
let g:slime_paste_file = "$HOME/.slime_paste"      " Temporary file to paste into tmux session
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_python_ipython = 1                     " Solves the problem of the missing <CR> in ipython

let g:gutentags_enabled = 1                                " Set to 0 if no ctags updates are desired
let g:gutentags_ctags_extra_args = ['-R', '--extra=+f', '--exclude=build', '--exclude=docs', '--exclude=dependencies']    " -R: recursive, +f: include files

let g:smoothie_base_speed = 20                     " Base speed in lines per second

let g:move_key_modifier = 'C'                      " <Ctrl-k> <Ctrl-j> <Ctrl-h> and <Ctrl-l> allow to move blocks of text

let g:sneak#label = 1                                " Allow to use sneak with labels overlaying the text, like Easymotion
let g:sneak#target_labels=";sftunq/SFGHLTUNRMQZ?01"  " Labels that sneak will use to highlight your search combo

let g:indentLine_enabled = 1                       " Set to 0 if you want to disable this plugin
let g:indentLine_color_gui = '#393A3D'             " Vertical lines should only be barely visible
let g:indentLine_char = '┊'                        " Type of vertical line

let g:calendar_monday=1                            " Let weeks start on a Monday rather than a Sunday
let g:calendar_number_of_months=5                  " Show 5 weeks at the same time
let g:indentLine_fileTypeExclude = ['tex']         " Indentline screws up working with LaTeX, because its conceal feature
au Filetype tex setlocal conceallevel=0            "   auto-replace latex text. These two lines fix this problem.

let g:localrc_filename = ".local.vimrc"            " Default name of the local dir/project vimrc files.



" Alias some of fzf commands. 
" In normal mode, use \s to fuzzy-search with fzf in the current buffer,
" \t to fuzzy-search tags in the current project (using ctags), and \f
" to search files in the current folder and subfolders. There was one 
" other mapping (\swp) that made my \s really slow, because vim waits a 
" while to be sure that after \s there is no 'wp' coming. Unmap \swp as 
" I never use it anyway.

nnoremap <leader>t :Tags<cr>
nnoremap <leader>f :Files<cr>
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

