--- Base UI highlight groups
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  return {
    Normal         = { fg = c.groups.ui.foreground, bg = opts.transparent and "NONE" or c.groups.ui.background },
    NormalNC       = { fg = c.groups.ui.foreground, bg = opts.dim_inactive and c.groups.ui.surface or (opts.transparent and "NONE" or c.groups.ui.background) },
    NormalFloat    = { bg = c.groups.ui.background },
    FloatBorder    = { fg = c.groups.ui.border, bg = c.groups.ui.background },
    FloatTitle     = { fg = c.groups.ui.strong, bg = c.groups.ui.background },

    ColorColumn    = { bg = "NONE" },
    Conceal        = { bg = "NONE" },
    Cursor         = { fg = c.groups.ui.background, bg = c.groups.ui.foreground },
    CursorColumn   = { bg = c.groups.ui.overlay },
    VirtColumn     = { fg = c.groups.ui.border },
    CursorLine     = { bg = c.groups.ui.overlay },
    CursorLineNr   = { fg = c.groups.ui.strong },
    Directory      = { fg = c.groups.accents.primary },

    DiffAdd        = { bg = c.groups.accents.green, blend = 15 },
    DiffChange     = { bg = c.groups.accents.quaternary, blend = 15 },
    DiffDelete     = { bg = c.groups.accents.rose, blend = 15 },
    DiffText       = { bg = c.groups.accents.quaternary, blend = 20 },

    EndOfBuffer    = { fg = c.groups.ui.background },

    ErrorMsg       = { fg = c.groups.diagnostics.error },
    FoldColumn     = { fg = c.groups.ui.subtle },
    Folded         = { fg = c.groups.ui.text_muted, bg = c.groups.ui.surface },

    IncSearch      = { reverse = true },
    CurSearch      = { link = "IncSearch" },
    Search         = { bg = c.groups.accents.quaternary, blend = 25 },
    Substitute     = { bg = c.groups.accents.primary, blend = 25 },

    LineNr         = { fg = c.groups.ui.muted },
    LineNrAbove    = { link = "LineNr" },
    LineNrBelow    = { link = "LineNr" },

    MatchParen     = { bg = c.groups.accents.tertiary, blend = 20 },

    ModeMsg        = { fg = c.groups.ui.text_muted },
    MoreMsg        = { fg = c.groups.accents.primary },
    MsgArea        = { fg = c.groups.ui.text_muted },

    NonText        = { fg = c.groups.ui.border },
    Whitespace     = { fg = c.groups.ui.border },

    Pmenu          = { fg = c.groups.ui.text_muted, bg = c.groups.ui.surface },
    PmenuSel       = { fg = c.groups.ui.strong, bg = c.groups.ui.overlay },
    PmenuSbar      = { bg = c.groups.ui.overlay },
    PmenuThumb     = { bg = c.groups.ui.border },

    Question       = { fg = c.groups.accents.primary },

    QuickFixLine   = { bg = c.groups.ui.overlay },

    SignColumn     = { fg = c.groups.ui.strong, bg = opts.transparent and "NONE" or c.groups.ui.background },

    SpecialKey     = { fg = c.groups.accents.primary },

    SpellBad       = { sp = c.groups.diagnostics.error, undercurl = true },
    SpellCap       = { sp = c.groups.diagnostics.warning, undercurl = true },
    SpellLocal     = { sp = c.groups.diagnostics.info, undercurl = true },
    SpellRare      = { sp = c.groups.diagnostics.hint, undercurl = true },

    StatusLine     = { fg = c.groups.ui.text_muted, bg = c.groups.ui.surface },
    StatusLineNC   = { fg = c.groups.ui.border, bg = c.groups.ui.surface },

    TabLine        = { fg = c.groups.ui.subtle, bg = c.groups.ui.surface },
    TabLineFill    = { bg = c.groups.ui.surface },
    TabLineSel     = { fg = c.groups.ui.strong, bg = c.groups.ui.background },

    Title          = { fg = c.groups.ui.strong },

    VertSplit      = { fg = c.groups.ui.border },

    Visual         = { bg = c.groups.ui.selection, blend = 15 },
    VisualNOS      = { link = "Visual" },

    WarningMsg     = { fg = c.groups.diagnostics.warning },

    WildMenu       = { fg = c.groups.ui.strong, bg = c.groups.ui.overlay },

    WinBar         = { fg = c.groups.ui.text_muted, bg = c.groups.ui.surface },
    WinBarNC       = { fg = c.groups.ui.border, bg = c.groups.ui.surface },
    WinSeparator   = { fg = c.groups.ui.border },
  }
end

return { get_hl = get_hl }
