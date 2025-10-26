return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {

                --Formateadores 
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.prettierd,

                --diagnosticos 
                --null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.diagnostics.mypy,

                null_ls.builtins.hover.dictionary,
                null_ls.builtins.hover.printenv,
            }
        })
        vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    end

}
