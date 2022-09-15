

vim.g.gutentags_enabled = 1                        -- Set to 0 if no ctags updates are desired
vim.g.gutentags_ctags_extra_args = {'--recurse', '--extras=+f', '--exclude=build', '--exclude=docs', '--exclude=dependencies'}    
vim.g.gutentags_ctags_exclude = {'*.md'}
-- vim.g.gutentags_trace = 1                          -- To debug in case of trouble

