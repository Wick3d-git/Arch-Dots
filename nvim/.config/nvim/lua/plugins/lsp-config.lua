return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "html", "marksman", "pyright", "gopls", "terraformls", "yamlls", "clangd", "bashls", "ts_ls", "rust_analyzer"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      lspconfig.lua_ls.setup({capabilities = capabilities})
      lspconfig.html.setup({capabilities = capabilities})
      lspconfig.ts_ls.setup({capabilities = capabilities})
      lspconfig.marksman.setup({capabilities = capabilities})
      lspconfig.pyright.setup({capabilities = capabilities})
      lspconfig.gopls.setup({capabilities = capabilities})
      lspconfig.terraformls.setup({capabilities = capabilities})
      lspconfig.yamlls.setup({capabilities = capabilities})
      lspconfig.clangd.setup({capabilities = capabilities})
      lspconfig.bashls.setup({capabilities = capabilities})
      lspconfig.rust_analyzer.setup({})
      vim.keymap.set('n','K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
