return {
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        -- Load the wezterm types when the `wezterm` module is required
        -- Needs `justinsgithub/wezterm-types` to be installed
        { path = "wezterm-types", mods = { "wezterm" } },
      },
    },

    specs = {
      { "justinsgithub/wezterm-types" }, -- FIXME: use the correct `wezterm-terms` when avaliable
    },
  },
}
