
vim.g.mapleader = '\\'                                 -- '\' needs to be escaped

local map = vim.api.nvim_set_keymap


-- Hop's navigation commands

local opts = { noremap = true, silent = true }

map('n', 's', '<Cmd>HopChar1<CR>', opts)                     -- Use s x to view and jump to an occurrence of x
map('n', 'S', '<Cmd>HopPattern<CR>', opts)                   -- Use S to view and jump to all occurrences of the pattern


-- Mappings to interact with the buffer line (barbar plugin)

local opts = { noremap = true, silent = true }

map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)         -- Use \1 to switch to buffer 1
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)         -- Use \2 to switch to buffer 2
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)         -- Use \3 to switch to buffer 3
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)         -- Use \4 to switch to buffer 4
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)         -- Use \5 to switch to buffer 5
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)         -- Use \6 to switch to buffer 6
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)         -- Use \7 to switch to buffer 7
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)         -- Use \8 to switch to buffer 8
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)         -- Use \9 to switch to buffer 9


-- Leader commands. Cf fzf.vim for many of the commands.
--    \\ : Toggle a terminal   
--    \b : Toggle Tag _B_ar
--    \c : Search in recent vim _c_ommands. 
--    \e : Toggle list error and warning diagnostics in this workspace
--    \f : Find a _f_ile in current and sub-directories
--    \g : _G_rep all files in current and sub-directories, using ripgrep. 
--    \j : Toggle list of references to the word under the cursor
--    \q : Toggle file tree
--    \r : Search in _r_ecent files
--    \s : _S_earch the current buffer
--    \t : Search _t_ags in current file
--    \T : Search _T_ags in the entire project
--    \p : List recently visited projects


local opts = { noremap = true }

map('n', '<leader>b', '<Cmd>SymbolsOutline<cr>', opts)
map('n', '<leader>c', '<Cmd>History:<CR>', opts)
map('n', '<leader>e', '<Cmd>TroubleToggle workspace_diagnostics<CR>', opts)
map('n', '<leader>f', '<Cmd>Files<CR>', opts)
map('n', '<leader>g', '<Cmd>Rg<CR>', opts)
map('n', '<leader>j', '<Cmd>TroubleToggle lsp_references<CR>', opts)
map('n', '<leader>q', '<Cmd>Neotree toggle<CR>', opts)
map('n', '<leader>r', '<Cmd>History<CR>', opts)
map('n', '<leader>s', '<Cmd>BLines<CR>', opts)
map('n', '<leader>t', '<Cmd>BTags<CR>', opts)
map('n', '<leader>T', '<Cmd>Tags<CR>', opts)
map('n', '<leader>p', '<Cmd>Telescope projects<CR>', opts)


-- Use <Space> in visual mode to send the selection to the terminal (e.g. to the Python session)

map('v', '<Space>', '<Esc><Cmd>ToggleTermSendVisualLines<CR>', opts)


-- Easy cycling between windows using the Alt and the arrow keys in normal mode
-- Can't use Ctrl because OSX already claims <ctrl>-Right.
-- Move to window up:    Alt-arrow-up 
-- Move to window down:  Alt-arrow-down
-- Move to window left:  Alt-arrow-left
-- Move to window right: Alt-arrow-right
-- Don't add any comments after <CR> or this will give problems with switching to and from the (toggled) terminal.

local opts = { noremap = true }

map('n', '<A-Up>',    '<Cmd>wincmd k<CR>', opts)
map('n', '<A-Down>',  '<Cmd>wincmd j<CR>', opts)
map('n', '<A-Left>',  '<Cmd>wincmd h<CR>', opts)
map('n', '<A-Right>', '<Cmd>wincmd l<CR>', opts)


-- I keep on mistyping :W instead of :w to write a file, so let's alias it.

vim.api.nvim_create_user_command('W', 'w', {bang = false} )
vim.api.nvim_create_user_command('Wq', 'wq', {bang = false} )


-- The following allows to make a selection, and hit @ to run a macro on all selected lines

vim.cmd([[
    xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

    function! ExecuteMacroOverVisualRange()
      echo "@".getcmdline()
      execute ":'<,'>normal @".nr2char(getchar())
    endfunction
]])


-- The standard way of inserting greek/math letters in insert mode is rather
-- tedious. Define the following mappings to facilitate this. 
-- E.g. \gd in insert mode stands for _g_reek letter _d_elta
-- Do not define these in LaTeX file that are littered with \commands.

vim.cmd([[
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
autocmd VimEnter,BufRead,BufNew * call DefineGreekLetters()

]])

