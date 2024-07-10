-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec[]
local pack = {
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
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
}

---@type LazySpec[]
local markdown_and_latex = {
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
}

---@type LazySpec[]
local note_taking = {
  { import = "astrocommunity.note-taking.neorg" },
}

---@type LazySpec[]
local colorscheme = {
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
}

---@type LazySpec[]
local editing_support = {
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
}

---@type LazySpec[]
local indent = {
  { import = "astrocommunity.indent.indent-rainbowline" },
}

---@type LazySpec[]
local keybinding = {
  { import = "astrocommunity.keybinding.nvcheatsheet-nvim", enabled = false },
}

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  unpack(pack),
  unpack(markdown_and_latex),
  unpack(note_taking),
  unpack(colorscheme),
  unpack(editing_support),
  unpack(indent),
  unpack(keybinding),
}
