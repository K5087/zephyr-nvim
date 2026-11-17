local color = require("zephyr.base_color")

local tags = {
	-- References
	LspReferenceText = { bg = color.bg_highlight, bold = true },
	LspReferenceRead = { link = "LspReferenceText" },
	LspReferenceWrite = { link = "LspReferenceText" },
	LspReferenceTarget = { link = "LspReferenceText" },

	-- Inlay hints
	LspInlayHint = { fg = color.grey, bg = color.bg_popup },

	-- CodeLens
	LspCodeLens = { fg = color.grey },
	LspCodeLensSeparator = { fg = color.grey },

	-- Signature help
	LspSignatureActiveParameter = {
		fg = color.yellow,
		bold = true,
	},
}

return tags
