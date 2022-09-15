

vim.g.vimtex_view_method = 'skim'                     -- Use Skim as the default pdf viewer for LaTeX documents
vim.g.vimtex_quickfix_mode = 2                        -- Open quickfix only when there are issues, and don't make it the active window
vim.g.vimtex_quickfix_open_on_warning = 0             -- Only open the quickfix on errors, not warnings
vim.g.vimtex_quickfix_autoclose_after_keystrokes = 1  -- Close quickfix window after 1 motion (e.g. cursor moved)
vim.g.vimtex_quickfix_autojump = 0                    -- Don't auto-jump to the first LaTeX error when there are compilation errors
vim.g.vimtex_syntax_conceal_disable = 1               -- Don't conceal LaTeX commands like \alpha with a UTF character. 

