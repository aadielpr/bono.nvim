--- Tree-sitter highlight groups.
--- Links to standard syntax groups wherever possible (token-style).
--- Only breaks the link when a sub-group needs a different colour or style.
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
    -- ── Variables ──────────────────────────────────────────────
    ["@variable"]                        = { fg = c.fg, style = S(styles, "variables") },
    ["@variable.builtin"]                = { fg = c.palette2, style = S(styles, "keywords") },
    ["@variable.parameter"]              = { fg = c.dark },
    ["@variable.parameter.builtin"]      = { fg = c.accent2, style = S(styles, "keywords") },
    ["@variable.member"]                 = { fg = c.fg },

    -- ── Constants ──────────────────────────────────────────────
    ["@constant"]                        = { link = "Constant" },
    ["@constant.builtin"]                = { link = "Boolean" },
    ["@constant.macro"]                  = { link = "Macro" },

    -- ── Modules / namespaces ───────────────────────────────────
    ["@module"]                          = { fg = c.palette1 },
    ["@module.builtin"]                  = { fg = c.palette1 },
    ["@label"]                           = { link = "Label" },

    -- ── Strings ────────────────────────────────────────────────
    ["@string"]                          = { link = "String" },
    ["@string.documentation"]            = { fg = c.palette6, style = S(styles, "strings") },
    ["@string.regexp"]                   = { fg = c.palette3 },
    ["@string.escape"]                   = { fg = c.palette3 },
    ["@string.special"]                  = { link = "SpecialChar" },
    ["@string.special.symbol"]           = { fg = c.palette3 },
    ["@string.special.path"]             = { fg = c.palette1 },
    ["@string.special.url"]              = { fg = c.palette1, underline = true },

    -- ── Characters / numbers ───────────────────────────────────
    ["@character"]                       = { link = "Character" },
    ["@character.special"]               = { link = "SpecialChar" },
    ["@boolean"]                         = { link = "Boolean" },
    ["@number"]                          = { link = "Number" },
    ["@number.float"]                    = { link = "Float" },

    -- ── Types ──────────────────────────────────────────────────
    ["@type"]                            = { link = "Type" },
    ["@type.builtin"]                    = { link = "Type" },
    ["@type.definition"]                 = { link = "Type" },

    -- ── Attributes / decorators ────────────────────────────────
    ["@attribute"]                       = { fg = c.palette2 },
    ["@attribute.builtin"]               = { fg = c.palette3 },
    ["@property"]                        = { fg = c.fg, style = S(styles, "variables") },

    -- ── Functions ──────────────────────────────────────────────
    ["@function"]                        = { link = "Function" },
    ["@function.builtin"]                = { fg = c.accent, style = S(styles, "functions") },
    ["@function.call"]                   = { link = "Function" },
    ["@function.macro"]                  = { fg = c.palette3 },
    ["@function.method"]                 = { link = "Function" },
    ["@function.method.call"]            = { link = "Function" },

    -- ── Constructors ───────────────────────────────────────────
    ["@constructor"]                     = { fg = c.palette2 },

    -- ── Operators / punctuation ────────────────────────────────
    ["@operator"]                        = { link = "Operator" },
    ["@punctuation"]                     = { fg = c.mid },
    ["@punctuation.delimiter"]           = { fg = c.mid },
    ["@punctuation.bracket"]             = { fg = c.mid },
    ["@punctuation.special"]             = { fg = c.palette3 },

    -- ── Comments ───────────────────────────────────────────────
    ["@comment"]                         = { link = "Comment" },
    ["@comment.documentation"]           = { fg = c.light, style = S(styles, "comments") },
    ["@comment.error"]                   = { fg = c.palette5 },
    ["@comment.warning"]                 = { fg = c.warning },
    ["@comment.todo"]                    = { fg = c.darkest, bg = c.palette4, blend = 20 },
    ["@comment.note"]                    = { fg = c.info },
    ["@comment.hint"]                    = { fg = c.hint },
    ["@comment.info"]                    = { fg = c.info },

    -- ── Keywords ───────────────────────────────────────────────
    ["@keyword"]                         = { fg = c.palette2, style = S(styles, "keywords") },
    ["@keyword.coroutine"]               = { fg = c.palette2, style = S(styles, "keywords") },
    ["@keyword.function"]                = { fg = c.palette1, style = S(styles, "keywords") },
    ["@keyword.operator"]                = { fg = c.palette2, style = S(styles, "keywords") },
    ["@keyword.import"]                  = { link = "Include" },
    ["@keyword.type"]                    = { link = "@keyword" },
    ["@keyword.modifier"]                = { fg = c.palette1, style = S(styles, "keywords") },
    ["@keyword.repeat"]                  = { link = "Repeat" },
    ["@keyword.return"]                  = { fg = c.palette2, style = S(styles, "keywords") },
    ["@keyword.debug"]                   = { fg = c.palette5 },
    ["@keyword.exception"]               = { link = "Exception" },
    ["@keyword.conditional"]             = { link = "Conditional" },
    ["@keyword.conditional.ternary"]     = { fg = c.dark },
    ["@keyword.directive"]               = { link = "Define" },
    ["@keyword.directive.define"]        = { link = "Define" },
    ["@keyword.storage"]                 = { fg = c.accent2, style = S(styles, "keywords") },

    -- ── HTML / JSX / XML tags ──────────────────────────────────
    ["@tag"]                             = { fg = c.palette1 },
    ["@tag.builtin"]                     = { fg = c.palette1 },
    ["@tag.attribute"]                   = { fg = c.palette4 },
    ["@tag.delimiter"]                   = { fg = c.mid },

    -- ── Markup (Markdown etc.) ─────────────────────────────────
    ["@markup"]                          = { fg = c.fg },
    ["@markup.strong"]                   = { bold = true },
    ["@markup.italic"]                   = { italic = true },
    ["@markup.strikethrough"]            = { strikethrough = true },
    ["@markup.underline"]                = { underline = true },
    ["@markup.heading"]                  = { fg = c.accent, style = S(styles, "keywords") },
    ["@markup.heading.1"]                = { fg = c.accent, style = S(styles, "keywords") },
    ["@markup.heading.2"]                = { fg = c.accent2, style = S(styles, "keywords") },
    ["@markup.heading.3"]                = { fg = c.palette7, style = S(styles, "keywords") },
    ["@markup.heading.4"]                = { fg = c.palette1, style = S(styles, "keywords") },
    ["@markup.heading.5"]                = { fg = c.palette6, style = S(styles, "keywords") },
    ["@markup.heading.6"]                = { fg = c.palette3, style = S(styles, "keywords") },
    ["@markup.quote"]                    = { fg = c.dark },
    ["@markup.math"]                     = { fg = c.palette1 },
    ["@markup.environment"]              = { fg = c.palette3 },
    ["@markup.link"]                     = { fg = c.palette1, underline = true },
    ["@markup.link.label"]               = { fg = c.palette1 },
    ["@markup.link.url"]                 = { fg = c.palette1, underline = true },
    ["@markup.raw"]                      = { fg = c.palette6 },
    ["@markup.raw.block"]                = { fg = c.palette6 },
    ["@markup.list"]                     = { fg = c.accent2 },
    ["@markup.list.checked"]             = { fg = c.success },
    ["@markup.list.unchecked"]           = { fg = c.mid },

    -- Markdown heading overrides (treesitter-specific captures)
    ["@markup.heading.1.markdown"]       = { link = "markdownH1" },
    ["@markup.heading.2.markdown"]       = { link = "markdownH2" },
    ["@markup.heading.3.markdown"]       = { link = "markdownH3" },
    ["@markup.heading.4.markdown"]       = { link = "markdownH4" },
    ["@markup.heading.5.markdown"]       = { link = "markdownH5" },
    ["@markup.heading.6.markdown"]       = { link = "markdownH6" },
    ["@markup.heading.1.marker.markdown"] = { link = "markdownHeadingDelimiter" },
    ["@markup.heading.2.marker.markdown"] = { link = "markdownHeadingDelimiter" },
    ["@markup.heading.3.marker.markdown"] = { link = "markdownHeadingDelimiter" },
    ["@markup.heading.4.marker.markdown"] = { link = "markdownHeadingDelimiter" },
    ["@markup.heading.5.marker.markdown"] = { link = "markdownHeadingDelimiter" },
    ["@markup.heading.6.marker.markdown"] = { link = "markdownHeadingDelimiter" },

    -- ── Diffs ──────────────────────────────────────────────────
    ["@diff.plus"]                       = { fg = c.success },
    ["@diff.minus"]                      = { fg = c.danger },
    ["@diff.delta"]                      = { fg = c.warning },

    -- ── Misc ───────────────────────────────────────────────────
    ["@conceal"]                         = { fg = c.mid },
    ["@none"]                            = {},
    ["@error"]                           = { fg = c.palette5 },
    ["@spell"]                           = {},
    ["@nospell"]                         = {},
  }
end

return { get_hl = get_hl }
