-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

local function merge_plugin_configs(plugins)
  local all_plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.lua" },
  }

  for _, category in pairs(plugins) do
    for _, plugin in ipairs(category) do
      table.insert(all_plugins, plugin)
    end
  end

  return all_plugins
end

local plugin_categories = {
  ---@type LazySpec[]
  pack = {
    { import = "astrocommunity.pack.astro" },
    { import = "astrocommunity.pack.bash" },
    { import = "astrocommunity.pack.cpp" },
    { import = "astrocommunity.pack.cmake" },
    { import = "astrocommunity.pack.docker" },
    { import = "astrocommunity.pack.go" },
    { import = "astrocommunity.pack.java" },
    { import = "astrocommunity.pack.json" },
    { import = "astrocommunity.pack.kotlin" },
    { import = "astrocommunity.pack.markdown" },
    { import = "astrocommunity.pack.python-ruff" },
    -- { import = "astrocommunity.pack.python" },
    { import = "astrocommunity.pack.rust" },
    { import = "astrocommunity.pack.toml" },
    { import = "astrocommunity.pack.yaml" },
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.pack.zig" },
  },

  ---@type LazySpec[]
  markdown_and_latex = {
    { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  },

  ---@type LazySpec[]
  note_taking = {
    { import = "astrocommunity.note-taking.neorg" },
  },

  ---@type LazySpec[]
  colorscheme = {
    { import = "astrocommunity.colorscheme.catppuccin" },
    { import = "astrocommunity.colorscheme.tokyonight-nvim" },
    { import = "astrocommunity.colorscheme.nightfox-nvim" },
    { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  },

  editing_support = {
    { import = "astrocommunity.editing-support.comment-box-nvim" },
    -- a better annotation generator
    { import = "astrocommunity.editing-support.neogen" },
    -- describe the regex under the cursor, toggled with `gR`
    { import = "astrocommunity.editing-support.nvim-regexplainer" },
    { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
    -- provide `:SudaWrite`
    { import = "astrocommunity.editing-support.suda-vim" },
    -- <CR> : incremental selection
    -- <BS> : decremental selection
    { import = "astrocommunity.editing-support.wildfire-nvim" },
  },

  ---@type LazySpec[]
  indent = {
    { import = "astrocommunity.indent.indent-rainbowline" },
  },

  ---@type LazySpec[]
  keybinding = {
    -- key `F1`: toggle cheatsheet
    { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },
  },

  ---@type LazySpec[]
  scrolling = {
    { import = "astrocommunity.scrolling.mini-animate" },
  },

  ---@type LazySpec[]
  split_and_window = {
    -- cmd `:WindowsEnableAutowidth`, `:WindowsDisableAutowidth`, `:WindowsToggleAutowidth`
    { import = "astrocommunity.split-and-window.windows-nvim" },
    { import = "astrocommunity.split-and-window.colorful-winsep-nvim" },
    -- key `<Leader>um`: toggle minimap
    { import = "astrocommunity.split-and-window.minimap-vim" },
  },

  ---@type LazySpec[]
  color = {
    -- key `<Leader>uW`: toggle twilight
    { import = "astrocommunity.color.twilight-nvim" },
    -- key `<Leader>uT`: toggle transparent
    { import = "astrocommunity.color.transparent-nvim" },
  },

  ---@type LazySpec[]
  motion = {
    { import = "astrocommunity.motion.flash-nvim", enabled = false },
  },

  ---@type LazySpec[]
  completion = {
    { import = "astrocommunity.completion.copilot-lua-cmp", enabled = false },
  },

  ---@type LazySpec[]
  debugging = {
    { import = "astrocommunity.debugging.telescope-dap-nvim" },
    { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  },
  ---@type LazySpec[]
  recipes = {
    { import = "astrocommunity.recipes.neovide" },
  },

  ---@type LazySpec[]
  neovim_lua_development = {
    { import = "astrocommunity.neovim-lua-development.lazydev-nvim" },
  },

  ---@type LazySpec[]
  lsp = {
    { import = "astrocommunity.lsp.actions-preview-nvim" },
    { import = "astrocommunity.lsp.nvim-lsp-endhints" },
    { import = "astrocommunity.lsp.lspsaga-nvim" },
  },

  ---@type LazySpec[]
  utility = {
    { import = "astrocommunity.utility.noice-nvim" },
    { import = "astrocommunity.utility.neodim" },
  },

  ---@type LazySpec[]
  workflow = {
    { import = "astrocommunity.workflow.precognition-nvim" },
  },
}

---@type LazySpec
return merge_plugin_configs(plugin_categories)
