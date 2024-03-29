
require("substitute").setup({
    on_substitute = nil,
    yank_substituted_text = false,
    range = {
        prefix = "c",
        prompt_current_text = false,
        confirm = false,
        complete_word = false,
        motion1 = false,
        motion2 = false,
        suffix = "",
    },
    exchange = {
        motion = false,
        use_esc_to_cancel = true,
    },
})
