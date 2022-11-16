
-- Set Neovim options

vim.cmd("filetype on")                                 -- Enable filetype recognition
vim.cmd("syntax enable")                               -- Enable syntax highlighting

vim.opt.encoding="utf-8"                               -- UTF-8 encoding
vim.opt.ttyfast = true                                 -- Faster terminal updates
vim.opt.number = true                                  -- Line numbering must be on by default
vim.opt.tabstop = 4                                    -- Tabs are 4 columns wide
vim.opt.softtabstop = 4                                -- When hitting the <TAB> key, use a tab of 4 columns
vim.opt.expandtab = true                               -- Tabs should always be expanded in spaces
vim.opt.autoindent = true                              -- Use indentation from previous line for next line
vim.opt.cindent = true                                 -- C-style auto-indentation
vim.opt.cinkeys:remove('0#')                           -- Avoid bad indentation of Python # comment lines
vim.opt.indentkeys:remove('0#')                        -- Avoid bad indentation of Python # comment lines
vim.opt.shiftwidth = 4                                 -- Indentation should always be done using 4 spaces
vim.opt.cursorline = true                              -- Highlight the line where the cursor is
vim.opt.cursorcolumn = true                            -- Highlight the column where the cursor is
vim.opt.colorcolumn = "150"                            -- Highlight column 150
vim.opt.showmatch = true                               -- Show matching pairs of brackets
vim.opt.mat = 3                                        -- Blink 3 tenths of a second when matching
vim.opt.incsearch = true                               -- Incremental search = search starts from 1st char you type
vim.opt.hlsearch = true                                -- Highlight search results
vim.opt.smartcase = true                               -- Case-insensitive search except when capitals are used
vim.opt.backup = false                                 -- Avoid backups
vim.opt.confirm = true                                 -- Ask to save changes
vim.opt.visualbell = true                              -- Use visual bell instead of beeping
vim.opt.mouse = 'a'                                    -- Enable use of the mouse for all modes
vim.opt.showcmd = true                                 -- Show information about the current command going on
vim.opt.hidden = true                                  -- To avoid discarding a terminal when closed.
vim.opt.autoread = true                                -- Watch for file changes
vim.opt.autowrite = true                               -- Automatically save when switching/abandoning a buffer
vim.opt.report = 0                                     -- Always report the number of lines that were changed
vim.opt.scrolloff = 2                                  -- When scrolling, keep cursor 2 lines from top or bottom
vim.opt.shortmess:append('I')                          -- Do not show the intro message at start-up
vim.opt.shortmess:append('c')                          -- No redudant messages when using auto-completion
vim.opt.laststatus = 2                                 -- Always show the status line
vim.opt.wrap = false                                   -- Don't wrap too long lines by default
vim.opt.relativenumber = true                          -- Line numbering is relative to the current line
vim.opt.backspace = {"indent", "eol", "start"}         -- Allow backspacing over autoindent, line breaks & start of insert action
vim.opt.foldmethod = "indent"                          -- Use indentation to decide how to fold
vim.opt.foldlevel = 99                                 -- No folding at all when opening a file
vim.opt.lazyredraw = true                              -- Don't update the display while executing macros
vim.opt.splitright = true                              -- When using :vsplit, put new window right of the current one
vim.opt.splitbelow = true                              -- When using :split, put new window below the current one
vim.opt.whichwrap = '<,>,h,l,[,]'                      -- Make left/right arrow keys and h/l wrap to previous/next line in any mode
vim.opt.clipboard = "unnamedplus"                      -- Yank to the system clipboard instead of vim default register
vim.opt.completeopt = {"menu", "menuone", "noselect"}  -- Better auto-completion experience
vim.opt.listchars = {eol='↲',tab='▸ ',trail='·',extends='→',precedes='←',space='·'}  -- List all white space characters. Show with :set list

vim.opt.background = "dark"
vim.opt.guifont = {"Fira Code", ":h14"}

vim.opt.undofile = true                                -- Allow for persistent undo across neovim sessions
vim.opt.undodir=os.getenv('HOME') .. "/.nvim/undodir"  -- Centralize all undo information in one directory (create the dir first!)

vim.opt.wildmenu = true                                -- Tab completion with a choice list on the command line
vim.opt.wildmode = "list:longest"
vim.opt.wildignore = {'.hg','.git','.svn',             -- Ignore version control dirs in the wildmenu
                      '*.aux','*.out','*.toc',         -- Ignore LaTeX intermediate files in the wildmenu
                      '*.jpg','*.bmp','*.gif','*.png','*.jpeg',   -- Ignore binary images
                      '*.o','*.obj','*.exe',           -- Ignore compiled object files
                      '*.DS_Store',                    -- Ignore OSX specific file
                      '*.pyc'}                         -- Ignore Python byte code


vim.g.HardMode_level = 'wannabe'                       -- Config HardMode plugin. Disable arrows but not hjkl.


-- Set the options that are only relevant for neovide

if vim.g.neovide then
    vim.opt.guifont = {"Fira Code", ":h15"}
    vim.g.neovide_transparancy = 0.0
    vim.g.transparancy = 0.5
    vim.g.neovide_hide_mouse_when_typing = true
end

