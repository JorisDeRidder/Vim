
├── after/            # Settings for specific file types
├── init.lua          # main entry point
├── lua/
│   ├── setup/        # each plugin setup is in its own file
│   ├── autocmd.lua   # autocommands
│   ├── mappings.lua  # Vim keymaps definitions -> config/which.lua for more
│   ├── options.lua   # non plugin related (vim) options
│   ├── plugins.lua   # define plugins to be managed via Packer
├── plugin/           # packer_compiled
├── snippets/         # snippets directory (luasnip style)
