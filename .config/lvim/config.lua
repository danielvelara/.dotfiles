------------------------
-- Config
------------------------
vim.o.autoread = true
vim.opt.relativenumber = true
vim.diagnostic.config({ virtual_text = true })
-- vim.opt.listchars:append "eol:↴"
-- vim.opt.listchars:append "space:⋅"

lvim.colorscheme = "gruvbox"
lvim.builtin.nvimtree.setup.filters.dotfiles = true
lvim.builtin.treesitter.highlight.enable = true

------------------------
-- Treesitter
------------------------
lvim.builtin.treesitter.ensure_installed = {
  "javascript",
  "typescript",
  "json",
  "tsx",
  "css",
  "elixir",
  "heex",
  "python",
  "lua",
  "gomod",
  "go",
}
-- lvim.builtin.treesitter.rainbow = {
--   enable = true,
--   query = {
--     "rainbow-parens",
--   },
-- }
-- lvim.builtin.treesitter.autotag = true


------------------------
-- Formatters
------------------------
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black",     filetypes = { "python" } },
  { command = "ruff",      filetypes = { "python" },                               args = { "a" } },
  { command = "shfmt",     filetypes = { "sh", "bash" } },
  { command = "prettier",  filetypes = { "yml", "yaml", "markdown", "javascript" } },
  { command = "goimports", filetypes = { "go" } },
  { command = "gofumpt",   filetypes = { "go" } },
}
lvim.format_on_save.enabled = true
-- lvim.format_on_save.pattern = { "*.py" }


------------------------
-- Lintters
------------------------
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "ruff",          filetypes = { "python" }, args = { "" } },
  { command = "shellcheck",    filetypes = { "bash" } },
  { command = "staticcheck",   filetypes = { "go" } },
  { command = "golangci-lint", filetypes = { "go" } }
}


------------------------
-- DAP
------------------------
lvim.builtin.dap.active = true
-- Python DAP
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
  require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
end)
-- Go DAP
local dap_ok, dapgo = pcall(require, "dap-go")
if not dap_ok then
  return
end
dapgo.setup()


------------------------
-- Testing
------------------------
require("neotest").setup({
  adapters = {
    require("neotest-python")({
      -- Extra arguments for nvim-dap configuration
      -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
      dap = {
        justMyCode = false,
        console = "integratedTerminal",
      },
      args = { "--log-level", "DEBUG", "--quiet" },
      runner = "pytest",
    })
  }
})

------------------------
-- Plugins
------------------------
lvim.plugins = {
  -- Themes
  -- "lunarvim/colorschemes",
  "ellisonleao/gruvbox.nvim",
  'projekt0n/github-nvim-theme',
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- Go
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  -- Python
  "ChristianChiarulli/swenv.nvim",
  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest-python",
  -- System
  "tpope/vim-surround",
  "nvim-neotest/neotest",
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  --   config = function(_, opts) require 'lsp_signature'.setup(opts) end
  -- },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    priority = 1000,
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          -- ["core.ui"] = {},       -- Loads default behaviour
          -- ["core.tempus"] = {},   -- Loads default behaviour
          -- ["core.ui.calendar"] = {},
          ["core.keybinds"] = {
            config = {
              default_keybinds = true,
            }
          },
          -- ["core.ui.calendar"] = {},
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = {      -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes"
            },
          },
        },
      }
    end
  },
  {
    "hedyhli/outline.nvim",
    config = function()
      -- Example mapping to toggle outline
      vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
        { desc = "Toggle Outline" })

      require("outline").setup {
        -- Your setup opts here (leave empty to use defaults)
      }
    end,
  },
  {
    "scalameta/nvim-metals",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = { "scala", "sbt", "java" },
    opts = function()
      local metals_config = require("metals").bare_config()
      metals_config.on_attach = function(client, bufnr)
        -- your on_attach function
      end

      return metals_config
    end,
    config = function(self, metals_config)
      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = self.ft,
        callback = function()
          require("metals").initialize_or_attach(metals_config)
        end,
        group = nvim_metals_group,
      })
    end
  }
  -- {
  --   "elixir-tools/elixir-tools.nvim",
  --   version = "*",
  --   event = { "BufReadPre", "BufNewFile" },
  --   config = function()
  --     local elixir = require("elixir")
  --     local elixirls = require("elixir.elixirls")

  --     elixir.setup {
  --       nextls = { enable = true },
  --       credo = {},
  --       elixirls = {
  --         enable = true,
  --         settings = elixirls.settings {
  --           dialyzerEnabled = false,
  --           enableTestLenses = false,
  --         },
  --         on_attach = function(client, bufnr)
  --           vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
  --           vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
  --           vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
  --         end,
  --       }
  --     }
  --   end,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  -- }
}

------------------------
-- LSP
------------------------
lvim.lsp.installer.setup.ensure_installed = {
  "bashls",
  "cssls",
  "elixirls",
  "emmet_ls",
  "gopls",
  "html",
  "jsonls",
  "lua_ls",
  "pyright",
  "tailwindcss",
  "tsserver",
  "vimls",
}


-- Go LSP
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "gopls" })
require("lvim.lsp.manager").setup("gopls", {
  filetypes = { "go" },
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
  settings = {
    gopls = {
      usePlaceholders = false,
      gofumpt = true,
      staticcheck = true,
      codelenses = {
        generate = false,
        gc_details = false,
        test = true,
        tidy = true,
      },
    },
  },
})


-- Python LSP
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
require("lvim.lsp.manager").setup("pyright", {
  single_file_support = true,
  settings = {
    pyright = {
      disableLanguageServices = false,
      disableOrganizeImports = false
    },
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace", -- openFilesOnly, workspace
        typeCheckingMode = "basic",   -- off, basic, strict
        useLibraryCodeForTypes = true
      }
    }
  },
})
lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

-- Elixir LSP
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "nextls" })
require("lvim.lsp.manager").setup("nextls", {
  filetypes = { "ex" },
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
})

-- Lua LSP
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "lua_ls" })
require("lvim.lsp.manager").setup("lua_ls", {
  filetypes = { "lua" },
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
})

-- Bash LSP
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "bashls" })
require("lvim.lsp.manager").setup("bashls", {
  filetypes = { "sh", "zsh" },
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
})

-- Tailwind LSP Setup
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })
require("lvim.lsp.manager").setup("tailwindcss", {
  root_dir = function(fname)
    local util = require "lspconfig/util"
    return util.root_pattern("assets/tailwind.config.js", "tailwind.config.js", "tailwind.config.cjs", "tailwind.js",
      "tailwind.cjs")(fname)
  end,
  init_options = {
    userLanguages = { heex = "html", elixir = "html" }
  },
})

-- Emmet LSP
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "emmet_ls" })
require("lvim.lsp.manager").setup("emmet_ls", {
  filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "heex", "eelixir" },
})
