--- Standard syntax highlight groups.
--- Every group gets an explicit colour; treesitter groups link back to these.
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  local S = require("bono.config").style
  local styles = opts.styles

  return {
    Comment         = { fg = c.light, style = S(styles, "comments") },
    Constant        = { fg = c.purple },
    String          = { fg = c.green, style = S(styles, "strings") },
    Character       = { fg = c.green, style = S(styles, "strings") },
    Number          = { fg = c.yellow },
    Boolean         = { fg = c.yellow, style = S(styles, "booleans") },
    Float           = { fg = c.yellow },

    Identifier      = { fg = c.fg },
    Function        = { fg = c.accent, style = S(styles, "functions") },

    Statement       = { fg = c.accent2, style = S(styles, "keywords") },
    Conditional     = { fg = c.cyan, style = S(styles, "keywords") },
    Repeat          = { fg = c.accent2, style = S(styles, "keywords") },
    Label           = { fg = c.accent2, style = S(styles, "keywords") },
    Operator        = { fg = c.darkest },
    Keyword         = { fg = c.accent2, style = S(styles, "keywords") },
    Exception       = { fg = c.red, style = S(styles, "keywords") },

    PreProc         = { fg = c.purple, style = S(styles, "imports") },
    Include         = { fg = c.cyan, style = S(styles, "keywords") },
    Define          = { fg = c.purple, style = S(styles, "imports") },
    Macro           = { fg = c.purple, style = S(styles, "imports") },
    PreCondit       = { fg = c.purple, style = S(styles, "imports") },

    Type            = { fg = c.cyan },
    StorageClass    = { fg = c.accent2, style = S(styles, "keywords") },
    Structure       = { fg = c.blue },
    Typedef         = { fg = c.blue },

    Special         = { fg = c.purple },
    SpecialChar     = { fg = c.purple },
    Tag             = { fg = c.blue },
    Delimiter       = { fg = c.mid },
    SpecialComment  = { fg = c.light, style = S(styles, "comments") },
    Debug           = { fg = c.red },

    Underlined      = { underline = true },
    Bold            = { bold = true },
    Italic          = { italic = true },
    Ignore          = { fg = c.lighter },
    Error           = { fg = c.red },
    Todo            = { fg = c.darkest, bg = c.yellow, blend = 20 },

    Added           = { fg = c.success },
    Changed         = { fg = c.warning },
    Removed         = { fg = c.danger },

    -- Markdown (different colour per heading level, token-style)
    markdownH1                = { fg = c.accent, style = S(styles, "keywords") },
    markdownH2                = { fg = c.accent2, style = S(styles, "keywords") },
    markdownH3                = { fg = c.olive, style = S(styles, "keywords") },
    markdownH4                = { fg = c.blue, style = S(styles, "keywords") },
    markdownH5                = { fg = c.green, style = S(styles, "keywords") },
    markdownH6                = { fg = c.purple, style = S(styles, "keywords") },
    markdownHeadingDelimiter  = { fg = c.light },
    markdownCode              = { fg = c.purple },
    markdownCodeBlock         = { fg = c.dark },
    markdownLinkText          = { fg = c.blue, underline = true },
    markdownUrl               = { fg = c.light },
    markdownListMarker        = { fg = c.mid },
    markdownBold              = {},
    markdownItalic            = {},
  }
end

return { get_hl = get_hl }
