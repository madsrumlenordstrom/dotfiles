local lspconfig = require('lspconfig')

-- C and C++ language server
lspconfig.ccls.setup {
  init_options = {
    cache = {
      directory = "/tmp/ccls-cache",
      format = "binary",
    };
  }
}

-- Lua language server
lspconfig.sumneko_lua.setup {
  setting = {
    Lua = {
      format = {
        enable = true,
      },
      runtime = {
        version = "LuaJIT",
      },
      completion = { enable = true, callSnippet = "Both" },
      workspace = {
        -- adjust these two values if your performance is not optimal
        maxPreload = 1000,
        preloadFileSize = 1000,
      },
      telemetry = { enable = false },
    },
  }
}
