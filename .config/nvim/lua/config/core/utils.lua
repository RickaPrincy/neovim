local utils = {
	editor = {},
	toggleterm = {},
	window = {}
}

-- tab
function utils.editor.set_tab_width(width)
  vim.bo.tabstop = width
  vim.bo.shiftwidth = width
  vim.bo.softtabstop = width
  print("Tab width set to " .. width)
end

-- toggleTerm
local Terminal = require('toggleterm.terminal').Terminal

function utils.toggleterm.open_new_horizontal()
  local term = Terminal:new({ direction = "horizontal", size = 0 })
  term:toggle()
end

function utils.toggleterm.open_new_vertical()
  local term = Terminal:new({ direction = "vertical", size = 30 })
  term:toggle()
end

function utils.toggleterm.open_new_float()
  local term = Terminal:new({ direction = "float" })
  term:toggle()
end

-- to get back to normal mode
function _G.exit_terminal_mode()
  vim.api.nvim_command('stopinsert')
end

-- window
function utils.window.resize(direction)
  local cmd = ""
  if direction == "up" then
    cmd = ":resize -2<CR>"
  elseif direction == "down" then
    cmd = ":resize +2<CR>"
  elseif direction == "left" then
    cmd = ":vertical resize -2<CR>"
  elseif direction == "right" then
    cmd = ":vertical resize +2<CR>"
  end
  vim.cmd(cmd)
end

return utils
