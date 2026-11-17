local color = require("zephyr.base_color")
local tags = {
	AerialGuide = { fg = color.grey },

	AerialClass = { fg = color.teal },
	AerialStruct = { fg = color.orange },
	AerialInterface = { fg = color.teal },
	AerialEnum = { fg = color.teal },
	AerialFunction = { fg = color.yellow },
	AerialMethod = { fg = color.cyan },
	AerialVariable = { fg = "#f2f2bf" },
	AerialConstant = { fg = color.cyan },
	AerialProperty = { fg = color.yellow },
	AerialField = { fg = color.yellow },
	AerialModule = { fg = color.blue },
	AerialNamespace = { fg = color.blue },
}
return tags
