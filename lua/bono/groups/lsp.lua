--- LSP and diagnostic highlight groups
---@param c table Palette
local function get_hl(c)
  return {
    -- Diagnostic signs
    DiagnosticError             = { fg = c.groups.diagnostics.error },
    DiagnosticWarn              = { fg = c.groups.diagnostics.warning },
    DiagnosticInfo              = { fg = c.groups.diagnostics.info },
    DiagnosticHint              = { fg = c.groups.diagnostics.hint },
    DiagnosticOk                = { fg = c.groups.diagnostics.success },
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
    DiagnosticVirtualTextError  = { fg = c.groups.diagnostics.error, bg = c.groups.diagnostics.error, blend = 12 },
    DiagnosticVirtualTextWarn   = { fg = c.groups.diagnostics.warning, bg = c.groups.diagnostics.warning, blend = 12 },
    DiagnosticVirtualTextInfo   = { fg = c.groups.diagnostics.info, bg = c.groups.diagnostics.info, blend = 12 },
    DiagnosticVirtualTextHint   = { fg = c.groups.diagnostics.hint, bg = c.groups.diagnostics.hint, blend = 12 },
    DiagnosticVirtualTextOk     = { fg = c.groups.diagnostics.success, bg = c.groups.diagnostics.success, blend = 12 },
    DiagnosticUnderlineError    = { sp = c.groups.diagnostics.error, undercurl = true },
    DiagnosticUnderlineWarn     = { sp = c.groups.diagnostics.warning, undercurl = true },
    DiagnosticUnderlineInfo     = { sp = c.groups.diagnostics.info, undercurl = true },
    DiagnosticUnderlineHint     = { sp = c.groups.diagnostics.hint, undercurl = true },
    DiagnosticUnderlineOk       = { sp = c.groups.diagnostics.success, undercurl = true },

    -- LSP references
    LspReferenceRead            = { bg = c.groups.ui.selection, blend = 15 },
    LspReferenceText            = { bg = c.groups.ui.selection, blend = 15 },
    LspReferenceWrite           = { bg = c.groups.ui.selection, blend = 15 },

    -- LSP codelens
    LspCodeLens                 = { fg = c.groups.ui.muted },
    LspCodeLensSeparator        = { fg = c.groups.ui.border },

    -- LSP inlay hints
    LspInlayHint                = { fg = c.groups.ui.muted, bg = c.groups.ui.surface },

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
