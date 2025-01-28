return {
  "folke/noice.nvim",
  opts = {
    commands = {
      history = {
        -- options for the message history that you get with `:Noice`
        view = "vsplit",
        opts = { enter = true, format = "details" },
      },
    },
  },
}
