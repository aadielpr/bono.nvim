--- Standard syntax highlight groups.
--- Every group gets an explicit colour; treesitter groups link back to these.
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  local S = require("bono.config").style
  local styles = opts.styles

  return {
    Comment         = { fg = c.groups.syntax.comment, style = S(styles, "comments") },
    Constant        = { fg = c.groups.syntax.constant },
    String          = { fg = c.groups.syntax.string, style = S(styles, "strings") },
    Character       = { fg = c.groups.syntax.string, style = S(styles, "strings") },
    Number          = { fg = c.groups.syntax.number },
    Boolean         = { fg = c.groups.syntax.boolean, style = S(styles, "booleans") },
    Float           = { fg = c.groups.syntax.number },

    Identifier      = { fg = c.groups.ui.foreground },
    Function        = { fg = c.groups.syntax.functions, style = S(styles, "functions") },

    Statement       = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },
    Conditional     = { fg = c.groups.syntax.control, style = S(styles, "keywords") },
    Repeat          = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },
    Label           = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },
    Operator        = { fg = c.groups.syntax.operator },
    Keyword         = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },
    Exception       = { fg = c.groups.accents.rose, style = S(styles, "keywords") },

    PreProc         = { fg = c.groups.syntax.preproc, style = S(styles, "imports") },
    Include         = { fg = c.groups.syntax.control, style = S(styles, "keywords") },
    Define          = { fg = c.groups.syntax.preproc, style = S(styles, "imports") },
    Macro           = { fg = c.groups.syntax.preproc, style = S(styles, "imports") },
    PreCondit       = { fg = c.groups.syntax.preproc, style = S(styles, "imports") },

    Type            = { fg = c.groups.syntax.type },
    StorageClass    = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },
    Structure       = { fg = c.groups.accents.primary },
    Typedef         = { fg = c.groups.accents.primary },

    Special         = { fg = c.groups.syntax.special },
    SpecialChar     = { fg = c.groups.syntax.special },
    Tag             = { fg = c.groups.accents.primary },
    Delimiter       = { fg = c.groups.ui.subtle },
    SpecialComment  = { fg = c.groups.syntax.comment, style = S(styles, "comments") },
    Debug           = { fg = c.groups.accents.rose },

    Underlined      = { underline = true },
    Bold            = { bold = true },
    Italic          = { italic = true },
    Ignore          = { fg = c.groups.ui.border },
    Error           = { fg = c.groups.accents.rose },
    Todo            = { fg = c.groups.ui.strong, bg = c.groups.accents.quaternary, blend = 20 },

    Added           = { fg = c.groups.git.add },
    Changed         = { fg = c.groups.git.change },
    Removed         = { fg = c.groups.git.delete },

    -- Markdown (different colour per heading level, token-style)
    markdownH1                = { fg = c.groups.syntax.functions, style = S(styles, "keywords") },
    markdownH2                = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },
    markdownH3                = { fg = c.groups.accents.earth, style = S(styles, "keywords") },
    markdownH4                = { fg = c.groups.accents.primary, style = S(styles, "keywords") },
    markdownH5                = { fg = c.groups.syntax.string, style = S(styles, "keywords") },
    markdownH6                = { fg = c.groups.syntax.constant, style = S(styles, "keywords") },
    markdownHeadingDelimiter  = { fg = c.groups.ui.muted },
    markdownCode              = { fg = c.groups.syntax.constant },
    markdownCodeBlock         = { fg = c.groups.ui.text_muted },
    markdownLinkText          = { fg = c.groups.accents.primary, underline = true },
    markdownUrl               = { fg = c.groups.ui.muted },
    markdownListMarker        = { fg = c.groups.ui.subtle },
    markdownBold              = {},
    markdownItalic            = {},
  }
end

return { get_hl = get_hl }
