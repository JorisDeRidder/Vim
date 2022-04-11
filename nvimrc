set encoding=utf-8

call plug#begin('~/.nvim/Plugins')

Plug 'neovim/nvim-lspconfig'                       " Tools for Neovim's Language Server Protocol
Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}    " Completion using the LSP client. Used by nvim-cmp.
Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}      " Completion with words from the buffer. Used by nvim-cmp
Plug 'hrsh7th/cmp-path', {'branch': 'main'}        " Completion with filesystem paths. Used by nvim-cmp
Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}        " Auto-completion
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}       " Auto-completion with snippets. Used by nvim-cmp
Plug 'hrsh7th/vim-vsnip'                           " Snippets, using the LSP. Used by cmp-vsnip.
Plug 'ray-x/lsp_signature.nvim'                    " Show the signature of the function you're writing
Plug 'sainnhe/sonokai'                             " The 'sonakai' color scheme
Plug 'morhetz/gruvbox'                             " The 'gruvbox' color scheme
Plug 'hoob3rt/lualine.nvim'                        " To have a colorful status line
Plug 'kyazdani42/nvim-web-devicons'                " Add devicons 
Plug 'nvim-lua/popup.nvim'                         " Allows for popups to appear
Plug 'nvim-lua/plenary.nvim'                       " Collections of lua functions.
Plug 'unblevable/quick-scope'                      " Mark jump points for f or F
Plug 'romgrk/barbar.nvim'                          " To configure a buffer tab line
Plug 'mhinz/vim-signify'                           " Show file changes. Works with git, mercurial,...
Plug 'tpope/vim-surround'                          " To wrap text in brackets, parenthesis, xml-tags, ...
Plug 'michaeljsmith/vim-indent-object'             " Text object for indented blocks
Plug 'vim-scripts/argtextobj.vim'                  " Text object for function arguments
Plug 'majutsushi/tagbar'                           " Shows a list of tags in a tagbar
Plug 'tommcdo/vim-exchange'                        " Easy text swapping operator: cx{motion} and .
Plug 'sickill/vim-pasta'                           " Adjust indentation of pasted text to that of the surrounding code
Plug 'markonm/traces.vim'                          " Range, pattern and substitute preview
Plug 'kdheepak/lazygit.nvim'                       " Allows to call lazygit from inside neovim
Plug 'Yggdroot/indentLine'                         " Show tiny vertical lines at each indent level
Plug 'ntpeters/vim-better-whitespace'              " Highlight and fix trailing whitespace.
Plug 'b3nj5m1n/kommentary'                         " Easy (un)commenting of code
Plug 'matze/vim-move'                              " Moving selected blocks of text
Plug 'andymass/vim-matchup'                        " Highlight, navigate and operate on sets of matching text. E.g. if-then-else
Plug 'godlygeek/tabular'                           " Tabularizing text, e.g. on '=' char with :Tab/=
Plug 'RRethy/vim-illuminate'                       " Automatically highlight other uses of the word under the cursor
Plug 'ludovicchabant/vim-gutentags'                " Manages ctags files
Plug 'mechatroner/rainbow_csv'                     " Visualizing and querying CSV files
Plug 'rust-lang/rust.vim'                          " Syntax highlighting for the Rust language
Plug 'goerz/jupytext.vim'                          " Edit jupyter notebooks (requires jupytext CLI)
Plug 'chrisbra/Colorizer'                          " Colorize W3 colors, X11 color names, and hex color codes. :ColorToggle
Plug 'vimwiki/vimwiki'                             " To create a personal wiki (\ww to load the Index)
Plug 'lervag/vimtex'                               " LaTeX: \ll to start compiling. \lc to clear auxilliary files.
Plug 'schickling/vim-bufonly'                      " Delete all buffers except current one with :BufOnly or :Bonly
Plug 'tpope/vim-repeat'                            " Allow repeating all commands in a map, not just the last command of that map.
Plug 'tpope/vim-fugitive'                          " Allows to interact with Git.
Plug 'windwp/nvim-autopairs'                       " Auto-insert closing ) ] } etc after opening ( [ { etc.
Plug 'airblade/vim-rooter'                         " Change working directory to project root
Plug 'brooth/far.vim'                              " Find and replace in multiple files. E.g. :F foo **/*.py or :Far foo bar **/*.py
Plug 'MattesGroeger/vim-bookmarks'                 " Toggling bookmarks per line. :BookmarkToggle :BookmarkAnnotate <TEXT>
Plug 'nvim-telescope/telescope.nvim'               " Fuzzy finder, some plugins require it.
Plug 'junegunn/fzf'                                " Fuzzy finder - the machinery 
Plug 'junegunn/fzf.vim'                            " Vim interface to fzf (currently faster than Telescope)
Plug 'machakann/vim-highlightedyank'               " Highlight the yanked text
Plug 'phaazon/hop.nvim'                            " Easy navigation in the visible buffer. Use 's <char1> <char2>' to  
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Advanced syntax tree parser
Plug 'famiu/bufdelete.nvim'                        " Buffer delete without messing up window structure (:Bdelete)
Plug 'sudormrfbin/cheatsheet.nvim'                 " Display a cheatsheet helping to remember the keybindings: \?
Plug 'gelguy/wilder.nvim'                          " Auto-suggestions at cmdline (:) or when searching with / or ?
Plug 'folke/trouble.nvim'                          " Pretty list of diagnostics, references, quickfixes
Plug 'folke/todo-comments.nvim'                    " Highlight TODO, FIXME, WARNING, ... Requires :TSInstall comment


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
set colorcolumn=150                                " Highlight column 150
set cursorline                                     " Highlight the line where the cursor is
set cursorcolumn                                   " Highlight the column where the cursor is
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
set scrolloff=2                                    " When scrolling, keep cursor 2 lines from top or bottom
set shortmess+=I                                   " Do not show the intro message at start-up
set shortmess+=c                                   " No redudant messages when using auto-completion
set laststatus=2                                   " Always show the status line
set nowrap                                         " Don't wrap too long lines by default
set relativenumber                                 " Line numbering is relative to the current line
set backspace=indent,eol,start                     " Allow backspacing over autoindent, line breaks & start of insert action
set foldmethod=indent                              " Use indentation to decide how to fold
set foldlevel=99                                   " No folding at all when opening a file
set lazyredraw                                     " Don't update the display while executing macros
set splitright                                     " When using :vsplit, put new window right of the current one
set splitbelow                                     " When using :split, put new window below the current one
set clipboard=unnamedplus                          " Yank to the system clipboard instead of vim default register
set completeopt=menuone,noinsert,noselect          " Better auto-completion experience
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣    " List all white space characters. Show with :set list

set undofile                                       " Allow for persistent undo across neovim sessions
if !isdirectory(expand("$HOME/.nvim/undodir"))     " Make sure the directory to store the undo info exists 
  call mkdir(expand("$HOME/.nvim/undodir"), "p")
endif
set undodir=$HOME/.nvim/undodir                    " Centralize all undo information in one directory

let mapleader = '\'                                " Use backslash to start custom shortcuts

" Configure the tabline

let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = 'numbers'

nnoremap <silent> <S-Tab> :BufferPrevious<CR>      " Move to previous buffer in the tab bar
nnoremap <silent> <Tab> :BufferNext<CR>            " Move to next buffer in the tab bar
nmap <leader>1 :BufferGoto 1<CR>                   " Use \1 to switch to buffer 1
nmap <leader>2 :BufferGoto 2<CR>                   " Use \2 to switch to buffer 2
nmap <leader>3 :BufferGoto 3<CR>                   " Use \3 to switch to buffer 3
nmap <leader>4 :BufferGoto 4<CR>                   " Use \4 to switch to buffer 4
nmap <leader>5 :BufferGoto 5<CR>                   " Use \5 to switch to buffer 5
nmap <leader>6 :BufferGoto 6<CR>                   " Use \6 to switch to buffer 6
nmap <leader>7 :BufferGoto 7<CR>                   " Use \7 to switch to buffer 7
nmap <leader>8 :BufferGoto 8<CR>                   " Use \8 to switch to buffer 8
nmap <leader>9 :BufferGoto 9<CR>                   " Use \9 to switch to buffer 9

nnoremap <silent> <leader>lg :LazyGit<CR>          " Coolest git client available

" Allow the . operator to execute once for each line of a visual selection

vnoremap . :normal .<CR>

" \s : _S_earch the current buffer
" \f : Find a _f_ile in current and sub-directories
" \g : _G_rep all files in current and sub-directories, using ripgrep. 
" \r : Search in _r_ecent files
" \e : Toggle list error and warning diagnostics in this workspace
" \j:  Toggle list of references to the word under the cursor
" \c : Search in recent vim _c_ommands. 

nnoremap <leader>s <cmd>BLines<cr>
nnoremap <leader>f <cmd>Files<cr>
nnoremap <leader>g <cmd>Rg<cr>
nnoremap <leader>r <cmd>History<cr>
nnoremap <leader>e <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>j <cmd>TroubleToggle lsp_references<cr>
nnoremap <leader>t <cmd>TodoTrouble<cr>
nnoremap <leader>c <cmd>History:<cr>

" Easy cycling between windows using the Alt and the arrow keys in normal mode
" Can't use Ctrl because OSX already claims <ctrl>-Right.

nmap <silent> <A-Up> :wincmd k<CR>                 " Move to window up: Alt-arrow-up 
nmap <silent> <A-Down> :wincmd j<CR>               " Move to window down: Alt-arrow-down
nmap <silent> <A-Left> :wincmd h<CR>               " Move to window left: Alt-arrow-left
nmap <silent> <A-Right> :wincmd l<CR>              " Move to window right: Alt-arrow-right

" Change the default values of the fzf.vim preview window

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.65, 'border': 'rounded' } }
let g:fzf_colors = { 'border': ['fg', 'Normal'] }


let g:tagbar_width = 40                            " Width of the tagbar
let g:tagbar_compact = 1                           " No short help at top of the tagbar

let g:gutentags_enabled = 1                        " Set to 0 if no ctags updates are desired
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

let g:vimwiki_list = [{'path': '~/vimwiki/', 'index': 'Index', 'syntax': 'markdown', 'ext': 'md'}]
let g:vimwiki_folding = 'list'

let g:vimtex_view_method="skim"                    " Use Skim as the default pdf viewer for LaTeX documents
let g:vimtex_quickfix_mode = 2                     " Open quickfix only when there are issues, and don't make it the active window
let g:vimtex_quickfix_open_on_warning = 0          " Only open the quickfix on errors, not warnings
let g:vimtex_quickfix_autoclose_after_keystrokes=1 " Close quickfix window after 1 motion (e.g. cursor moved)
let g:vimtex_quickfix_autojump = 0                 " Don't auto-jump to the first LaTeX error when there are compilation errors
let g:vimtex_syntax_conceal_disable = 1            " Don't conceal LaTeX commands like \alpha with a UTF character. 

let g:rooter_targets = '*.yaml,*.cpp,*.h,*.py,*.rs'   " This file trigger a change-working-directory (no spaces in string)
let g:rooter_patterns = ['.git']                      " This is how a project root can be recognized

let g:highlightedyank_highlight_duration = 1000    " How long a yanked text should stay highlighted
highlight HighlightedyankRegion cterm=reverse gui=reverse   " Make the highlight better visible


" Map Hop's navigation commands

nnoremap s :HopChar1<CR>
nnoremap S :HopPattern<CR>

" Map <space> as a shortcut to remove search highlights

map <Space> :noh<cr>

" Abbreviate :Tagbar to :tb

cabbrev tb Tagbar

" Auto-resize splits when Vim gets resized.

autocmd VimResized * wincmd =


" I keep on mistyping :W instead of :w to write a file, so let's alias it.

command! -bang W w<bang>
command! Wq wq

" Disable the automatically inserting the comment symbol
" E.g. When typing in Python # xxx <cr> a new comment symbol #
" is inserted on the next line by default. I dislike it.

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" The following allows to make a selection, and hit @ to run a macro on all lines

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction


" Make sure that the buffer list is not swamped with fugitive buffers after opening git objects.

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


" Configuration for wilder: auto-suggestions on the command line
" Only enable it when tab is pressed.

call wilder#setup({'modes': [':', '/', '?']})

call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Enter>',
      \ 'reject_key': '<Right>',
      \ })

call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ }))

call wilder#setup({'modes': [':', '/', '?'], 'enable_cmdline_enter': 0, })


" The standard way of inserting greek/math letters in insert mode is rather
" tedious. Define the following mappings to facilitate this. 
" E.g. \gd in insert mode stands for _g_reek letter _d_elta
" Do not define these in LaTeX file that are littered with \commands.

fun! DefineGreekLetters()
    if exists('b:doNotDefineGreekLetters')
        return
    endif
    inoremap <leader>gG Γ
    inoremap <leader>gD Δ
    inoremap <leader>gH Θ
    inoremap <leader>gL Λ
    inoremap <leader>gC Ξ
    inoremap <leader>gP Π
    inoremap <leader>gS Σ
    inoremap <leader>gU Υ
    inoremap <leader>gF Φ
    inoremap <leader>gQ Ψ
    inoremap <leader>gW Ω
    inoremap <leader>ga α
    inoremap <leader>gb β
    inoremap <leader>gg γ
    inoremap <leader>gd δ
    inoremap <leader>ge ε
    inoremap <leader>gz ζ
    inoremap <leader>gy η
    inoremap <leader>gh θ
    inoremap <leader>gi ι
    inoremap <leader>gk κ
    inoremap <leader>gl λ
    inoremap <leader>gm μ
    inoremap <leader>gn ν
    inoremap <leader>gc ξ
    inoremap <leader>go ο
    inoremap <leader>gp π
    inoremap <leader>gr ρ
    inoremap <leader>gs σ
    inoremap <leader>gt τ
    inoremap <leader>gu υ
    inoremap <leader>gf φ
    inoremap <leader>gx χ
    inoremap <leader>gq ψ
    inoremap <leader>gw ω
    inoremap <leader>partial ∂
    inoremap <leader>nabla ∇
endfun

autocmd FileType tex let b:doNotDefineGreekLetters=1 
autocmd BufRead,BufNew * call DefineGreekLetters()



" Setup of Hop motions

lua << EOF
require'hop'.setup()
EOF


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


" LSP Configuration

lua << EOF

local cmp = require'cmp'
local nvim_lsp = require('lspconfig')

-- First the automcompletion setup

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end


cmp.setup({
  completion = {
      autocomplete = false                       -- Completion yes, but no autocompletion
  },
  snippet = {
    -- Required by nvim-cmp. 
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<CR>']  = cmp.mapping.confirm({ 
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
    }),

    ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        elseif vim.fn["vsnip#available"](1) == 1 then
            feedkey("<Plug>(vsnip-expand-or-jump)", "")
        elseif has_words_before() then
            cmp.complete()
        else
            fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
        if cmp.visible() then
            cmp.select_prev_item()
        elseif vim.fn["vsnip#jumpable"](-1) == 1 then
            feedkey("<Plug>(vsnip-jump-prev)", "")
        end
    end, { "i", "s" }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
  { name = 'buffer'}
  })
})

-- Get signatures (and only signatures) when in an argument list

local signature_config = {
    bind = true,
    doc_lines = 0,
    hint_prefix = "",
    floating_window_above_cur_line = false,
    hi_parameter = "LspSignatureActiveParameter",          -- Alternative is "IncSearch"
    handler_opts = { border = "rounded" },
    toggle_key = '<C-s>',
}

require "lsp_signature".setup(signature_config)

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    
    --Enable completion triggered by the vim default completion <c-x><c-o>

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings

    local opts = { noremap=true, silent=true }

    buf_set_keymap('n', 'gD',       '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd',       '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gi',       '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', 'gr',       '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', 'K',        '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)

    -- Activate the illuminate plugin to highligh uses of the word under the cursor

    require'illuminate'.on_attach(client)

end

-- Setup the analyzers

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Language server for Rust 

nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    flags = { debounce_text_changes = 150, },
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    },
    capabilities = capabilities
})

-- Language server for C++

nvim_lsp.clangd.setup({ 
    on_attach=on_attach,
    capabilities = capabilities
})

-- Language server for Python

nvim_lsp.jedi_language_server.setup({ 
    on_attach=on_attach,
    capabilities = capabilities
})

EOF


" Illuminate plugin config
" Rather than the standard highlighting, *underline* occurrences of the word under the cursor

augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END

let g:Illuminate_delay = 1000


" Set up nvim-autopais

lua << EOF

require('nvim-autopairs').setup({
    -- Don't add a closing pair if it already has a close pair in the same line
    enable_check_bracket_line = false
})

EOF



" Set up Treesitter

lua << EOF

require'nvim-treesitter.configs'.setup { 
    highlight = {
        enable = true,
    },
    matchup = {
        enable = true,
    },
}

EOF




" Configuration of the cheatsheet plugins
" I'm only interested in my own cheatsheets, not the ones that came along with the plugin

lua << EOF

require("cheatsheet").setup({
    bundled_cheatsheets = false,
    bundled_plugin_cheatsheets = false,
})

EOF


" Configuration of Telescope

lua << EOF

require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {height = 0.6},
  },
})

EOF



" Configuration of Trouble

lua << EOF

require("trouble").setup({
    position = "bottom",
    height = 13
})

EOF



" Configuration for todo-comments

lua << EOF

require("todo-comments").setup({

})

EOF


