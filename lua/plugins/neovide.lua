if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        -- guifont = "Zed Plex Mono:h14",
        -- line spacing
        linespace = 0,
      },
      g = { -- configure vim.g variables
        -- configure scaling
        neovide_scale_factor = 1.0,
        -- configure padding
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,

        neovide_refresh_rate = 240,
        neovide_cursor_antialiasing = true,
        neovide_cursor_vfx_mode = "railgun",
        neovide_transparency = 0.95,
      },
    },
    mappings = {
      v = {
        ["<C-S-c>"] = '"+y', -- Copy in visual mode
        ["<C-S-v>"] = '"+P', -- Paste in visual mode
      },
      n = {
        ["<C-S-v>"] = '"+P', -- Paste in normal mode
      },
      c = {
        ["<C-S-v>"] = "<C-R>+", -- Paste in command mode
      },
      i = {
        ["<C-S-v>"] = "<C-R>+", -- Paste in insert mode
      },
    },
  },
}
