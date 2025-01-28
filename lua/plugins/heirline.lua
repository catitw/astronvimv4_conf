return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astroui.status"
    local component = require "astroui.status.component"
    local condition = require "astroui.status.condition"

    -- add the mode text
    local mode_text_comp = component.mode { mode_text = { padding = { left = 1, right = 1 } } }

    local filename_block = function()
      return component.builder {
        {
          -- why not use `component.file_info()`
          --
          -- we need to custom the provider of `filename`, cause default impl will stylize the full path.
          -- > default provider def: `require "astroui.status.provider.filename"`
          provider = function() return vim.api.nvim_buf_get_name(0) end,
          condition = condition.is_file,
        },
        padding = { right = 1 },
      }
    end

    -- see [default heirline configuration of astronvim](https://docs.astronvim.com/recipes/status#default-heirline-configuration)
    opts.statusline = { -- statusline
      hl = { fg = "fg", bg = "bg" },
      mode_text_comp, -- default has no mode text: status.component.mode()
      component.git_branch(),
      filename_block(),
      component.file_info { filename = false },
      component.git_diff(),
      component.diagnostics(),
      component.fill(),
      component.cmd_info(),
      component.fill(),
      component.lsp(),
      component.virtual_env(),
      component.treesitter(),
      component.nav(),
      component.mode { surround = { separator = "right" } },
    }
  end,
}
