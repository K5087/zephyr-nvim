local color = require("zephyr.base_color")
local tags = {
	-- Severity
	DiagnosticError = { fg = color.red },
	DiagnosticWarn = { fg = color.yellow },
	DiagnosticInfo = { fg = color.blue },
	DiagnosticHint = { fg = color.cyan },
	DiagnosticOk = { fg = color.green },

	-- Underline
	DiagnosticUnderlineError = { undercurl = true, sp = color.red },
	DiagnosticUnderlineWarn = { undercurl = true, sp = color.yellow },
	DiagnosticUnderlineInfo = { undercurl = true, sp = color.blue },
	DiagnosticUnderlineHint = { undercurl = true, sp = color.cyan },
	DiagnosticUnderlineOk = { undercurl = true, sp = color.green },
}
return tags
