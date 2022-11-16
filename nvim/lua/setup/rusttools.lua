
local rusttools = require("rust-tools")

-- TODO: rusttools not yet correctly integrated in LSP.

rusttools.setup({
    tools = {
        auto = true,                                -- Automatically set inlay hints
        only_current_line = true,                   -- Only show inlay hints for the current line
        inlay_hints = {
            show_parameter_hints = true,            -- Show parameter hints
            parameter_hints_prefix = " <- ",        -- Prefix for parameter hints
            other_hints_prefix = " <- ",            -- No need to differentiate the prefix
        },
    },
})
