
-- Setup the LSP analyzers for various coding languages.

local nvim_lsp = require('lspconfig')
local navic = require("nvim-navic")
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- For each analyzer we will provide some key mappings that we will introduce with an on_attach function.
-- In addition we attach the navic client, that shows in the statusline where we are in the code.

local opts = { noremap=true, silent=true }

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')   -- Enable completion triggered by <c-x><c-o>

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

    navic.attach(client, bufnr)
end


-- Language server for Rust 

nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    flags = { debounce_text_changes = 150, },
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    },
    capabilities = capabilities
})

-- Language server for C++
-- clangd relies on a 'compile_commands.json' file with the compile commands.
-- Use cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 to generate one

nvim_lsp.clangd.setup({ 
    on_attach=on_attach,
    capabilities = capabilities
})

-- Language server for Python

nvim_lsp.jedi_language_server.setup({ 
    on_attach=on_attach,
    capabilities = capabilities
})


-- Language server for cmake

nvim_lsp.cmake.setup({

})


-- Beautify the diagnostic signs "E" and "W".
-- Requires NerdFonts to be installed.

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end
