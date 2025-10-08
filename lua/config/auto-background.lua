local M = {}

function M.set_background_by_time()
  local hour = tonumber(os.date("%H"))

  if hour >= 6 and hour < 18 then
    vim.opt.background = "light"
  else
    vim.opt.background = "dark"
  end
end

function M.setup()
  M.set_background_by_time()

  local timer = vim.loop.new_timer()
  timer:start(
    0,
    60000,
    vim.schedule_wrap(function()
      M.set_background_by_time()
    end)
  )
end

return M
