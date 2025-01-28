-- why deprecated
-- we enabled community plugin `fzf-lua`, so just disable `telescope`
--
-- note: `LazyVim` replace plugin `telescope-fzf-native.nvim` with plugin `fzf-lua` in version 14.x,
-- see [LazyVim News](https://www.lazyvim.org/news)

-- see `https://github.com/nvim-telescope/telescope-fzf-native.nvim`

---@type LazySpec
return {
  "nvim-telescope/telescope-fzf-native.nvim",
  lazy = true,
  build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
  specs = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-telescope/telescope-fzf-native.nvim" },
      opts = function() require("telescope").load_extension "fzf" end,
    },
  },

  enabled = false,
}
