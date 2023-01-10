local cmp = require('cmp')

cmp.setup {
    sources = {
        { name = "path" },
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "crates" },
    },
}

vim.api.nvim_create_autocmd("BufRead", {
    group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
    pattern = "Cargo.toml",
    callback = function()
        cmp.setup.buffer({ sources = { { name = "crates" } } })
    end,
})
