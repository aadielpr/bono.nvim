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
    ["@variable"]                        = { fg = c.groups.ui.foreground, style = S(styles, "variables") },
    ["@variable.builtin"]                = { fg = c.groups.syntax.builtin_variable, style = S(styles, "keywords") },
    ["@variable.parameter"]              = { fg = c.groups.ui.text_muted },
    ["@variable.parameter.builtin"]      = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },
    ["@variable.member"]                 = { fg = c.groups.ui.foreground },

    -- ── Constants ──────────────────────────────────────────────
    ["@constant"]                        = { link = "Constant" },
    ["@constant.builtin"]                = { link = "Boolean" },
    ["@constant.macro"]                  = { link = "Macro" },

    -- ── Modules / namespaces ───────────────────────────────────
    ["@module"]                          = { fg = c.groups.accents.primary },
    ["@module.builtin"]                  = { fg = c.groups.accents.primary },
    ["@label"]                           = { link = "Label" },

    -- ── Strings ────────────────────────────────────────────────
    ["@string"]                          = { link = "String" },
    ["@string.documentation"]            = { fg = c.groups.syntax.string, style = S(styles, "strings") },
    ["@string.regexp"]                   = { fg = c.groups.syntax.constant },
    ["@string.escape"]                   = { fg = c.groups.syntax.constant },
    ["@string.special"]                  = { link = "SpecialChar" },
    ["@string.special.symbol"]           = { fg = c.groups.syntax.constant },
    ["@string.special.path"]             = { fg = c.groups.accents.primary },
    ["@string.special.url"]              = { fg = c.groups.accents.primary, underline = true },

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
    ["@attribute"]                       = { fg = c.groups.syntax.attribute },
    ["@attribute.builtin"]               = { fg = c.groups.syntax.constant },
    ["@property"]                        = { fg = c.groups.ui.foreground, style = S(styles, "variables") },

    -- ── Functions ──────────────────────────────────────────────
    ["@function"]                        = { link = "Function" },
    ["@function.builtin"]                = { fg = c.groups.syntax.functions, style = S(styles, "functions") },
    ["@function.call"]                   = { link = "Function" },
    ["@function.macro"]                  = { fg = c.groups.syntax.constant },
    ["@function.method"]                 = { link = "Function" },
    ["@function.method.call"]            = { link = "Function" },

    -- ── Constructors ───────────────────────────────────────────
    ["@constructor"]                     = { fg = c.groups.syntax.constructor },

    -- ── Operators / punctuation ────────────────────────────────
    ["@operator"]                        = { link = "Operator" },
    ["@punctuation"]                     = { fg = c.groups.ui.subtle },
    ["@punctuation.delimiter"]           = { fg = c.groups.ui.subtle },
    ["@punctuation.bracket"]             = { fg = c.groups.ui.subtle },
    ["@punctuation.special"]             = { fg = c.groups.syntax.constant },

    -- ── Comments ───────────────────────────────────────────────
    ["@comment"]                         = { link = "Comment" },
    ["@comment.documentation"]           = { fg = c.groups.ui.muted, style = S(styles, "comments") },
    ["@comment.error"]                   = { fg = c.groups.accents.rose },
    ["@comment.warning"]                 = { fg = c.groups.diagnostics.warning },
    ["@comment.todo"]                    = { fg = c.groups.ui.strong, bg = c.groups.accents.quaternary, blend = 20 },
    ["@comment.note"]                    = { fg = c.groups.diagnostics.info },
    ["@comment.hint"]                    = { fg = c.groups.diagnostics.hint },
    ["@comment.info"]                    = { fg = c.groups.diagnostics.info },

    -- ── Keywords ───────────────────────────────────────────────
    ["@keyword"]                         = { fg = c.groups.syntax.control, style = S(styles, "keywords") },
    ["@keyword.coroutine"]               = { fg = c.groups.syntax.control, style = S(styles, "keywords") },
    ["@keyword.function"]                = { fg = c.groups.accents.primary, style = S(styles, "keywords") },
    ["@keyword.operator"]                = { fg = c.groups.syntax.control, style = S(styles, "keywords") },
    ["@keyword.import"]                  = { link = "Include" },
    ["@keyword.type"]                    = { link = "@keyword" },
    ["@keyword.modifier"]                = { fg = c.groups.accents.primary, style = S(styles, "keywords") },
    ["@keyword.repeat"]                  = { link = "Repeat" },
    ["@keyword.return"]                  = { fg = c.groups.syntax.control, style = S(styles, "keywords") },
    ["@keyword.debug"]                   = { fg = c.groups.accents.rose },
    ["@keyword.exception"]               = { link = "Exception" },
    ["@keyword.conditional"]             = { link = "Conditional" },
    ["@keyword.conditional.ternary"]     = { fg = c.groups.ui.text_muted },
    ["@keyword.directive"]               = { link = "Define" },
    ["@keyword.directive.define"]        = { link = "Define" },
    ["@keyword.storage"]                 = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },

    -- ── HTML / JSX / XML tags ──────────────────────────────────
    ["@tag"]                             = { fg = c.groups.accents.primary },
    ["@tag.builtin"]                     = { fg = c.groups.accents.primary },
    ["@tag.attribute"]                   = { fg = c.groups.accents.quaternary },
    ["@tag.delimiter"]                   = { fg = c.groups.ui.subtle },

    -- ── Markup (Markdown etc.) ─────────────────────────────────
    ["@markup"]                          = { fg = c.groups.ui.foreground },
    ["@markup.strong"]                   = { bold = true },
    ["@markup.italic"]                   = { italic = true },
    ["@markup.strikethrough"]            = { strikethrough = true },
    ["@markup.underline"]                = { underline = true },
    ["@markup.heading"]                  = { fg = c.groups.syntax.functions, style = S(styles, "keywords") },
    ["@markup.heading.1"]                = { fg = c.groups.syntax.functions, style = S(styles, "keywords") },
    ["@markup.heading.2"]                = { fg = c.groups.syntax.keyword, style = S(styles, "keywords") },
    ["@markup.heading.3"]                = { fg = c.groups.accents.earth, style = S(styles, "keywords") },
    ["@markup.heading.4"]                = { fg = c.groups.accents.primary, style = S(styles, "keywords") },
    ["@markup.heading.5"]                = { fg = c.groups.syntax.string, style = S(styles, "keywords") },
    ["@markup.heading.6"]                = { fg = c.groups.syntax.constant, style = S(styles, "keywords") },
    ["@markup.quote"]                    = { fg = c.groups.ui.text_muted },
    ["@markup.math"]                     = { fg = c.groups.accents.primary },
    ["@markup.environment"]              = { fg = c.groups.syntax.constant },
    ["@markup.link"]                     = { fg = c.groups.accents.primary, underline = true },
    ["@markup.link.label"]               = { fg = c.groups.accents.primary },
    ["@markup.link.url"]                 = { fg = c.groups.accents.primary, underline = true },
    ["@markup.raw"]                      = { fg = c.groups.accents.green },
    ["@markup.raw.block"]                = { fg = c.groups.accents.green },
    ["@markup.list"]                     = { fg = c.groups.syntax.keyword },
    ["@markup.list.checked"]             = { fg = c.groups.git.add },
    ["@markup.list.unchecked"]           = { fg = c.groups.ui.subtle },

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
    ["@diff.plus"]                       = { fg = c.groups.git.add },
    ["@diff.minus"]                      = { fg = c.groups.git.delete },
    ["@diff.delta"]                      = { fg = c.groups.git.change },

    -- ── Misc ───────────────────────────────────────────────────
    ["@conceal"]                         = { fg = c.groups.ui.subtle },
    ["@none"]                            = {},
    ["@error"]                           = { fg = c.groups.accents.rose },
    ["@spell"]                           = {},
    ["@nospell"]                         = {},
  }
end

return { get_hl = get_hl }
