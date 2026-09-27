return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "clangd", "cssls" },
    })

    local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
    local capabilities = ok and cmp_lsp.default_capabilities() or vim.lsp.protocol.make_client_capabilities()

    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    })

    vim.lsp.config("pyright", {
      capabilities = capabilities,
    })

    vim.lsp.enable({ "lua_ls", "pyright", "clangd", "cssls"})
  end,
}
