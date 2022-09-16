
local wilder = require("wilder")

wilder.setup({
    modes = {':', '/', '?'}
})


-- Configure the search pipeline 

wilder.set_option('pipeline', {
    wilder.branch(
        wilder.cmdline_pipeline({
            -- sets the language to use, 'vim' and 'python' are supported
            language = 'vim',
            -- 0 turns off fuzzy matching
            -- 1 turns on fuzzy matching
            -- 2 partial fuzzy matching (match does not have to begin with the same first letter)
            fuzzy = 1,
        })
    ),
})


-- The wilder menu should have border lines

wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlights = {
      border = 'Normal', -- highlight to use for the border
    },
    -- 'single', 'double', 'rounded' or 'solid'
    border = 'rounded',
  })
))

