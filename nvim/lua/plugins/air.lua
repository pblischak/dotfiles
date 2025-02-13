local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

-- Check if the config is already defined (useful when reloading this file)
if not configs.air then
  configs.air = {
    default_config = {
      cmd = { vim.fn.expand("$HOME/.local/bin/air"), "language-server" },
      filetypes = { "r", "rmd" },
      root_dir = function(fname)
        return vim.fs.dirname(vim.fs.find(".git", { path = fname, upward = true })[1]) or vim.loop.os_homedir()
      end,
      settings = {},
    },
  }
end

lspconfig.air.setup({})

return {
  "nvim-lspconfig",
}
