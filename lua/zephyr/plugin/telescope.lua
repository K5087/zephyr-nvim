local color = require("zephyr.base_color")
local tags = {
	-- Borders
	TelescopeBorder = { fg = color.teal },
	TelescopePromptBorder = { fg = color.blue },

	-- Titles
	TelescopePromptTitle = { fg = color.blue, bold = true },
	TelescopeResultsTitle = { fg = color.teal, bold = true },
	TelescopePreviewTitle = { fg = color.teal, bold = true },

	-- Search
	TelescopeMatching = { fg = color.teal },
	TelescopePromptPrefix = { fg = color.blue },
	TelescopePromptCounter = { fg = color.grey },

	-- Selection
	TelescopeSelection = {
		fg = color.yellow,
		bg = color.bg_highlight,
		bold = true,
	},
	TelescopeSelectionCaret = { fg = color.yellow },
	TelescopeMultiSelection = { fg = color.teal },
	TelescopeMultiIcon = { fg = color.teal },
}
return tags
