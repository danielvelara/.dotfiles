
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.plugins = {
  -- { "lunarvim/colorschemes" },
  { "ChristianChiarulli/swenv.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  {
    "tpope/vim-surround",
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 50q0
    -- end
  },
  { 'projekt0n/github-nvim-theme' },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
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
    end,
  },


}

lvim.builtin.treesitter.ensure_installed = {
  "javascript",
  "json",
  "lua",
  "typescript",
  "tsx",
  "css",
  "elixir",
  "heex",
}

lvim.lsp.installer.setup.ensure_installed = {
  "lua_ls",
  "cssls",
  "tsserver",
  "tailwindcss",
  "elixirls",
  "emmet_ls",
}


local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black",    filetypes = { "python" } },
  { command = "gofumpt",  filetypes = { "go" } },
  { command = "shfmt",    filetypes = { "sh", "zsh" } },
  { command = "prettier", filetypes = { "yml", "yaml", "markdown" } },
}
lvim.format_on_save.enabled = true
-- lvim.format_on_save.pattern = { "*.py" }

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "ruff", filetypes = { "python" } }
-- }

-- lvim.colorscheme = "github_dark_default"
lvim.builtin.nvimtree.setup.filters.dotfiles = true
vim.o.autoread = true


-- Custom Python Config
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local pyright_opts = {
--   single_file_support = true,
--   settings = {
--     pyright = {
--       disableLanguageServices = false,
--       disableOrganizeImports = false
--     },
--     python = {
--       analysis = {
--         autoImportCompletions = true,
--         autoSearchPaths = true,
--         diagnosticMode = "workspace", -- openFilesOnly, workspace
--         typeCheckingMode = "strict",  -- off, basic, strict
--         useLibraryCodeForTypes = true
--       }
--     }
--   },
-- }
-- require("lvim.lsp.manager").setup("pyright", pyright_opts)


vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })
local opts = {
  root_dir = function(fname)
    local util = require "lspconfig/util"
    return util.root_pattern("assets/tailwind.config.js", "tailwind.config.js", "tailwind.config.cjs", "tailwind.js",
      "tailwind.cjs")(fname)
  end,
  init_options = {
    userLanguages = { heex = "html", elixir = "html" }
  },
}
require("lvim.lsp.manager").setup("tailwindcss", opts)
lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}


--   -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
--   -- **Note:** only the options listed in the table are supported.
--   init_options = {
--     --- @type string[]
--     excludeLanguages = {},
--     --- @type string[]
--     extensionsPath = {},
--     --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
--     preferences = {},
--     --- @type boolean Defaults to `true`
--     showAbbreviationSuggestions = true,
--     --- @type "always" | "never" Defaults to `"always"`
--     showExpandedAbbreviation = "always",
--     --- @type boolean Defaults to `false`
--     showSuggestionsAsSnippets = false,
--     --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
--     syntaxProfiles = {},
--     --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
--     variables = {},
--   },
require("lvim.lsp.manager").setup("emmet_ls", {
  filetypes = { "css", "eruby", "html", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "heex", "eelixir" },
  -- filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "heex", "eelixir" },
})
-- require("lvim.lsp.manager").setup("go", {
-- gofumpt = true,
-- gofmt = 'gofumpt',
-- staticcheck = false,
-- })
