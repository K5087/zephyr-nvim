local color = require("zephyr.base_color")
local tags = {
	-- General
	DashboardHeader = { fg = color.orange },
	DashboardFooter = { fg = color.yellow, bold = true },

	-- Hyper
	DashboardShortCut = { fg = color.magenta },
	DashboardShortCutIcon = { fg = color.magenta },
	DashboardProjectTitle = { fg = color.teal },
	DashboardProjectTitleIcon = { fg = color.blue },
	DashboardProjectIcon = { fg = color.blue },
	DashboardRecentProjectIcon = { fg = color.blue },
	DashboardMruTitle = { fg = color.teal },
	DashboardMruIcon = { fg = color.blue },
	DashboardFiles = { fg = color.fg },

	-- Doom
	DashboardDesc = { fg = color.teal },
	DashboardKey = { fg = color.magenta },
	DashboardIcon = { fg = color.blue },

	DashboardCenter = { fg = color.teal },
	DashboardCenterIcon = { fg = color.blue },
}
return tags
