set encoding=utf-8

call plug#begin('~/.nvim/Plugins')

Plug 'neovim/nvim-lspconfig'                       " Tools for Neovim's Language Server Protocol
Plug 'nvim-lua/completion-nvim'                    " Auto-completion framework for built-in LSP
Plug 'steelsojka/completion-buffers'               " Add words from the current buffer as completion source
Plug 'kristijanhusak/completion-tags'              " Add words from the tag list in the completion list
Plug 'sainnhe/sonokai'                             " The 'sonakai' color scheme
Plug 'morhetz/gruvbox'                             " The 'gruvbox' color scheme
Plug 'hoob3rt/lualine.nvim'                        " To have a colorful status line
Plug 'kyazdani42/nvim-web-devicons'                " Add devicons 
Plug 'nvim-lua/popup.nvim'                         " Allows for popups to appear
Plug 'nvim-lua/plenary.nvim'                       " Collections of lua functions.
Plug 'unblevable/quick-scope'                      " Mark jump points for f or F
Plug 'ggandor/lightspeed.nvim'                     " Jump to next/prev location with s{char}{char} / S{char}{char}
Plug 'ap/vim-buftabline'                           " To configure a buffer tab line
Plug 'mhinz/vim-signify'                           " Show file changes. Works with git, mercurial,...
Plug 'pechorin/any-jump.vim'                       " List def and refs of word under cursor, project wide. Requires ripgrep.
Plug 'tpope/vim-surround'                          " To wrap text in brackets, parenthesis, xml-tags, ...
Plug 'michaeljsmith/vim-indent-object'             " Text object for indented blocks
Plug 'vim-scripts/argtextobj.vim'                  " Text object for function arguments
Plug 'majutsushi/tagbar'                           " Shows a list of tags in a tagbar
Plug 'tommcdo/vim-exchange'                        " Easy text swapping operator
Plug 'sickill/vim-pasta'                           " Adjust indentation of pasted text to that of the surrounding code
Plug 'markonm/traces.vim'                          " Range, pattern and substitute preview
Plug 'kdheepak/lazygit.nvim'                       " Allows to call lazygit from inside neovim
Plug 'Yggdroot/indentLine'                         " Show tiny vertical lines at each indent level
Plug 'ntpeters/vim-better-whitespace'              " Highlight and fix trailing whitespace.
Plug 'tomtom/tcomment_vim'                         " Easy (un)commenting of code
Plug 'matze/vim-move'                              " Moving selected blocks of text
Plug 'godlygeek/tabular'                           " Tabularizing text, e.g. on '=' char
Plug 'itchyny/vim-cursorword'                      " Underline the 'word' under the cursor
Plug 'ludovicchabant/vim-gutentags'                " Manages ctags files
Plug 'mechatroner/rainbow_csv'                     " Visualizing and querying CSV files
Plug 'JuliaEditorSupport/julia-vim'                " Julia support, e,g. LaTeX-to-unicode conversion
Plug 'rust-lang/rust.vim'                          " Syntax highlighting for the Rust language
Plug 'goerz/jupytext.vim'                          " Edit jupyter notebooks (requires jupytext CLI)
Plug 'chrisbra/Colorizer'                          " Colorize W3 colors, X11 color names, and hex color codes. :ColorToggle
Plug 'vimwiki/vimwiki'                             " To create a personal wiki (\ww to load the Index)
Plug 'mattn/calendar-vim'                          " Calendar view. :CalendarH
Plug 'lervag/vimtex'                               " LaTeX: \ll to start compiling. \lc to clear auxilliary files.
Plug 'schickling/vim-bufonly'                      " Delete all buffers except current one with :BufOnly or :Bonly
Plug 'tpope/vim-repeat'                            " Allow repeating all commands in a map, not just the last command of that map.
Plug 'tpope/vim-fugitive'                          " Allows to interact with Git.
Plug 'airblade/vim-rooter'                         " Change working directory to project root
Plug 'brooth/far.vim'                              " Find and replace in multiple files. E.g. :F foo **/*.py or :Far foo bar **/*.py
Plug 'MattesGroeger/vim-bookmarks'                 " Toggling bookmarks per line. :BookmarkToggle :BookmarkAnnotate <TEXT>
Plug 'junegunn/fzf'                                " Fuzzy finder - the machinery 
Plug 'junegunn/fzf.vim'                            " Vim interface to fzf (currently faster than Telescope)

call plug#end()



colorscheme sonokai
set background=dark                                " Dark version of the color scheme
" set guifont=Andale\ Mono:h14                       " Font and font size
set guifont=AurulentSansMono-Regular\ Nerd:h14     " Font and font size


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
set textwidth=150                                  " Hard-break lines after 130 characters
set showmatch                                      " Show matching pairs of brackets
set mat=3                                          " Blink 3 tenths of a second when matching
set incsearch                                      " Incremental search = search starts from 1st char you type
set hlsearch                                       " Highlight search results
set smartcase                                      " Case-insensitive search except when capitals are used
set nobackup                                       " Avoid backups
set confirm                                        " Ask to save changes
set visualbell                                     " Use visual bell instead of beeping
set mouse=a                                        " Enable use of the mouse for all modes
set showcmd                                        " Show information about the current command going on
set hidden                                         " To avoid discarding a terminal when closed.
set autoread                                       " Watch for file changes
set autowrite                                      " Automatically save when switching/abandoning a buffer
set report=0                                       " Always report the number of lines that were changed
set scrolloff=10                                   " When scrolling, keep cursor 10 lines from top or bottom
set shortmess+=I                                   " Do not show the intro message at start-up
set shortmess+=c                                   " No redudant messages when using auto-completion
set laststatus=2                                   " Always show the status line
set nowrap                                         " Don't wrap too long lines
set relativenumber                                 " Line numbering is relative to the current line
set backspace=indent,eol,start                     " Allow backspacing over autoindent, line breaks & start of insert action
set foldmethod=indent                              " Use indentation to decide how to fold
set foldlevel=99                                   " No folding at all when opening a file
set lazyredraw                                     " Don't update the display while executing macros
set clipboard=unnamedplus                          " Yank to the system clipboard instead of vim default register
set completeopt=menuone,noinsert,noselect          " Better auto-completion experience
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣    " List all white space characters. Show with :set list

set undofile                                       " Allow for persistent undo across neovim sessions
if !isdirectory(expand("$HOME/.nvim/undodir"))     " Make sure the directory to store the undo info exists 
  call mkdir(expand("$HOME/.nvim/undodir"), "p")
endif
set undodir=$HOME/.nvim/undodir                    " Centralize all undo information in one directory

let mapleader = '\'                                " Use backslash to start custom shortcuts

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

nnoremap <silent> <leader>lg :LazyGit<CR>

nnoremap <leader>s <cmd>BLines<cr>
nnoremap <leader>f <cmd>Files<cr>
nnoremap <leader>g <cmd>Rg<cr>
nnoremap <leader>r <cmd>History<cr>
nnoremap <leader>t <cmd>Tags<cr>
nnoremap <leader>c <cmd>History:<cr>

" Easy cycling between windows using the Alt and the arrow keys in normal mode
" Can't use Ctrl because OSX already claims <ctrl>-Right.

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Change the default values of the fzf.vim preview window

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.65, 'border': 'rounded' } }
let g:fzf_colors = { 'border': ['fg', 'Normal'] }

" Use \j both in normal and visual (selection) mode to give an overview of the definitions and usages [AnyJump]

nnoremap <leader>j :AnyJump<CR>
xnoremap <leader>j :AnyJumpVisual<CR>

" Specify what should be in the completion list

let g:completion_chain_complete_list = { 'default' : [{'complete_items' : ['lsp', 'tags', 'buffers']}, ]}
let g:completion_sorting = "none"

" Use <Tab> and <S-Tab> to navigate through popup menu

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <Tab> as trigger keys

imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)


let g:tagbar_width = 40                            " Width of the tagbar
let g:tagbar_compact = 1                           " No short help at top of the tagbar

let g:gutentags_enabled = 1                                " Set to 0 if no ctags updates are desired
let g:gutentags_ctags_extra_args = ['-R', '--extra=+f', '--exclude=build', '--exclude=docs', '--exclude=dependencies']    " -R: recursive, +f: include files
" let g:gutentags_trace = 1                          " To debug in case of trouble

let g:move_key_modifier = 'C'                      " <Ctrl-k> <Ctrl-j> <Ctrl-h> and <Ctrl-l> allow to move a selected block of text

let g:indentLine_enabled = 1                       " Set to 0 if you want to disable this plugin
let g:indentLine_color_gui = '#393A3D'             " Vertical lines should only be barely visible
let g:indentLine_char = '┊'                        " Type of vertical line

let g:calendar_monday=1                            " Let weeks start on a Monday rather than a Sunday
let g:calendar_number_of_months=5                  " Show 5 weeks at the same time

let g:better_whitespace_enabled=0                  " No highlighting of trailing whitespace by default
let g:strip_whitespace_on_save=0                   " No removing of trailing whitespace by default

let g:any_jump_list_numbers = 0
let g:any_jump_references_enabled = 1              " Auto-search references as well
let g:any_jump_grouping_enabled = 0                " Don't group by filename, just definitions vs references
let g:any_jump_preview_lines_count = 5             " Number of preview lines per search result
let g:any_jump_max_search_results = 10             " Max nr of search results to show. Obtain rest via [a]
let g:any_jump_search_prefered_engine = 'rg'       " Use ripgrep as search engine
let g:any_jump_results_ui_style = 'filename_first' " First show filename, then the line with the match
let g:any_jump_window_width_ratio  = 0.6           " Size and position parameters of the AnyJump window
let g:any_jump_window_height_ratio = 0.6
let g:any_jump_window_top_offset   = 4

let g:vimwiki_list = [{'path': '~/vimwiki/', 'index': 'Index', 'syntax': 'markdown', 'ext': 'md'}]
let g:vimwiki_folding = 'list'

let g:vimtex_view_method="skim"                    " Use Skim as the default pdf viewer for LaTeX documents
let g:vimtex_quickfix_mode = 2                     " Open quickfix only when there are issues, and don't make it the active window
let g:vimtex_quickfix_open_on_warning = 0          " Only open the quickfix on errors, not warnings
let g:vimtex_quickfix_autoclose_after_keystrokes=1 " Close quickfix window after 1 motion (e.g. cursor moved)
let g:vimtex_quickfix_autojump = 0                 " Don't auto-jump to the first LaTeX error when there are compilation errors
let g:vimtex_syntax_conceal_default = 0            " Don't conceal LaTeX commands like \alpha with a UTF character. 

let g:rooter_targets = '*.yaml,*.cpp,*.h,*.py,*.rs'   " This file trigger a change-working-directory (no spaces in string)
let g:rooter_patterns = ['.git']                      " This is how a project root can be recognized

let g:slime_target = "neovim"                         " Send text to REPL in neovim :terminal


" Map shift-enter to insert an empty line in command mode

nmap <S-Enter> o<Esc>

" Map shift-space to insert one space in command mode

nmap <S-Space> i <Esc>

" Map <space> as a shortcut to remove search highlights

map <Space> :noh<cr>

" Abbreviate :Tagbar to :tb

cabbrev tb Tagbar

" Auto-resize splits when Vim gets resized.

autocmd VimResized * wincmd =

" Show a cursorline in the active buffer.

augroup cline
    au!
    au VimEnter,WinEnter,BufWinEnter,InsertLeave * setlocal cursorline
    au WinLeave,InsertEnter * setlocal nocursorline
augroup END

" I keep on mistyping :W instead of :w to write a file, so let's alias it.

command! -bang W w<bang>
command! Wq wq

" Disable the automatically inserting the comment symbol
" E.g. When typing in Python # xxx <cr> a new comment symbol #
" is inserted on the next line by default. I dislike it.

" The following allows to make a selection, and hit @ to run a macro on all lines

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction


" Make sure that the buffer list is not swamped with fugitive buffers after
" opening git objects.

autocmd BufReadPost fugitive://* set bufhidden=delete


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


" Configure the left and right arrow keys, as well as h and l, so that they
" wrap when used at beginning or end of lines. ( < > are the cursor keys used
" in normal and visual mode, and [ ] are the cursor keys in insert mode).

set whichwrap+=<,>,h,l,[,]

" Configuration for neovide

let g:neovide_cursor_vfx_mode = "sonicboom"

" Vim-bookmarks: remove the default (intruding) keymaps

let g:bookmark_no_default_key_mappings = 1
let g:bookmark_auto_save = 1                       " Stored in ~/.vim-bookmarks

" Start lualine (status line)

lua << EOF
require'lualine'.setup {
    options = {
        icons_enabled=false,
        theme='oceanicnext'
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
}

EOF


" Configuration for nvim-lspconfig

lua << EOF
local nvim_lsp = require('lspconfig')

-- function to attach completion when setting up lsp

local on_attach = function(client)
    require'completion'.on_attach(client)
end

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Mappings.
    local opts = { noremap=true, silent=true }

    buf_set_keymap('n', 'gD',       '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd',       '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gi',       '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', 'K',        '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<C-s>',    '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
end

-- Enable analyzers

nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })
nvim_lsp.clangd.setup({ on_attach=on_attach })
nvim_lsp.jedi_language_server.setup({ on_attach=on_attach })

EOF

