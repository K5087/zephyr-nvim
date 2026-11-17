local z = {
	terminal_set = false,
}

local color = require("zephyr.base_color")

function z:terminal_color()
	if self.terminal_set then
		return
	end
	vim.g.terminal_color_0 = color.bg
	vim.g.terminal_color_1 = color.red
	vim.g.terminal_color_2 = color.green
	vim.g.terminal_color_3 = color.yellow
	vim.g.terminal_color_4 = color.blue
	vim.g.terminal_color_5 = color.violet
	vim.g.terminal_color_6 = color.cyan
	vim.g.terminal_color_7 = color.bg1
	vim.g.terminal_color_8 = color.brown
	vim.g.terminal_color_9 = color.red
	vim.g.terminal_color_10 = color.green
	vim.g.terminal_color_11 = color.yellow
	vim.g.terminal_color_12 = color.blue
	vim.g.terminal_color_13 = color.violet
	vim.g.terminal_color_14 = color.cyan
	vim.g.terminal_color_15 = color.fg

	self.terminal_set = true
end

--- set highlight by path
---@param path string exmaple: z.set_hl("lsp.reference")
function z.set_hl(path)
	local tags = require(path)
	for group, conf in pairs(tags) do
		vim.api.nvim_set_hl(0, group, conf)
	end
end

local function load_base()
	z.set_hl("zephyr.vim.vim-script")
	z.set_hl("zephyr.vim.diff")
	z.set_hl("zephyr.vim.git-commit")

	z.set_hl("zephyr.lsp.semantic-tokens")
	z.set_hl("zephyr.lsp.reference")
	z.set_hl("zephyr.lsp.diagnostics")
end

--- load zephyr color_scheme
---@param async_load boolean? whether async load highlight,default is false
function z:color_scheme(async_load)
	vim.o.background = "dark"
	vim.api.nvim_command("hi clear")

	vim.o.termguicolors = true
	vim.g.colors_name = "zephyr"

	self.set_hl("zephyr.vim.syntax")
	self:terminal_color()
	if not async_load then
		load_base()
	else
		vim.schedule(load_base)
	end
end

return z
