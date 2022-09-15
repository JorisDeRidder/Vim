
-- The regular terminal is horizontal one at the bottom of the screen

require('toggleterm').setup({
    size = 23,
    open_mapping = [[\\]],
    hide_numbers=true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
})



-- To navigate out of the Terminal, I configure <Alt-ArrowUp>. 
-- Moving back into the terminal is already configured with 
-- <Alt-ArrowDown> in the mappings.lua file.

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-Up>', [[<C-\><C-n><C-W>k]], opts)
end

vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')


