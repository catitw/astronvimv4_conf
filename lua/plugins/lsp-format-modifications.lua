---@type LazySpec
return {
  "joechrisellis/lsp-format-modifications.nvim",
  enabled = false,

  dependencies = {
    "AstroNvim/astrocore",

    -- according to config of `lvimuser/lsp-inlayhints.nvim`,
    opts = {
      autocmds = {
        LspAttach_format_modifications = {
          {
            event = "LspAttach",
            callback = function(args)
              if not (args.data and args.data.client_id) then return end
              local client = vim.lsp.get_client_by_id(args.data.client_id)
              if client and client.server_capabilities.inlayHintProvider then
                local lsp_format_modifications = require "lsp-format-modifications"

                require("astrocore").set_mappings({
                  n = {
                    ["<Leader>lm"] = {
                      function() lsp_format_modifications.format_modifications(client, args.buf) end,
                      desc = "Format Modifications",
                    },
                  },
                }, { buffer = args.buf })
              end
            end,
          },
        },
      },
    },
  },
}
