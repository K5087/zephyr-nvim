local color = require("zephyr.base_color")
local tags = {
	diffAdded = { fg = color.dark_green },
	diffRemoved = { fg = color.red },
	diffChanged = { fg = color.blue },
	diffOldFile = { fg = color.yellow },
	diffNewFile = { fg = color.orange },
	diffFile = { fg = color.cyan },
	diffLine = { fg = color.grey },
	diffIndexLine = { fg = color.violet },
}
return tags
