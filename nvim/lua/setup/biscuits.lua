
require('nvim-biscuits').setup({
    default_config = {
        max_length = 50,
        min_distance = 10,
        prefix_string = " 📎 "
    },
    language_config = {
        html = {
            prefix_string = " 🌐 "
        },
        python = {
            disabled = true
        }
    }
})

