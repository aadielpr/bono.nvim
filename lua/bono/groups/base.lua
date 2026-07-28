--- Base UI highlight groups
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  local styles = opts.styles

  return {
    Normal         = { fg = c.fg, bg = opts.transparent and "NONE" or c.bg },
    NormalNC       = { fg = c.fg, bg = opts.dim_inactive and c.surface or (opts.transparent and "NONE" or c.bg) },
    NormalFloat    = { bg = c.bg },
    FloatBorder    = { fg = c.lighter, bg = c.bg },
    FloatTitle     = { fg = c.darkest, bg = c.bg },

    ColorColumn    = { bg = "NONE" },
    Conceal        = { bg = "NONE" },
    Cursor         = { fg = c.bg, bg = c.fg },
    CursorColumn   = { bg = c.overlay },
    VirtColumn     = { fg = c.lighter },
    CursorLine     = { bg = c.overlay },
    CursorLineNr   = { fg = c.darkest },
    Directory      = { fg = c.blue },

    DiffAdd        = { bg = c.green, blend = 15 },
    DiffChange     = { bg = c.yellow, blend = 15 },
    DiffDelete     = { bg = c.red, blend = 15 },
    DiffText       = { bg = c.yellow, blend = 20 },

    EndOfBuffer    = { fg = c.bg },

    ErrorMsg       = { fg = c.danger },
    FoldColumn     = { fg = c.mid },
    Folded         = { fg = c.dark, bg = c.surface },

    IncSearch      = { reverse = true },
    CurSearch      = { link = "IncSearch" },
    Search         = { bg = c.yellow, blend = 25 },
    Substitute     = { bg = c.blue, blend = 25 },

    LineNr         = { fg = c.light },
    LineNrAbove    = { link = "LineNr" },
    LineNrBelow    = { link = "LineNr" },

    MatchParen     = { bg = c.purple, blend = 20 },

    ModeMsg        = { fg = c.dark },
    MoreMsg        = { fg = c.blue },
    MsgArea        = { fg = c.dark },

    NonText        = { fg = c.lighter },
    Whitespace     = { fg = c.lighter },

    Pmenu          = { fg = c.dark, bg = c.surface },
    PmenuSel       = { fg = c.darkest, bg = c.overlay },
    PmenuSbar      = { bg = c.overlay },
    PmenuThumb     = { bg = c.lighter },

    Question       = { fg = c.blue },

    QuickFixLine   = { bg = c.overlay },

    SignColumn     = { fg = c.darkest, bg = opts.transparent and "NONE" or c.bg },

    SpecialKey     = { fg = c.blue },

    SpellBad       = { sp = c.danger, undercurl = true },
    SpellCap       = { sp = c.warning, undercurl = true },
    SpellLocal     = { sp = c.info, undercurl = true },
    SpellRare      = { sp = c.hint, undercurl = true },

    StatusLine     = { fg = c.dark, bg = c.surface },
    StatusLineNC   = { fg = c.lighter, bg = c.surface },

    TabLine        = { fg = c.mid, bg = c.surface },
    TabLineFill    = { bg = c.surface },
    TabLineSel     = { fg = c.darkest, bg = c.bg },

    Title          = { fg = c.darkest },

    VertSplit      = { fg = c.lighter },

    Visual         = { bg = c.blue, blend = 15 },
    VisualNOS      = { link = "Visual" },

    WarningMsg     = { fg = c.warning },

    WildMenu       = { fg = c.darkest, bg = c.overlay },

    WinBar         = { fg = c.dark, bg = c.surface },
    WinBarNC       = { fg = c.lighter, bg = c.surface },
    WinSeparator   = { fg = c.lighter },
  }
end

return { get_hl = get_hl }
