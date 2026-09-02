--- LSP and diagnostic highlight groups
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  -- palette1 (cream:#527594 / espresso:#8fb4d6) modules, tags, links, UI accents
  -- palette2 (cream:#2d6c6c / espresso:#d19a66) keywords, types, completion
  -- palette3 (cream:#7c619a / espresso:#6caaa4) constants, preprocessor, special
  -- palette4 (cream:#6e5c20 / espresso:#d19a66) numbers, booleans
  -- palette5 (cream:#b05555 / espresso:#d28f8f) errors, debug
  -- palette6 (cream:#3d6e3d / espresso:#98a880) strings
  -- palette7 (cream:#63742f / espresso:#8b6a5c) markdown H3
  -- palette8 (cream:#9a5f22 / espresso:#b5a6d6) reserved
  return {
    -- Diagnostic signs
    DiagnosticError             = { fg = c.danger },
    DiagnosticWarn              = { fg = c.warning },
    DiagnosticInfo              = { fg = c.info },
    DiagnosticHint              = { fg = c.hint },
    DiagnosticOk                = { fg = c.success },
    DiagnosticDefaultError      = { link = "DiagnosticError" },
    DiagnosticDefaultWarn       = { link = "DiagnosticWarn" },
    DiagnosticDefaultInfo       = { link = "DiagnosticInfo" },
    DiagnosticDefaultHint       = { link = "DiagnosticHint" },
    DiagnosticDefaultOk         = { link = "DiagnosticOk" },
    DiagnosticFloatingError     = { link = "DiagnosticError" },
    DiagnosticFloatingWarn      = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo      = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint      = { link = "DiagnosticHint" },
    DiagnosticFloatingOk        = { link = "DiagnosticOk" },
    DiagnosticSignError         = { link = "DiagnosticError" },
    DiagnosticSignWarn          = { link = "DiagnosticWarn" },
    DiagnosticSignInfo          = { link = "DiagnosticInfo" },
    DiagnosticSignHint          = { link = "DiagnosticHint" },
    DiagnosticSignOk            = { link = "DiagnosticOk" },
    DiagnosticVirtualTextError  = { fg = c.danger, bg = c.danger, blend = 12 },
    DiagnosticVirtualTextWarn   = { fg = c.warning, bg = c.warning, blend = 12 },
    DiagnosticVirtualTextInfo   = { fg = c.info, bg = c.info, blend = 12 },
    DiagnosticVirtualTextHint   = { fg = c.hint, bg = c.hint, blend = 12 },
    DiagnosticVirtualTextOk     = { fg = c.success, bg = c.success, blend = 12 },
    DiagnosticUnderlineError    = { sp = c.danger, undercurl = true },
    DiagnosticUnderlineWarn     = { sp = c.warning, undercurl = true },
    DiagnosticUnderlineInfo     = { sp = c.info, undercurl = true },
    DiagnosticUnderlineHint     = { sp = c.hint, undercurl = true },
    DiagnosticUnderlineOk       = { sp = c.success, undercurl = true },

    -- LSP references
    LspReferenceRead            = { bg = c.palette1, blend = 15 },
    LspReferenceText            = { bg = c.palette1, blend = 15 },
    LspReferenceWrite           = { bg = c.palette1, blend = 15 },

    -- LSP codelens
    LspCodeLens                 = { fg = c.light },
    LspCodeLensSeparator        = { fg = c.lighter },

    -- LSP inlay hints
    LspInlayHint                = { fg = c.light, bg = c.surface },

    -- Semantic tokens — link to tree-sitter groups
    ["@lsp.type.class"]         = { link = "@type" },
    ["@lsp.type.comment"]       = { link = "@comment" },
    ["@lsp.type.decorator"]     = { link = "@function" },
    ["@lsp.type.enum"]          = { link = "@type" },
    ["@lsp.type.enumMember"]    = { link = "@constant" },
    ["@lsp.type.function"]      = { link = "@function" },
    ["@lsp.type.interface"]     = { link = "@type" },
    ["@lsp.type.macro"]         = { link = "@constant.macro" },
    ["@lsp.type.method"]        = { link = "@function.method" },
    ["@lsp.type.namespace"]     = { link = "@module" },
    ["@lsp.type.parameter"]     = { link = "@variable.parameter" },
    ["@lsp.type.property"]      = { link = "@property" },
    ["@lsp.type.struct"]        = { link = "@type" },
    ["@lsp.type.type"]          = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type" },
    ["@lsp.type.variable"]      = { link = "@variable" },

    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
  }
end

return { get_hl = get_hl }
