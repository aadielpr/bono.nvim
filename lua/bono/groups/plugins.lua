--- Plugin-specific highlight groups
--- Mapped from our palette — references rose-pine's coverage, uses bono colors
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
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
    BlinkCmpKindText             = { fg = c.palette1 },
    BlinkCmpKindMethod           = { fg = c.palette2 },
    BlinkCmpKindFunction         = { fg = c.palette2 },
    BlinkCmpKindConstructor      = { fg = c.palette2 },
    BlinkCmpKindField            = { fg = c.palette1 },
    BlinkCmpKindVariable         = { fg = c.palette5 },
    BlinkCmpKindClass            = { fg = c.palette4 },
    BlinkCmpKindInterface        = { fg = c.palette4 },
    BlinkCmpKindModule           = { fg = c.palette2 },
    BlinkCmpKindProperty         = { fg = c.palette2 },
    BlinkCmpKindUnit             = { fg = c.palette1 },
    BlinkCmpKindValue            = { fg = c.palette5 },
    BlinkCmpKindKeyword          = { fg = c.palette3 },
    BlinkCmpKindSnippet          = { fg = c.palette3 },
    BlinkCmpKindColor            = { fg = c.palette5 },
    BlinkCmpKindFile             = { fg = c.palette2 },
    BlinkCmpKindReference        = { fg = c.palette5 },
    BlinkCmpKindFolder           = { fg = c.palette2 },
    BlinkCmpKindEnum             = { fg = c.palette2 },
    BlinkCmpKindEnumMember       = { fg = c.palette2 },
    BlinkCmpKindConstant         = { fg = c.palette4 },
    BlinkCmpKindStruct           = { fg = c.palette2 },
    BlinkCmpKindEvent            = { fg = c.palette2 },
    BlinkCmpKindOperator         = { fg = c.palette2 },
    BlinkCmpKindTypeParameter    = { fg = c.palette3 },
    BlinkCmpKindCodeium          = { fg = c.palette2 },
    BlinkCmpKindCopilot          = { fg = c.palette2 },
    BlinkCmpKindSupermaven       = { fg = c.palette2 },
    BlinkCmpKindTabNine          = { fg = c.palette2 },

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
    TelescopeMatching            = { fg = c.palette2 },
    TelescopeNormal              = { bg = c.bg },
    TelescopePromptNormal        = { fg = c.fg, bg = c.bg },
    TelescopePromptPrefix        = { fg = c.light },
    TelescopeSelection           = { fg = c.fg, bg = c.overlay },
    TelescopeSelectionCaret      = { fg = c.danger, bg = c.overlay },
    TelescopeTitle               = { fg = c.palette2 },
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
    NeoTreeGitRenamed            = { fg = c.palette1 },
    NeoTreeGitUntracked          = { fg = c.mid },
    NeoTreeTabActive             = { fg = c.fg, bg = c.overlay },
    NeoTreeTabInactive           = { fg = c.light },
    NeoTreeTabSeparatorActive    = { fg = c.lighter },
    NeoTreeTabSeparatorInactive  = { fg = c.lighter },
    NeoTreeTitleBar              = { fg = c.surface, bg = c.palette1 },
    NeoTreeNormal                = { bg = opts.transparent and "NONE" or c.bg },
    NeoTreeNormalNC              = { bg = opts.transparent and "NONE" or c.bg },
    NeoTreeDirectoryName         = { fg = c.palette2 },
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
    NeoTreeFileNameOpened        = { fg = c.palette2, bold = true },
    NeoTreeFilterTerm            = { fg = c.danger },
    NeoTreeModified              = { fg = c.warning },
    NeoTreeRootName              = { fg = c.darkest },
    NeoTreeSymbolicLinkTarget    = { fg = c.palette2 },

    -- ============================================================
    -- nvim-treesitter-context
    -- ============================================================
    TreesitterContext            = { bg = c.overlay },
    TreesitterContextLineNumber  = { fg = c.palette3, bg = c.overlay },
    TreesitterContextBottom      = { underline = true, sp = c.lighter },

    -- ============================================================
    -- indent-blankline.nvim
    -- ============================================================
    IblIndent                    = { fg = c.lightest },
    IblScope                     = { fg = c.palette2 },
    IblWhitespace                = { fg = c.lightest },

    -- ============================================================
    -- rainbow-delimiters.nvim
    -- ============================================================
    RainbowDelimiterBlue         = { fg = c.palette1 },
    RainbowDelimiterCyan         = { fg = c.palette2 },
    RainbowDelimiterGreen        = { fg = c.palette6 },
    RainbowDelimiterOrange       = { fg = c.palette4 },
    RainbowDelimiterRed          = { fg = c.palette5 },
    RainbowDelimiterViolet       = { fg = c.palette3 },
    RainbowDelimiterYellow       = { fg = c.palette4 },

    -- ============================================================
    -- flash.nvim
    -- ============================================================
    FlashLabel                   = { fg = c.bg, bg = c.danger },
    FlashBackdrop                = { fg = c.light },
    FlashMatch                   = { fg = c.fg, bg = c.overlay },
    FlashCurrent                 = { fg = c.bg, bg = c.palette1 },

    -- ============================================================
    -- which-key.nvim
    -- ============================================================
    WhichKey                     = { fg = c.palette3 },
    WhichKeyBorder               = { fg = c.lighter },
    WhichKeyDesc                 = { fg = c.palette4 },
    WhichKeyFloat                = { bg = c.surface },
    WhichKeyGroup                = { fg = c.palette1 },
    WhichKeyIcon                 = { fg = c.palette1 },
    WhichKeyNormal               = { bg = c.surface },
    WhichKeySeparator            = { fg = c.light },
    WhichKeyTitle                = { fg = c.palette1 },
    WhichKeyValue                = { fg = c.palette3 },

    -- ============================================================
    -- trouble.nvim
    -- ============================================================
    TroubleText                  = { fg = c.dark },
    TroubleCount                 = { fg = c.palette3, bg = c.surface },
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
    DiffviewPrimary              = { fg = c.palette1 },
    DiffviewSecondary            = { fg = c.palette2 },
    DiffviewNormal               = { fg = c.fg, bg = c.surface },
    DiffviewWinSeparator         = { fg = c.lighter },
    DiffviewFilePanelTitle       = { fg = c.palette1 },
    DiffviewFilePanelCounter     = { fg = c.palette3 },
    DiffviewFilePanelRootPath    = { fg = c.palette1 },
    DiffviewFilePanelFileName    = { fg = c.fg },
    DiffviewFilePanelSelected    = { fg = c.palette4 },
    DiffviewFilePanelPath        = { fg = c.light },
    DiffviewFilePanelInsertions  = { fg = c.success },
    DiffviewFilePanelDeletions   = { fg = c.danger },
    DiffviewFilePanelConflicts   = { fg = c.warning },
    DiffviewFolderName           = { fg = c.palette1 },
    DiffviewFolderSign           = { fg = c.mid },
    DiffviewHash                 = { fg = c.palette3 },
    DiffviewReference            = { fg = c.palette2 },
    DiffviewReflogSelector       = { fg = c.palette3 },
    DiffviewStatusAdded          = { fg = c.success },
    DiffviewStatusUntracked      = { fg = c.palette2 },
    DiffviewStatusModified       = { fg = c.warning },
    DiffviewStatusRenamed        = { fg = c.palette1 },
    DiffviewStatusCopied         = { fg = c.palette2 },
    DiffviewStatusTypeChange     = { fg = c.warning },
    DiffviewStatusUnmerged       = { fg = c.danger },
    DiffviewStatusUnknown        = { fg = c.danger },
    DiffviewStatusDeleted        = { fg = c.danger },
    DiffviewStatusBroken         = { fg = c.danger },
    DiffviewStatusIgnored        = { fg = c.light },

    -- ============================================================
    -- oil.nvim
    -- ============================================================
    OilDir                       = { fg = c.palette2 },
    OilDirIcon                   = { fg = c.mid },
    OilFile                      = { fg = c.fg },
    OilFileIcon                  = { fg = c.mid },
    OilSocket                    = { fg = c.palette3 },
    OilSocketIcon                = { fg = c.palette3 },
    OilPipe                      = { fg = c.palette4 },
    OilPipeIcon                  = { fg = c.palette4 },
    OilLink                      = { fg = c.palette2 },
    OilLinkIcon                  = { fg = c.palette2 },
    OilCreate                    = { fg = c.success },
    OilDelete                    = { fg = c.danger },
    OilChange                    = { fg = c.warning },
    OilMove                      = { fg = c.palette4 },
    OilCopy                      = { fg = c.palette1 },
    OilRestore                   = { fg = c.palette3 },
    OilPurge                     = { fg = c.danger },
    OilTrash                     = { fg = c.light },
    OilTrashSourcePath           = { fg = c.light },
    OilProgress                  = { fg = c.palette1 },
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
    SnacksIndentScope            = { fg = c.palette1 },
    SnacksPickerMatch            = { fg = c.palette3 },

    -- ============================================================
    -- render-markdown.nvim
    -- ============================================================
    RenderMarkdownBullet         = { fg = c.palette3 },
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
    MasonHeader                  = { fg = c.palette1 },
    MasonHeaderSecondary         = { fg = c.mid },
    MasonHighlight               = { fg = c.palette3 },
    MasonHighlightBlock          = { bg = c.overlay },
    MasonHighlightBlockBold      = { fg = c.fg, bg = c.overlay },
    MasonHighlightBlockSecondary = { fg = c.palette3, bg = c.overlay },
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
    LualineInsert                = { fg = c.bg, bg = c.palette1 },
    LualineVisual                = { fg = c.bg, bg = c.palette3 },
    LualineReplace               = { fg = c.bg, bg = c.palette5 },
    LualineCommand               = { fg = c.bg, bg = c.darkest },

    -- ============================================================
    -- harpoon.nvim
    -- ============================================================
    HarpoonBorder                = { fg = c.lighter },
    HarpoonWindow                = { bg = c.surface },
    HarpoonNormal                = { fg = c.fg, bg = c.surface },
    HarpoonTitle                 = { fg = c.palette1 },

    -- ============================================================
    -- undotree
    -- ============================================================
    UndotreeSavedBig             = { fg = c.palette3 },
    UndotreeNode                 = { fg = c.palette1 },
    UndotreeSavedSmall           = { fg = c.palette6 },
    UndotreeCurrent              = { fg = c.palette5 },
    UndotreeNodeCurrent          = { fg = c.palette5 },
    UndotreeSeq                  = { fg = c.palette1 },
    UndotreeNext                 = { fg = c.palette1 },

    -- ============================================================
    -- conform.nvim (only shows status, minimal groups)
    -- ============================================================
    -- No specific groups; uses statusline/notify
  }
end

return { get_hl = get_hl }
