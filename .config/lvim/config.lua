------------------------
-- Config
------------------------
vim.o.autoread = true
vim.opt.relativenumber = true
vim.diagnostic.config({ virtual_text = true })
-- vim.opt.listchars:append "eol:↴"
-- vim.opt.listchars:append "space:⋅"

-- lvim.colorscheme = "github_light"
-- lvim.colorscheme = "github_dark_dimmed"
-- lvim.colorscheme = "github_dark_default"
-- lvim.colorscheme = "gruvbox"
lvim.colorscheme = "lunar"

-- lvim.colorscheme = "nord"
-- lvim.leader = "space"
lvim.builtin.nvimtree.setup.filters.dotfiles = true
lvim.builtin.nvimtree.setup.view.width = 35
lvim.builtin.treesitter.highlight.enable = true
lvim.format_on_save.enabled = true
-- lvim.builtin.treesitter.rainbow = {
--   enable = true,
--   query = {
--     "rainbow-parens",
--   },
-- }
-- lvim.builtin.treesitter.autotag = true

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
  "go",
}

------------------------
-- Plugins
------------------------
lvim.plugins = {
  -- Themes
  -- "lunarvim/colorschemes",
  "ellisonleao/gruvbox.nvim",
  "shaunsingh/nord.nvim",
  'projekt0n/github-nvim-theme',
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- System
  "tpope/vim-surround",
  -- "nvim-neotest/neotest",
  -- { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
  {
    "folke/zen-mode.nvim",
    -- opts = {}
    config = function()
      -- Example mapping to toggle outline
      vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>",
        { desc = "Toggle ZenMode" })

      require("zen-mode").setup {
        -- Your setup opts here (leave empty to use defaults)
      }
    end,
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    -- version = "*",
    version = "8.9.0",
    -- config = true,
    config = function()
      vim.keymap.set("n", "<leader>Z", "<cmd>Neorg index<CR>",
        { desc = "Toggle Neorg Index" })

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
  -- {
  -- },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  --   config = function(_, opts) require 'lsp_signature'.setup(opts) end
  -- },
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
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup {
        nextls = {
          enable = false,
          init_options = {
            experimental = {
              completions = {
                enable = true
              }
            }

          }
        },
        credo = {
          enable = true
        },
        elixirls = {
          enable = false,
          settings = elixirls.settings {
            dialyzerEnabled = false,
            enableTestLenses = false,
            fetchDeps = false,
            suggestSpecs = false,
            completions = false
          },
          on_attach = function(_, _)
            vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          end,
        }
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  }
}

------------------------
-- Lintters
------------------------
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  -- { command = "ruff",          filetypes = { "python" }, args = { "" } },
  { command = "shellcheck", filetypes = { "bash" } },
  -- { command = "sqlfluff",      filetypes = { "sql" },    args = { "--dialect", "postgres" } },
  -- { command = "staticcheck",   filetypes = { "go" } },
  -- { command = "golangci-lint", filetypes = { "go" } }
}

------------------------
-- Formatters
------------------------
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  -- { command = "black",     filetypes = { "python" } },
  -- { command = "ruff",      filetypes = { "python" },                               args = { "a" } },
  { command = "shfmt",     filetypes = { "sh", "bash" } },
  { command = "prettier",  filetypes = { "yml", "yaml", "markdown", "javascript" } },
  { command = "goimports", filetypes = { "go" } },
  { command = "gofumpt",   filetypes = { "go" } },
  { command = "sqlfmt",    filetypes = { "sql" } },
  -- { command = "sql-formatter", filetypes = { "sql" } },
}

------------------------
-- Testing
------------------------
-- require("neotest").setup({
--   adapters = {
--     require("neotest-python")({
--       -- Extra arguments for nvim-dap configuration
--       -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
--       dap = {
--         justMyCode = false,
--         console = "integratedTerminal",
--       },
--       args = { "--log-level", "DEBUG", "--quiet" },
--       runner = "pytest",
--     })
--   }
-- })


------------------------
-- LSP
------------------------
lvim.lsp.installer.setup.ensure_installed = {
  "bashls",
  "cssls",
  -- "elixirls",
  -- "nextls"
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
  filetypes = { "css", "html", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "heex", "elixir" },
})

-- HTML LSP
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "html" })
require("lvim.lsp.manager").setup("html", {
  filetypes = { "heex" },
})

require("lvim.lsp.manager").setup("gleam", {
})

require("lvim.lsp.manager").setup("taplo", {
})
