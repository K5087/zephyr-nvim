local color = require("zephyr.base_color")
local tags = {
	-- Normal
	Normal = { fg = color.fg, bg = color.bg },
	-- NormalNC = { link = "Normal" },
	NormalFloat = { fg = color.base8, bg = color.bg_highlight },
	Directory = { fg = color.blue, bg = color.none },
	EndOfBuffer = { fg = color.bg, bg = color.none },

	-- Window
	WinSeparator = { fg = color.black, bg = color.bg },
	FloatBorder = { fg = color.teal, bg = color.bg_highlight },
	FloatTitle = { fg = color.orange, bold = true },
	FloatFooter = { fg = color.grey },
	WinBar = { fg = color.fg, bg = color.bg },
	WinBarNC = { fg = color.grey, bg = color.bg },
	ColorColumn = { bg = color.bg_highlight },

	-- Cursor
	Cursor = { bg = color.none, reverse = true },
	lCursor = { link = "Cursor" },
	CursorIM = { link = "Cursor" },
	TermCursor = { link = "Cursor" },
	CursorLine = { bg = color.bg_highlight },
	CursorColumn = { bg = color.bg_highlight },
	MatchParen = { fg = color.red, bg = color.none },

	-- Line Numbers
	LineNr = { fg = color.base4 },
	-- LineNrAbove = { link = "LineNr" },
	-- LineNrBelow = { link = "LineNr" },
	CursorLineNr = { fg = color.blue },
	qfLineNr = { fg = color.cyan },

	-- Sign & Fold
	SignColumn = { fg = color.fg, bg = color.bg },
	FoldColumn = { fg = color.fg_alt, bg = color.black },
	Folded = { fg = color.lignt_orange, bg = color.bg_highlight },
	-- CursorLineSign = { link = "SignColumn" },
	-- CursorLineFold = { link = "FoldColumn" },

	-- Search
	Search = { fg = color.bg, bg = color.orange },
	IncSearch = { fg = color.bg1, bg = color.orange },
	CurSearch = { link = "IncSearch" },
	Substitute = { link = "IncSearch" },

	-- Selection
	Visual = { fg = color.black, bg = color.bg_visual },
	-- VisualNOS = { link = "Visual" },

	-- Popup Menu
	Pmenu = { fg = color.fg, bg = color.bg_popup },
	PmenuSel = { fg = color.base0, bg = color.blue },
	PmenuSbar = { bg = color.base4 },
	PmenuThumb = { fg = color.violet, bg = color.light_green },
	PmenuKind = { fg = color.violet },
	PmenuExtra = { fg = color.grey },
	PmenuMatch = { fg = color.teal, bold = true },
	-- PmenuMatchSel = { link = "PmenuMatch" },
	-- PmenuKindSel = { link = "PmenuKind" },
	-- PmenuExtraSel = { link = "PmenuExtra" },
	PmenuBorder = { link = "FloatBorder" },
	WildMenu = { fg = color.bg1, bg = color.green },

	-- Status & Tab
	StatusLine = { fg = color.base8, bg = color.base2 },
	StatusLineNC = { fg = color.grey, bg = color.base2 },
	-- StatusLineTerm = { link = "StatusLine" },
	-- StatusLineTermNC = { link = "StatusLineNC" },
	TabLine = { fg = color.base6, bg = color.base2 },
	TabLineSel = { fg = color.fg, bg = color.blue },
	TabLineFill = { link = "TabLine" },

	-- Messages
	ErrorMsg = { fg = color.red, bg = color.none, bold = true },
	WarningMsg = { fg = color.yellow, bg = color.none, bold = true },
	OkMsg = { fg = color.green },
	MoreMsg = { fg = color.cyan },
	ModeMsg = { fg = color.fg, bg = color.none, bold = true },
	Question = { fg = color.yellow },
	MsgArea = { link = "Normal" },
	MsgSeparator = { fg = color.grey },
	StderrMsg = { fg = color.red },
	StdoutMsg = { fg = color.fg },

	-- Diff
	DiffAdd = { fg = color.black, bg = color.dark_green },
	DiffChange = { fg = color.black, bg = color.yellow },
	DiffDelete = { fg = color.black, bg = color.red },
	DiffText = { fg = color.black, bg = color.fg },
	-- DiffTextAdd = { link = "DiffText" },

	-- Spell
	SpellBad = { fg = color.red, bg = color.none, undercurl = true },
	SpellCap = { fg = color.blue, bg = color.none, undercurl = true },
	SpellLocal = { fg = color.cyan, bg = color.none, undercurl = true },
	SpellRare = { fg = color.violet, bg = color.none, undercurl = true },

	-- Special Characters
	Conceal = { fg = color.green, bg = color.none },
	NonText = { fg = color.bg1 },
	Whitespace = { fg = color.base4 },
	SpecialKey = { fg = color.bg1 },

	-- Quickfix & Debug
	QuickFixLine = { fg = color.violet, bold = true },
	Debug = { fg = color.orange },
	debugBreakpoint = { fg = color.bg, bg = color.red },

	-- Constants
	Constant = { fg = color.cyan },
	Boolean = { fg = color.orange },
	Number = { fg = color.brown },
	Float = { fg = color.brown },
	String = { fg = color.lignt_orange },
	Character = { fg = color.green },

	-- Identifiers
	Identifier = { fg = color.blue },
	Function = { fg = color.yellow },

	-- Statements
	Statement = { fg = color.red },
	Conditional = { fg = color.magenta },
	Repeat = { fg = color.magenta },
	Keyword = { fg = color.green },
	Exception = { fg = color.red },
	Label = { fg = color.orange },
	Operator = { fg = color.redwine },

	-- Preprocessor
	PreProc = { fg = color.violet },
	PreCondit = { fg = color.violet },
	Include = { fg = color.violet },
	Define = { fg = color.violet },
	Macro = { fg = color.cyan },

	-- Types
	Type = { fg = color.teal },
	StorageClass = { fg = color.orange },
	Structure = { fg = color.orange },
	Typedef = { fg = color.red },

	-- Special Syntax
	Special = { fg = color.yellow },
	SpecialChar = { fg = color.yellow },
	Tag = { fg = color.orange },
	Delimiter = { fg = color.fg },
	Regexp = { fg = color.lignt_orange },

	-- Comments
	Comment = { fg = color.base6, italic = true },
	SpecialComment = { fg = color.grey },
	Todo = { fg = color.violet },

	-- Text Formatting
	Title = { fg = color.orange, bold = true },
	Underlined = { underline = true },
	Bold = { bold = true },
	Italic = { italic = true },
	BoldItalic = { bold = true, italic = true },
	Dimmed = { fg = color.grey },
	Ignore = { fg = color.grey },

	-- Change Indicators
	Added = { fg = color.dark_green },
	Changed = { fg = color.blue },
	Removed = { fg = color.red },

	-- Syntax Errors
	Error = { fg = color.red },
}
return tags
