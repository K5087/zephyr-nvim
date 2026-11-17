local color = require("zephyr.base_color")

local tags = {
	vimCommentTitle = { fg = color.grey, bold = true },
	vimLet = { fg = color.orange },
	vimVar = { fg = color.cyan },
	vimFunction = { fg = color.redwine },
	vimIsCommand = { fg = color.fg },
	vimCommand = { fg = color.blue },
	vimNotFunc = { fg = color.violet, bold = true },
	vimUserFunc = { fg = color.yellow, bold = true },
	vimFuncName = { fg = color.yellow, bold = true },
}
return tags
