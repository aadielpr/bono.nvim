--- Plugin-specific highlight groups
--- Mapped from our palette — references rose-pine's coverage, uses bono colors
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  local styles = opts.styles

  return {
    -- ============================================================
    -- blink.cmp
    -- ============================================================
    BlinkCmpDoc                  = { bg = c.surface },
    BlinkCmpDocSeparator         = { bg = c.surface },
    BlinkCmpDocBorder            = { fg = c.light },
    BlinkCmpGhostText            = { fg = c.lighter },
    BlinkCmpLabel                = { fg = c.dark },
    BlinkCmpLabelDeprecated      = { fg = c.light, strikethrough = true },
    BlinkCmpLabelMatch           = { fg = c.fg },
    BlinkCmpDefault              = { fg = c.light },
    BlinkCmpKindText             = { fg = c.blue },
    BlinkCmpKindMethod           = { fg = c.cyan },
    BlinkCmpKindFunction         = { fg = c.cyan },
    BlinkCmpKindConstructor      = { fg = c.cyan },
    BlinkCmpKindField            = { fg = c.blue },
    BlinkCmpKindVariable         = { fg = c.red },
    BlinkCmpKindClass            = { fg = c.yellow },
    BlinkCmpKindInterface        = { fg = c.yellow },
    BlinkCmpKindModule           = { fg = c.cyan },
    BlinkCmpKindProperty         = { fg = c.cyan },
    BlinkCmpKindUnit             = { fg = c.blue },
    BlinkCmpKindValue            = { fg = c.red },
    BlinkCmpKindKeyword          = { fg = c.purple },
    BlinkCmpKindSnippet          = { fg = c.purple },
    BlinkCmpKindColor            = { fg = c.red },
    BlinkCmpKindFile             = { fg = c.cyan },
    BlinkCmpKindReference        = { fg = c.red },
    BlinkCmpKindFolder           = { fg = c.cyan },
    BlinkCmpKindEnum             = { fg = c.cyan },
    BlinkCmpKindEnumMember       = { fg = c.cyan },
    BlinkCmpKindConstant         = { fg = c.yellow },
    BlinkCmpKindStruct           = { fg = c.cyan },
    BlinkCmpKindEvent            = { fg = c.cyan },
    BlinkCmpKindOperator         = { fg = c.cyan },
    BlinkCmpKindTypeParameter    = { fg = c.purple },
    BlinkCmpKindCodeium          = { fg = c.cyan },
    BlinkCmpKindCopilot          = { fg = c.cyan },
    BlinkCmpKindSupermaven       = { fg = c.cyan },
    BlinkCmpKindTabNine          = { fg = c.cyan },

    -- ============================================================
    -- gitsigns.nvim
    -- ============================================================
    GitSignsAdd                  = { fg = c.success },
    GitSignsChange               = { fg = c.warning },
    GitSignsDelete               = { fg = c.danger },
    SignAdd                      = { fg = c.success },
    SignChange                   = { fg = c.warning },
    SignDelete                   = { fg = c.danger },

    -- ============================================================
    -- telescope.nvim
    -- ============================================================
    TelescopeBorder              = { fg = c.lighter },
    TelescopeMatching            = { fg = c.cyan },
    TelescopeNormal              = { bg = c.bg },
    TelescopePromptNormal        = { fg = c.fg, bg = c.bg },
    TelescopePromptPrefix        = { fg = c.light },
    TelescopeSelection           = { fg = c.fg, bg = c.overlay },
    TelescopeSelectionCaret      = { fg = c.danger, bg = c.overlay },
    TelescopeTitle               = { fg = c.cyan },
    TelescopeResultsNormal       = { bg = c.bg },
    TelescopePreviewNormal       = { bg = c.bg },
    TelescopePromptBorder        = { fg = c.lighter },
    TelescopeResultsBorder       = { fg = c.lighter },
    TelescopePreviewBorder       = { fg = c.lighter },

    -- ============================================================
    -- neo-tree.nvim
    -- ============================================================
    NeoTreeGitAdded              = { fg = c.success },
    NeoTreeGitConflict           = { fg = c.warning },
    NeoTreeGitDeleted            = { fg = c.danger },
    NeoTreeGitIgnored            = { fg = c.light },
    NeoTreeGitModified           = { fg = c.warning },
    NeoTreeGitRenamed            = { fg = c.blue },
    NeoTreeGitUntracked          = { fg = c.mid },
    NeoTreeTabActive             = { fg = c.fg, bg = c.overlay },
    NeoTreeTabInactive           = { fg = c.light },
    NeoTreeTabSeparatorActive    = { fg = c.lighter },
    NeoTreeTabSeparatorInactive  = { fg = c.lighter },
    NeoTreeTitleBar              = { fg = c.surface, bg = c.blue },
    NeoTreeNormal                = { bg = opts.transparent and "NONE" or c.bg },
    NeoTreeNormalNC              = { bg = opts.transparent and "NONE" or c.bg },
    NeoTreeDirectoryName         = { fg = c.cyan },
    NeoTreeDirectoryIcon         = { fg = c.mid },
    NeoTreeFileName              = { fg = c.fg },
    NeoTreeFileIcon              = { fg = c.mid },
    NeoTreeIndentMarker          = { fg = c.lighter },
    NeoTreeFloatBorder           = { fg = c.lighter },
    NeoTreeFloatTitle            = { fg = c.darkest },
    NeoTreeFloatNormal           = { bg = c.surface },
    NeoTreeCursorLine            = { bg = c.overlay },
    NeoTreeDimText               = { fg = c.light },
    NeoTreeDotfile               = { fg = c.light },
    NeoTreeFileNameOpened        = { fg = c.cyan, bold = true },
    NeoTreeFilterTerm            = { fg = c.danger },
    NeoTreeModified              = { fg = c.warning },
    NeoTreeRootName              = { fg = c.darkest },
    NeoTreeSymbolicLinkTarget    = { fg = c.cyan },

    -- ============================================================
    -- nvim-treesitter-context
    -- ============================================================
    TreesitterContext            = { bg = c.overlay },
    TreesitterContextLineNumber  = { fg = c.purple, bg = c.overlay },
    TreesitterContextBottom      = { underline = true, sp = c.lighter },

    -- ============================================================
    -- indent-blankline.nvim
    -- ============================================================
    IblIndent                    = { fg = c.lightest },
    IblScope                     = { fg = c.cyan },
    IblWhitespace                = { fg = c.lightest },

    -- ============================================================
    -- rainbow-delimiters.nvim
    -- ============================================================
    RainbowDelimiterBlue         = { fg = c.blue },
    RainbowDelimiterCyan         = { fg = c.cyan },
    RainbowDelimiterGreen        = { fg = c.green },
    RainbowDelimiterOrange       = { fg = c.yellow },
    RainbowDelimiterRed          = { fg = c.red },
    RainbowDelimiterViolet       = { fg = c.purple },
    RainbowDelimiterYellow       = { fg = c.yellow },

    -- ============================================================
    -- flash.nvim
    -- ============================================================
    FlashLabel                   = { fg = c.bg, bg = c.danger },
    FlashBackdrop                = { fg = c.light },
    FlashMatch                   = { fg = c.fg, bg = c.overlay },
    FlashCurrent                 = { fg = c.bg, bg = c.blue },

    -- ============================================================
    -- which-key.nvim
    -- ============================================================
    WhichKey                     = { fg = c.purple },
    WhichKeyBorder               = { fg = c.lighter },
    WhichKeyDesc                 = { fg = c.yellow },
    WhichKeyFloat                = { bg = c.surface },
    WhichKeyGroup                = { fg = c.blue },
    WhichKeyIcon                 = { fg = c.blue },
    WhichKeyNormal               = { bg = c.surface },
    WhichKeySeparator            = { fg = c.light },
    WhichKeyTitle                = { fg = c.blue },
    WhichKeyValue                = { fg = c.purple },

    -- ============================================================
    -- trouble.nvim
    -- ============================================================
    TroubleText                  = { fg = c.dark },
    TroubleCount                 = { fg = c.purple, bg = c.surface },
    TroubleNormal                = { fg = c.fg, bg = c.surface },
    TroubleFoldIcon              = { fg = c.light },
    TroubleIndent                = { fg = c.lighter },
    TroubleLocation              = { fg = c.dark },
    TroublePreview               = { fg = c.fg, bg = c.surface },
    TroubleSource                = { fg = c.light },
    TroubleSignError             = { fg = c.danger },
    TroubleSignHint              = { fg = c.hint },
    TroubleSignInfo              = { fg = c.info },
    TroubleSignOther             = { fg = c.mid },
    TroubleSignWarning           = { fg = c.warning },

    -- ============================================================
    -- diffview.nvim
    -- ============================================================
    DiffviewPrimary              = { fg = c.blue },
    DiffviewSecondary            = { fg = c.cyan },
    DiffviewNormal               = { fg = c.fg, bg = c.surface },
    DiffviewWinSeparator         = { fg = c.lighter },
    DiffviewFilePanelTitle       = { fg = c.blue },
    DiffviewFilePanelCounter     = { fg = c.purple },
    DiffviewFilePanelRootPath    = { fg = c.blue },
    DiffviewFilePanelFileName    = { fg = c.fg },
    DiffviewFilePanelSelected    = { fg = c.yellow },
    DiffviewFilePanelPath        = { fg = c.light },
    DiffviewFilePanelInsertions  = { fg = c.success },
    DiffviewFilePanelDeletions   = { fg = c.danger },
    DiffviewFilePanelConflicts   = { fg = c.warning },
    DiffviewFolderName           = { fg = c.blue },
    DiffviewFolderSign           = { fg = c.mid },
    DiffviewHash                 = { fg = c.purple },
    DiffviewReference            = { fg = c.cyan },
    DiffviewReflogSelector       = { fg = c.purple },
    DiffviewStatusAdded          = { fg = c.success },
    DiffviewStatusUntracked      = { fg = c.cyan },
    DiffviewStatusModified       = { fg = c.warning },
    DiffviewStatusRenamed        = { fg = c.blue },
    DiffviewStatusCopied         = { fg = c.cyan },
    DiffviewStatusTypeChange     = { fg = c.warning },
    DiffviewStatusUnmerged       = { fg = c.danger },
    DiffviewStatusUnknown        = { fg = c.danger },
    DiffviewStatusDeleted        = { fg = c.danger },
    DiffviewStatusBroken         = { fg = c.danger },
    DiffviewStatusIgnored        = { fg = c.light },

    -- ============================================================
    -- oil.nvim
    -- ============================================================
    OilDir                       = { fg = c.cyan },
    OilDirIcon                   = { fg = c.mid },
    OilFile                      = { fg = c.fg },
    OilFileIcon                  = { fg = c.mid },
    OilSocket                    = { fg = c.purple },
    OilSocketIcon                = { fg = c.purple },
    OilPipe                      = { fg = c.yellow },
    OilPipeIcon                  = { fg = c.yellow },
    OilLink                      = { fg = c.cyan },
    OilLinkIcon                  = { fg = c.cyan },
    OilCreate                    = { fg = c.success },
    OilDelete                    = { fg = c.danger },
    OilChange                    = { fg = c.warning },
    OilMove                      = { fg = c.yellow },
    OilCopy                      = { fg = c.blue },
    OilRestore                   = { fg = c.purple },
    OilPurge                     = { fg = c.danger },
    OilTrash                     = { fg = c.light },
    OilTrashSourcePath           = { fg = c.light },
    OilProgress                  = { fg = c.blue },
    OilProgressDone              = { fg = c.success },
    OilProgressError             = { fg = c.danger },
    OilNormal                    = { bg = c.bg },
    OilTitle                     = { fg = c.darkest, bg = c.bg },
    OilSignColumn                = { bg = c.bg },
    OilPreviewTitle              = { fg = c.darkest },
    OilPreviewTitleBackground    = { bg = c.bg },
    OilPreviewBorder             = { fg = c.lighter },
    OilPreviewNormal             = { bg = c.bg },
    OilFloatBorder               = { fg = c.lighter },
    OilFloatTitle                = { fg = c.darkest },
    OilCursorLine                = { bg = c.overlay },
    OilWinSeparator              = { fg = c.lighter },

    -- ============================================================
    -- snacks.nvim
    -- ============================================================
    SnacksIndent                 = { fg = c.lightest },
    SnacksIndentChunk            = { fg = c.lightest },
    SnacksIndentBlank            = { fg = c.lightest },
    SnacksIndentScope            = { fg = c.blue },
    SnacksPickerMatch            = { fg = c.purple },

    -- ============================================================
    -- render-markdown.nvim
    -- ============================================================
    RenderMarkdownBullet         = { fg = c.purple },
    RenderMarkdownChecked        = { fg = c.success },
    RenderMarkdownCode           = { bg = c.overlay },
    RenderMarkdownCodeInline     = { fg = c.dark, bg = c.overlay },
    RenderMarkdownDash           = { fg = c.light },
    RenderMarkdownQuote          = { fg = c.dark },
    RenderMarkdownTableFill      = { fg = c.light },
    RenderMarkdownTableHead      = { fg = c.darkest },
    RenderMarkdownTableRow       = { fg = c.dark },
    RenderMarkdownUnchecked      = { fg = c.light },

    -- ============================================================
    -- mason.nvim
    -- ============================================================
    MasonHeader                  = { fg = c.blue },
    MasonHeaderSecondary         = { fg = c.mid },
    MasonHighlight               = { fg = c.purple },
    MasonHighlightBlock          = { bg = c.overlay },
    MasonHighlightBlockBold      = { fg = c.fg, bg = c.overlay },
    MasonHighlightBlockSecondary = { fg = c.purple, bg = c.overlay },
    MasonHighlightSecondary      = { fg = c.mid },
    MasonMuted                   = { fg = c.light },
    MasonMutedBlock              = { fg = c.light, bg = c.overlay },
    MasonMutedBlockBold          = { fg = c.light, bg = c.overlay },
    MasonHeading                 = { fg = c.darkest },
    MasonHeadingSecondary        = { fg = c.dark },
    MasonNormal                  = { fg = c.fg, bg = c.bg },
    MasonError                   = { fg = c.danger },
    MasonWarning                 = { fg = c.warning },
    MasonInfo                    = { fg = c.info },

    -- ============================================================
    -- lualine.nvim
    -- ============================================================
    LualineNormal                = { fg = c.dark, bg = c.surface },
    LualineInsert                = { fg = c.bg, bg = c.blue },
    LualineVisual                = { fg = c.bg, bg = c.purple },
    LualineReplace               = { fg = c.bg, bg = c.red },
    LualineCommand               = { fg = c.bg, bg = c.darkest },

    -- ============================================================
    -- harpoon.nvim
    -- ============================================================
    HarpoonBorder                = { fg = c.lighter },
    HarpoonWindow                = { bg = c.surface },
    HarpoonNormal                = { fg = c.fg, bg = c.surface },
    HarpoonTitle                 = { fg = c.blue },

    -- ============================================================
    -- undotree
    -- ============================================================
    UndotreeSavedBig             = { fg = c.purple },
    UndotreeNode                 = { fg = c.blue },
    UndotreeSavedSmall           = { fg = c.green },
    UndotreeCurrent              = { fg = c.red },
    UndotreeNodeCurrent          = { fg = c.red },
    UndotreeSeq                  = { fg = c.blue },
    UndotreeNext                 = { fg = c.blue },

    -- ============================================================
    -- conform.nvim (only shows status, minimal groups)
    -- ============================================================
    -- No specific groups; uses statusline/notify
  }
end

return { get_hl = get_hl }
