--- Tree-sitter highlight groups.
--- Links to standard syntax groups wherever possible (token-style).
--- Only breaks the link when a sub-group needs a different colour or style.
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  local S = require("bono.config").style
  local styles = opts.styles

  return {
    -- ── Variables ──────────────────────────────────────────────
    ["@variable"]                        = { fg = c.fg, style = S(styles, "variables") },
    ["@variable.builtin"]                = { fg = c.cyan, style = S(styles, "keywords") },
    ["@variable.parameter"]              = { fg = c.dark },
    ["@variable.parameter.builtin"]      = { fg = c.accent2, style = S(styles, "keywords") },
    ["@variable.member"]                 = { fg = c.fg },

    -- ── Constants ──────────────────────────────────────────────
    ["@constant"]                        = { link = "Constant" },
    ["@constant.builtin"]                = { link = "Boolean" },
    ["@constant.macro"]                  = { link = "Macro" },

    -- ── Modules / namespaces ───────────────────────────────────
    ["@module"]                          = { fg = c.blue },
    ["@module.builtin"]                  = { fg = c.blue },
    ["@label"]                           = { link = "Label" },

    -- ── Strings ────────────────────────────────────────────────
    ["@string"]                          = { link = "String" },
    ["@string.documentation"]            = { fg = c.green, style = S(styles, "strings") },
    ["@string.regexp"]                   = { fg = c.purple },
    ["@string.escape"]                   = { fg = c.purple },
    ["@string.special"]                  = { link = "SpecialChar" },
    ["@string.special.symbol"]           = { fg = c.purple },
    ["@string.special.path"]             = { fg = c.blue },
    ["@string.special.url"]              = { fg = c.blue, underline = true },

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
    ["@attribute"]                       = { fg = c.cyan },
    ["@attribute.builtin"]               = { fg = c.purple },
    ["@property"]                        = { fg = c.fg, style = S(styles, "variables") },

    -- ── Functions ──────────────────────────────────────────────
    ["@function"]                        = { link = "Function" },
    ["@function.builtin"]                = { fg = c.accent, style = S(styles, "functions") },
    ["@function.call"]                   = { link = "Function" },
    ["@function.macro"]                  = { fg = c.purple },
    ["@function.method"]                 = { link = "Function" },
    ["@function.method.call"]            = { link = "Function" },

    -- ── Constructors ───────────────────────────────────────────
    ["@constructor"]                     = { fg = c.cyan },

    -- ── Operators / punctuation ────────────────────────────────
    ["@operator"]                        = { link = "Operator" },
    ["@punctuation"]                     = { fg = c.mid },
    ["@punctuation.delimiter"]           = { fg = c.mid },
    ["@punctuation.bracket"]             = { fg = c.mid },
    ["@punctuation.special"]             = { fg = c.purple },

    -- ── Comments ───────────────────────────────────────────────
    ["@comment"]                         = { link = "Comment" },
    ["@comment.documentation"]           = { fg = c.light, style = S(styles, "comments") },
    ["@comment.error"]                   = { fg = c.red },
    ["@comment.warning"]                 = { fg = c.warning },
    ["@comment.todo"]                    = { fg = c.darkest, bg = c.yellow, blend = 20 },
    ["@comment.note"]                    = { fg = c.info },
    ["@comment.hint"]                    = { fg = c.hint },
    ["@comment.info"]                    = { fg = c.info },

    -- ── Keywords ───────────────────────────────────────────────
    ["@keyword"]                         = { fg = c.cyan, style = S(styles, "keywords") },
    ["@keyword.coroutine"]               = { fg = c.cyan, style = S(styles, "keywords") },
    ["@keyword.function"]                = { fg = c.blue, style = S(styles, "keywords") },
    ["@keyword.operator"]                = { fg = c.cyan, style = S(styles, "keywords") },
    ["@keyword.import"]                  = { link = "Include" },
    ["@keyword.type"]                    = { link = "@keyword" },
    ["@keyword.modifier"]                = { fg = c.blue, style = S(styles, "keywords") },
    ["@keyword.repeat"]                  = { link = "Repeat" },
    ["@keyword.return"]                  = { fg = c.cyan, style = S(styles, "keywords") },
    ["@keyword.debug"]                   = { fg = c.red },
    ["@keyword.exception"]               = { link = "Exception" },
    ["@keyword.conditional"]             = { link = "Conditional" },
    ["@keyword.conditional.ternary"]     = { fg = c.dark },
    ["@keyword.directive"]               = { link = "Define" },
    ["@keyword.directive.define"]        = { link = "Define" },
    ["@keyword.storage"]                 = { fg = c.accent2, style = S(styles, "keywords") },

    -- ── HTML / JSX / XML tags ──────────────────────────────────
    ["@tag"]                             = { fg = c.blue },
    ["@tag.builtin"]                     = { fg = c.blue },
    ["@tag.attribute"]                   = { fg = c.yellow },
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
    ["@markup.heading.3"]                = { fg = c.olive, style = S(styles, "keywords") },
    ["@markup.heading.4"]                = { fg = c.blue, style = S(styles, "keywords") },
    ["@markup.heading.5"]                = { fg = c.green, style = S(styles, "keywords") },
    ["@markup.heading.6"]                = { fg = c.purple, style = S(styles, "keywords") },
    ["@markup.quote"]                    = { fg = c.dark },
    ["@markup.math"]                     = { fg = c.blue },
    ["@markup.environment"]              = { fg = c.purple },
    ["@markup.link"]                     = { fg = c.blue, underline = true },
    ["@markup.link.label"]               = { fg = c.blue },
    ["@markup.link.url"]                 = { fg = c.blue, underline = true },
    ["@markup.raw"]                      = { fg = c.green },
    ["@markup.raw.block"]                = { fg = c.green },
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
    ["@error"]                           = { fg = c.red },
    ["@spell"]                           = {},
    ["@nospell"]                         = {},
  }
end

return { get_hl = get_hl }
