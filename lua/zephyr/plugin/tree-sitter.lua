local color = require("zephyr.base_color")

local tags = {
	-- Variables
	["@variable"] = { fg = "#f2f2bf" },
	["@variable.builtin"] = { fg = "#f2f2bf" },
	["@variable.parameter"] = { fg = "#f2f2bf" },
	["@variable.parameter.builtin"] = { fg = "#f2f2bf" },
	["@variable.member"] = { fg = color.yellow },

	-- Constants
	["@constant"] = { fg = color.cyan },
	["@constant.builtin"] = { fg = color.cyan },
	["@constant.macro"] = { fg = color.cyan },

	-- Modules and labels
	["@module"] = { fg = color.blue },
	["@module.builtin"] = { fg = color.blue },
	["@label"] = { fg = color.orange },

	-- Strings
	["@string"] = { fg = color.lignt_orange },
	["@string.documentation"] = { fg = color.lignt_orange },
	["@string.regexp"] = { fg = color.lignt_orange },
	["@string.escape"] = { fg = color.yellow },
	["@string.special"] = { fg = color.yellow },
	["@string.special.symbol"] = { fg = color.yellow },
	["@string.special.path"] = { fg = color.lignt_orange },
	["@string.special.url"] = { fg = color.lignt_orange, underline = true },

	-- Characters and numbers
	["@character"] = { fg = color.green },
	["@character.special"] = { fg = color.yellow },
	["@boolean"] = { fg = color.orange },
	["@number"] = { fg = color.brown },
	["@number.float"] = { fg = color.brown },

	-- Types
	["@type"] = { fg = color.teal },
	["@type.builtin"] = { fg = color.teal },
	["@type.definition"] = { fg = color.red },
	["@attribute"] = { fg = color.orange },
	["@attribute.builtin"] = { fg = color.orange },
	["@property"] = { fg = color.yellow },

	-- Functions
	["@function"] = { fg = color.cyan },
	["@function.builtin"] = { fg = color.cyan },
	["@function.call"] = { fg = color.cyan },
	["@function.macro"] = { fg = color.cyan },
	["@function.method"] = { fg = color.cyan },
	["@function.method.call"] = { fg = color.cyan },
	["@constructor"] = { fg = color.yellow },

	-- Operators
	["@operator"] = { fg = color.redwine },

	-- Keywords
	["@keyword"] = { fg = color.green },
	["@keyword.coroutine"] = { fg = color.green },
	["@keyword.function"] = { fg = color.red },
	["@keyword.operator"] = { fg = color.redwine },
	["@keyword.import"] = { fg = color.violet },
	["@keyword.type"] = { fg = color.orange },
	["@keyword.modifier"] = { fg = color.orange },
	["@keyword.repeat"] = { fg = color.magenta },
	["@keyword.return"] = { fg = color.red },
	["@keyword.debug"] = { fg = color.red },
	["@keyword.exception"] = { fg = color.red },
	["@keyword.conditional"] = { fg = color.magenta },
	["@keyword.conditional.ternary"] = { fg = color.magenta },
	["@keyword.directive"] = { fg = color.violet },
	["@keyword.directive.define"] = { fg = color.violet },

	-- Punctuation
	["@punctuation.delimiter"] = { fg = color.fg },
	["@punctuation.bracket"] = { fg = color.bracket },
	["@punctuation.special"] = { fg = color.yellow },

	-- Comments
	["@comment"] = { fg = color.base6, italic = true },
	["@comment.documentation"] = { fg = color.grey, italic = true },
	["@comment.error"] = { fg = color.red, italic = true },
	["@comment.warning"] = { fg = color.orange, italic = true },
	["@comment.todo"] = { fg = color.violet, italic = true },
	["@comment.note"] = { fg = color.grey, italic = true },

	-- Markup
	["@markup.strong"] = { bold = true },
	["@markup.italic"] = { italic = true },
	["@markup.strikethrough"] = { strikethrough = true },
	["@markup.underline"] = { underline = true },
	["@markup.heading"] = { fg = color.orange, bold = true },
	["@markup.heading.1"] = { fg = color.orange, bold = true },
	["@markup.heading.2"] = { fg = color.orange, bold = true },
	["@markup.heading.3"] = { fg = color.orange, bold = true },
	["@markup.heading.4"] = { fg = color.orange, bold = true },
	["@markup.heading.5"] = { fg = color.orange, bold = true },
	["@markup.heading.6"] = { fg = color.orange, bold = true },
	["@markup.quote"] = { fg = color.grey },
	["@markup.math"] = { fg = color.brown },
	["@markup.link"] = { fg = color.blue, underline = true },
	["@markup.link.label"] = { fg = color.blue },
	["@markup.link.url"] = { fg = color.blue, underline = true },
	["@markup.raw"] = { fg = color.lignt_orange },
	["@markup.raw.block"] = { fg = color.lignt_orange },
	["@markup.list"] = { fg = color.orange },
	["@markup.list.checked"] = { fg = color.green },
	["@markup.list.unchecked"] = { fg = color.grey },

	-- Diff
	["@diff.plus"] = { fg = color.green },
	["@diff.minus"] = { fg = color.red },
	["@diff.delta"] = { fg = color.yellow },

	-- Tags
	["@tag"] = { fg = color.orange },
	["@tag.builtin"] = { fg = color.orange },
	["@tag.attribute"] = { fg = color.yellow },
	["@tag.delimiter"] = { fg = color.fg },
}

return tags
