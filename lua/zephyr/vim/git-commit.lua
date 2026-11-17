local color = require("zephyr.base_color")
local tags = {
	gitcommitSummary = { fg = color.red },
	gitcommitOverflow = { fg = color.red },
	gitcommitBlank = { fg = color.red },
	gitcommitOnBranch = { fg = color.grey },
	gitcommitArrow = { fg = color.grey },
	gitcommitFile = { fg = color.dark_green },
}
return tags
