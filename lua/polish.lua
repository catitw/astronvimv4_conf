-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

vim.opt.shell = "fish"

if vim.g.neovide then
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_vfx_mode = "railgun"

  vim.g.neovide_transparency = 0.95

  vim.keymap.set("v", "<C-S-c>", '"+y') -- Copy in visual mode
  vim.keymap.set("n", "<C-S-v>", '"+P') -- Paste in normal mode
  vim.keymap.set("v", "<C-S-v>", '"+P') -- Paste in visual mode
  vim.keymap.set("c", "<C-S-v>", "<C-R>+") -- Paste in command mode
  vim.keymap.set("i", "<C-S-v>", "<C-R>+") -- Paste in insert mode
  vim.opt.guifont = "FiraCode:h14"
  vim.opt.linespace = 0
end
