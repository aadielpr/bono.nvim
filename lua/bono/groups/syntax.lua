--- Standard syntax highlight groups.
--- Every group gets an explicit colour; treesitter groups link back to these.
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  local S = require("bono.config").style
  local styles = opts.styles

  -- palette1 (cream:#527594 / espresso:#7b9ebd) modules, tags, links, UI accents
  -- palette2 (cream:#2d6c6c / espresso:#6ba8a8) keywords, types, completion
  -- palette3 (cream:#7c619a / espresso:#a68bbf) constants, preprocessor, special
  -- palette4 (cream:#6e5c20 / espresso:#c4a855) numbers, booleans
  -- palette5 (cream:#b05555 / espresso:#c67777) errors, debug
  -- palette6 (cream:#3d6e3d / espresso:#7da47a) strings
  -- palette7 (cream:#63742f / espresso:#a8b56b) markdown H3
  -- palette8 (cream:#9a5f22 / espresso:#d4914a) reserved
  return {
    Comment         = { fg = c.light, style = S(styles, "comments") },
    Constant        = { fg = c.palette3 },
    String          = { fg = c.palette6, style = S(styles, "strings") },
    Character       = { fg = c.palette6, style = S(styles, "strings") },
    Number          = { fg = c.palette4 },
    Boolean         = { fg = c.palette4, style = S(styles, "booleans") },
    Float           = { fg = c.palette4 },

    Identifier      = { fg = c.fg },
    Function        = { fg = c.accent, style = S(styles, "functions") },

    Statement       = { fg = c.accent2, style = S(styles, "keywords") },
    Conditional     = { fg = c.palette2, style = S(styles, "keywords") },
    Repeat          = { fg = c.accent2, style = S(styles, "keywords") },
    Label           = { fg = c.accent2, style = S(styles, "keywords") },
    Operator        = { fg = c.darkest },
    Keyword         = { fg = c.accent2, style = S(styles, "keywords") },
    Exception       = { fg = c.palette5, style = S(styles, "keywords") },

    PreProc         = { fg = c.palette3, style = S(styles, "imports") },
    Include         = { fg = c.palette2, style = S(styles, "keywords") },
    Define          = { fg = c.palette3, style = S(styles, "imports") },
    Macro           = { fg = c.palette3, style = S(styles, "imports") },
    PreCondit       = { fg = c.palette3, style = S(styles, "imports") },

    Type            = { fg = c.palette2 },
    StorageClass    = { fg = c.accent2, style = S(styles, "keywords") },
    Structure       = { fg = c.palette1 },
    Typedef         = { fg = c.palette1 },

    Special         = { fg = c.palette3 },
    SpecialChar     = { fg = c.palette3 },
    Tag             = { fg = c.palette1 },
    Delimiter       = { fg = c.mid },
    SpecialComment  = { fg = c.light, style = S(styles, "comments") },
    Debug           = { fg = c.palette5 },

    Underlined      = { underline = true },
    Bold            = { bold = true },
    Italic          = { italic = true },
    Ignore          = { fg = c.lighter },
    Error           = { fg = c.palette5 },
    Todo            = { fg = c.darkest, bg = c.palette4, blend = 20 },

    Added           = { fg = c.success },
    Changed         = { fg = c.warning },
    Removed         = { fg = c.danger },

    -- Markdown (different colour per heading level, token-style)
    markdownH1                = { fg = c.accent, style = S(styles, "keywords") },
    markdownH2                = { fg = c.accent2, style = S(styles, "keywords") },
    markdownH3                = { fg = c.palette7, style = S(styles, "keywords") },
    markdownH4                = { fg = c.palette1, style = S(styles, "keywords") },
    markdownH5                = { fg = c.palette6, style = S(styles, "keywords") },
    markdownH6                = { fg = c.palette3, style = S(styles, "keywords") },
    markdownHeadingDelimiter  = { fg = c.light },
    markdownCode              = { fg = c.palette3 },
    markdownCodeBlock         = { fg = c.dark },
    markdownLinkText          = { fg = c.palette1, underline = true },
    markdownUrl               = { fg = c.light },
    markdownListMarker        = { fg = c.mid },
    markdownBold              = {},
    markdownItalic            = {},
  }
end

return { get_hl = get_hl }
