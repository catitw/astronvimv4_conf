-- note: do NOT import the community plugin `fuzzy-finder.snacks-picker`,
-- we will using the `fzf-lua` as fuzzy-finder.
--
-- here, we hope to use the plugins provided by `snacks.nvim` **except for the `picker`**.

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    -- note: `dressing.nvim` was replaced with `snacks.input` in `LazyVim` 14.x
    -- see [LazyVim News](https://www.lazyvim.org/news)
    input = { enabled = true },

    -- Visualize indent guides and scopes based on treesitter or indent.
    -- note: `indent-blankline.nvim` was replaced with `snacks.indent` in `LazyVim` 14.x
    indent = { enabled = true },
  },
  specs = {
    { "stevearc/dressing.nvim", opts = { select = { enabled = false } } },

    -- still keep this astronvim default plugin on
    -- { "lukas-reineke/indent-blankline.nvim", enabled = false },
  },
}
