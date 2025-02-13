return {
  { "ziglang/zig.vim" },
  {
    "nvim-lspconfig",
    opts = {
      servers = {
        zls = {
          cmd = { vim.fn.expand("$HOME/.zvm/bin/zls") },
        },
      },
    },
  },
}
