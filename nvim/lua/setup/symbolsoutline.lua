
-- require("symbols-outline").setup({
--
-- })


require("symbols-outline").setup({

    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false,
    position = 'right',
    relative_width = false,
    width = 40,
    auto_close = false,
    show_numbers = false,
    show_relative_numbers = false,
    show_symbol_details = true,
    keymaps = { 
        close = {"<Esc>", "q"},               -- Close the tagbar
        goto_location = "<Cr>",               -- Show the tag in the code and move the cursor to it 
        focus_location = "o",                 -- Show the tag but keep the cursor in the tagbar
        toggle_preview = "K",
        rename_symbol = "r",
    },
    lsp_blacklist = {},
    symbol_blacklist = {},

})      
