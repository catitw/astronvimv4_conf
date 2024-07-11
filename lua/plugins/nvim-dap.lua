local function split_to_list(input_str)
  local result = {}

  for word in input_str:gmatch "%S+" do
    table.insert(result, word)
  end

  return result
end

local origin_run = nil

local need_argv = false

--- Start a debug session with args if needed
---@param config dap.Configuration
---@param opts dap.run.opts?
local could_run_with_args = function(config, opts)
  -- for debug:
  -- vim.notify(vim.inspect(cfg))

  if need_argv then
    -- https://alpha2phi.medium.com/neovim-for-beginners-user-interface-568879ecfd6d
    vim.ui.input({
      prompt = "enter args: ",
    }, function(input)
      local input_args = split_to_list(input)
      config.args = input_args
      origin_run(config, opts)
    end)
  else
    config.args = nil
    origin_run(config, opts)
  end

  need_argv = false
end

return {
  "mfussenegger/nvim-dap",
  config = function()
    -- for hook
    local dap = require "dap"
    origin_run = dap.run
    dap.run = could_run_with_args
  end,
  keys = {
    {
      "<Leader>da",
      mode = { "n" },
      function()
        need_argv = true
        -- `continue()` will call `dap.run(config)` implictly
        require("dap").continue()
      end,
      desc = "Start/Continue With Args",
    },
  },
}
