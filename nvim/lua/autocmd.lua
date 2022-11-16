
-- Yanked text should be highlighted for a short while

vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank() {timeout=350}]])


-- Disable the automatically inserting the comment symbol
-- E.g. When typing in Python # xxx <cr> a new comment symbol #
-- is inserted on the next line by default. I dislike it.

vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")


-- Make sure that the buffer list is not swamped with fugitive buffers after opening git objects.

vim.cmd("autocmd BufReadPost fugitive://* set bufhidden=delete")


-- Make sure that the buffer list is not swamped with fugitive buffers after opening git objects.

vim.cmd("autocmd BufReadPost fugitive://* set bufhidden=delete")


-- Make sure that the HardMode plugin applies to disable the arrow keys

vim.cmd("autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()")

