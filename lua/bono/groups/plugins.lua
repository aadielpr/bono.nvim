--- Plugin-specific highlight groups
--- Mapped from our palette — references rose-pine's coverage, uses bono colors
---@param c table Palette
---@param opts bono.Config
local function get_hl(c, opts)
  return {
    -- ============================================================
    -- blink.cmp
    -- ============================================================
    BlinkCmpDoc                  = { bg = c.groups.ui.surface },
    BlinkCmpDocSeparator         = { bg = c.groups.ui.surface },
    BlinkCmpDocBorder            = { fg = c.groups.ui.muted },
    BlinkCmpGhostText            = { fg = c.groups.ui.border },
    BlinkCmpLabel                = { fg = c.groups.ui.text_muted },
    BlinkCmpLabelDeprecated      = { fg = c.groups.ui.muted, strikethrough = true },
    BlinkCmpLabelMatch           = { fg = c.groups.ui.foreground },
    BlinkCmpDefault              = { fg = c.groups.ui.muted },
    BlinkCmpKindText             = { fg = c.groups.accents.primary },
    BlinkCmpKindMethod           = { fg = c.groups.accents.secondary },
    BlinkCmpKindFunction         = { fg = c.groups.accents.secondary },
    BlinkCmpKindConstructor      = { fg = c.groups.accents.secondary },
    BlinkCmpKindField            = { fg = c.groups.accents.primary },
    BlinkCmpKindVariable         = { fg = c.groups.accents.rose },
    BlinkCmpKindClass            = { fg = c.groups.accents.quaternary },
    BlinkCmpKindInterface        = { fg = c.groups.accents.quaternary },
    BlinkCmpKindModule           = { fg = c.groups.accents.secondary },
    BlinkCmpKindProperty         = { fg = c.groups.accents.secondary },
    BlinkCmpKindUnit             = { fg = c.groups.accents.primary },
    BlinkCmpKindValue            = { fg = c.groups.accents.rose },
    BlinkCmpKindKeyword          = { fg = c.groups.accents.tertiary },
    BlinkCmpKindSnippet          = { fg = c.groups.accents.tertiary },
    BlinkCmpKindColor            = { fg = c.groups.accents.rose },
    BlinkCmpKindFile             = { fg = c.groups.accents.secondary },
    BlinkCmpKindReference        = { fg = c.groups.accents.rose },
    BlinkCmpKindFolder           = { fg = c.groups.accents.secondary },
    BlinkCmpKindEnum             = { fg = c.groups.accents.secondary },
    BlinkCmpKindEnumMember       = { fg = c.groups.accents.secondary },
    BlinkCmpKindConstant         = { fg = c.groups.accents.quaternary },
    BlinkCmpKindStruct           = { fg = c.groups.accents.secondary },
    BlinkCmpKindEvent            = { fg = c.groups.accents.secondary },
    BlinkCmpKindOperator         = { fg = c.groups.accents.secondary },
    BlinkCmpKindTypeParameter    = { fg = c.groups.accents.tertiary },
    BlinkCmpKindCodeium          = { fg = c.groups.accents.secondary },
    BlinkCmpKindCopilot          = { fg = c.groups.accents.secondary },
    BlinkCmpKindSupermaven       = { fg = c.groups.accents.secondary },
    BlinkCmpKindTabNine          = { fg = c.groups.accents.secondary },

    -- ============================================================
    -- gitsigns.nvim
    -- ============================================================
    GitSignsAdd                  = { fg = c.groups.git.add },
    GitSignsChange               = { fg = c.groups.git.change },
    GitSignsDelete               = { fg = c.groups.git.delete },
    SignAdd                      = { fg = c.groups.git.add },
    SignChange                   = { fg = c.groups.git.change },
    SignDelete                   = { fg = c.groups.git.delete },

    -- ============================================================
    -- telescope.nvim
    -- ============================================================
    TelescopeBorder              = { fg = c.groups.ui.border },
    TelescopeMatching            = { fg = c.groups.accents.secondary },
    TelescopeNormal              = { bg = c.groups.ui.background },
    TelescopePromptNormal        = { fg = c.groups.ui.foreground, bg = c.groups.ui.background },
    TelescopePromptPrefix        = { fg = c.groups.ui.muted },
    TelescopeSelection           = { fg = c.groups.ui.foreground, bg = c.groups.ui.overlay },
    TelescopeSelectionCaret      = { fg = c.groups.diagnostics.error, bg = c.groups.ui.overlay },
    TelescopeTitle               = { fg = c.groups.accents.secondary },
    TelescopeResultsNormal       = { bg = c.groups.ui.background },
    TelescopePreviewNormal       = { bg = c.groups.ui.background },
    TelescopePromptBorder        = { fg = c.groups.ui.border },
    TelescopeResultsBorder       = { fg = c.groups.ui.border },
    TelescopePreviewBorder       = { fg = c.groups.ui.border },

    -- ============================================================
    -- neo-tree.nvim
    -- ============================================================
    NeoTreeGitAdded              = { fg = c.groups.git.add },
    NeoTreeGitConflict           = { fg = c.groups.diagnostics.warning },
    NeoTreeGitDeleted            = { fg = c.groups.git.delete },
    NeoTreeGitIgnored            = { fg = c.groups.ui.muted },
    NeoTreeGitModified           = { fg = c.groups.git.change },
    NeoTreeGitRenamed            = { fg = c.groups.accents.primary },
    NeoTreeGitUntracked          = { fg = c.groups.ui.subtle },
    NeoTreeTabActive             = { fg = c.groups.ui.foreground, bg = c.groups.ui.overlay },
    NeoTreeTabInactive           = { fg = c.groups.ui.muted },
    NeoTreeTabSeparatorActive    = { fg = c.groups.ui.border },
    NeoTreeTabSeparatorInactive  = { fg = c.groups.ui.border },
    NeoTreeTitleBar              = { fg = c.groups.ui.surface, bg = c.groups.accents.primary },
    NeoTreeNormal                = { bg = opts.transparent and "NONE" or c.groups.ui.background },
    NeoTreeNormalNC              = { bg = opts.transparent and "NONE" or c.groups.ui.background },
    NeoTreeDirectoryName         = { fg = c.groups.accents.secondary },
    NeoTreeDirectoryIcon         = { fg = c.groups.ui.subtle },
    NeoTreeFileName              = { fg = c.groups.ui.foreground },
    NeoTreeFileIcon              = { fg = c.groups.ui.subtle },
    NeoTreeIndentMarker          = { fg = c.groups.ui.border },
    NeoTreeFloatBorder           = { fg = c.groups.ui.border },
    NeoTreeFloatTitle            = { fg = c.groups.ui.strong },
    NeoTreeFloatNormal           = { bg = c.groups.ui.surface },
    NeoTreeCursorLine            = { bg = c.groups.ui.overlay },
    NeoTreeDimText               = { fg = c.groups.ui.muted },
    NeoTreeDotfile               = { fg = c.groups.ui.muted },
    NeoTreeFileNameOpened        = { fg = c.groups.accents.secondary, bold = true },
    NeoTreeFilterTerm            = { fg = c.groups.diagnostics.error },
    NeoTreeModified              = { fg = c.groups.diagnostics.warning },
    NeoTreeRootName              = { fg = c.groups.ui.strong },
    NeoTreeSymbolicLinkTarget    = { fg = c.groups.accents.secondary },

    -- ============================================================
    -- nvim-treesitter-context
    -- ============================================================
    TreesitterContext            = { bg = c.groups.ui.overlay },
    TreesitterContextLineNumber  = { fg = c.groups.accents.tertiary, bg = c.groups.ui.overlay },
    TreesitterContextBottom      = { underline = true, sp = c.groups.ui.border },

    -- ============================================================
    -- indent-blankline.nvim
    -- ============================================================
    IblIndent                    = { fg = c.groups.ui.faint },
    IblScope                     = { fg = c.groups.accents.secondary },
    IblWhitespace                = { fg = c.groups.ui.faint },

    -- ============================================================
    -- rainbow-delimiters.nvim
    -- ============================================================
    RainbowDelimiterBlue         = { fg = c.groups.accents.primary },
    RainbowDelimiterCyan         = { fg = c.groups.accents.secondary },
    RainbowDelimiterGreen        = { fg = c.groups.accents.green },
    RainbowDelimiterOrange       = { fg = c.groups.accents.quaternary },
    RainbowDelimiterRed          = { fg = c.groups.accents.rose },
    RainbowDelimiterViolet       = { fg = c.groups.accents.tertiary },
    RainbowDelimiterYellow       = { fg = c.groups.accents.quaternary },

    -- ============================================================
    -- flash.nvim
    -- ============================================================
    FlashLabel                   = { fg = c.groups.ui.background, bg = c.groups.diagnostics.error },
    FlashBackdrop                = { fg = c.groups.ui.muted },
    FlashMatch                   = { fg = c.groups.ui.foreground, bg = c.groups.ui.overlay },
    FlashCurrent                 = { fg = c.groups.ui.background, bg = c.groups.accents.primary },

    -- ============================================================
    -- which-key.nvim
    -- ============================================================
    WhichKey                     = { fg = c.groups.accents.tertiary },
    WhichKeyBorder               = { fg = c.groups.ui.border },
    WhichKeyDesc                 = { fg = c.groups.accents.quaternary },
    WhichKeyFloat                = { bg = c.groups.ui.surface },
    WhichKeyGroup                = { fg = c.groups.accents.primary },
    WhichKeyIcon                 = { fg = c.groups.accents.primary },
    WhichKeyNormal               = { bg = c.groups.ui.surface },
    WhichKeySeparator            = { fg = c.groups.ui.muted },
    WhichKeyTitle                = { fg = c.groups.accents.primary },
    WhichKeyValue                = { fg = c.groups.accents.tertiary },

    -- ============================================================
    -- trouble.nvim
    -- ============================================================
    TroubleText                  = { fg = c.groups.ui.text_muted },
    TroubleCount                 = { fg = c.groups.accents.tertiary, bg = c.groups.ui.surface },
    TroubleNormal                = { fg = c.groups.ui.foreground, bg = c.groups.ui.surface },
    TroubleFoldIcon              = { fg = c.groups.ui.muted },
    TroubleIndent                = { fg = c.groups.ui.border },
    TroubleLocation              = { fg = c.groups.ui.text_muted },
    TroublePreview               = { fg = c.groups.ui.foreground, bg = c.groups.ui.surface },
    TroubleSource                = { fg = c.groups.ui.muted },
    TroubleSignError             = { fg = c.groups.diagnostics.error },
    TroubleSignHint              = { fg = c.groups.diagnostics.hint },
    TroubleSignInfo              = { fg = c.groups.diagnostics.info },
    TroubleSignOther             = { fg = c.groups.ui.subtle },
    TroubleSignWarning           = { fg = c.groups.diagnostics.warning },

    -- ============================================================
    -- diffview.nvim
    -- ============================================================
    DiffviewPrimary              = { fg = c.groups.accents.primary },
    DiffviewSecondary            = { fg = c.groups.accents.secondary },
    DiffviewNormal               = { fg = c.groups.ui.foreground, bg = c.groups.ui.surface },
    DiffviewWinSeparator         = { fg = c.groups.ui.border },
    DiffviewFilePanelTitle       = { fg = c.groups.accents.primary },
    DiffviewFilePanelCounter     = { fg = c.groups.accents.tertiary },
    DiffviewFilePanelRootPath    = { fg = c.groups.accents.primary },
    DiffviewFilePanelFileName    = { fg = c.groups.ui.foreground },
    DiffviewFilePanelSelected    = { fg = c.groups.accents.quaternary },
    DiffviewFilePanelPath        = { fg = c.groups.ui.muted },
    DiffviewFilePanelInsertions  = { fg = c.groups.git.add },
    DiffviewFilePanelDeletions   = { fg = c.groups.git.delete },
    DiffviewFilePanelConflicts   = { fg = c.groups.git.change },
    DiffviewFolderName           = { fg = c.groups.accents.primary },
    DiffviewFolderSign           = { fg = c.groups.ui.subtle },
    DiffviewHash                 = { fg = c.groups.accents.tertiary },
    DiffviewReference            = { fg = c.groups.accents.secondary },
    DiffviewReflogSelector       = { fg = c.groups.accents.tertiary },
    DiffviewStatusAdded          = { fg = c.groups.git.add },
    DiffviewStatusUntracked      = { fg = c.groups.accents.secondary },
    DiffviewStatusModified       = { fg = c.groups.diagnostics.warning },
    DiffviewStatusRenamed        = { fg = c.groups.accents.primary },
    DiffviewStatusCopied         = { fg = c.groups.accents.secondary },
    DiffviewStatusTypeChange     = { fg = c.groups.diagnostics.warning },
    DiffviewStatusUnmerged       = { fg = c.groups.diagnostics.error },
    DiffviewStatusUnknown        = { fg = c.groups.diagnostics.error },
    DiffviewStatusDeleted        = { fg = c.groups.diagnostics.error },
    DiffviewStatusBroken         = { fg = c.groups.diagnostics.error },
    DiffviewStatusIgnored        = { fg = c.groups.ui.muted },

    -- ============================================================
    -- oil.nvim
    -- ============================================================
    OilDir                       = { fg = c.groups.accents.secondary },
    OilDirIcon                   = { fg = c.groups.ui.subtle },
    OilFile                      = { fg = c.groups.ui.foreground },
    OilFileIcon                  = { fg = c.groups.ui.subtle },
    OilSocket                    = { fg = c.groups.accents.tertiary },
    OilSocketIcon                = { fg = c.groups.accents.tertiary },
    OilPipe                      = { fg = c.groups.accents.quaternary },
    OilPipeIcon                  = { fg = c.groups.accents.quaternary },
    OilLink                      = { fg = c.groups.accents.secondary },
    OilLinkIcon                  = { fg = c.groups.accents.secondary },
    OilCreate                    = { fg = c.groups.git.add },
    OilDelete                    = { fg = c.groups.git.delete },
    OilChange                    = { fg = c.groups.git.change },
    OilMove                      = { fg = c.groups.accents.quaternary },
    OilCopy                      = { fg = c.groups.accents.primary },
    OilRestore                   = { fg = c.groups.accents.tertiary },
    OilPurge                     = { fg = c.groups.diagnostics.error },
    OilTrash                     = { fg = c.groups.ui.muted },
    OilTrashSourcePath           = { fg = c.groups.ui.muted },
    OilProgress                  = { fg = c.groups.accents.primary },
    OilProgressDone              = { fg = c.groups.diagnostics.success },
    OilProgressError             = { fg = c.groups.diagnostics.error },
    OilNormal                    = { bg = c.groups.ui.background },
    OilTitle                     = { fg = c.groups.ui.strong, bg = c.groups.ui.background },
    OilSignColumn                = { bg = c.groups.ui.background },
    OilPreviewTitle              = { fg = c.groups.ui.strong },
    OilPreviewTitleBackground    = { bg = c.groups.ui.background },
    OilPreviewBorder             = { fg = c.groups.ui.border },
    OilPreviewNormal             = { bg = c.groups.ui.background },
    OilFloatBorder               = { fg = c.groups.ui.border },
    OilFloatTitle                = { fg = c.groups.ui.strong },
    OilCursorLine                = { bg = c.groups.ui.overlay },
    OilWinSeparator              = { fg = c.groups.ui.border },

    -- ============================================================
    -- snacks.nvim
    -- ============================================================
    SnacksIndent                 = { fg = c.groups.ui.faint },
    SnacksIndentChunk            = { fg = c.groups.ui.faint },
    SnacksIndentBlank            = { fg = c.groups.ui.faint },
    SnacksIndentScope            = { fg = c.groups.accents.primary },
    SnacksPickerMatch            = { fg = c.groups.accents.tertiary },

    -- ============================================================
    -- render-markdown.nvim
    -- ============================================================
    RenderMarkdownBullet         = { fg = c.groups.accents.tertiary },
    RenderMarkdownChecked        = { fg = c.groups.diagnostics.success },
    RenderMarkdownCode           = { bg = c.groups.ui.overlay },
    RenderMarkdownCodeInline     = { fg = c.groups.ui.text_muted, bg = c.groups.ui.overlay },
    RenderMarkdownDash           = { fg = c.groups.ui.muted },
    RenderMarkdownQuote          = { fg = c.groups.ui.text_muted },
    RenderMarkdownTableFill      = { fg = c.groups.ui.muted },
    RenderMarkdownTableHead      = { fg = c.groups.ui.strong },
    RenderMarkdownTableRow       = { fg = c.groups.ui.text_muted },
    RenderMarkdownUnchecked      = { fg = c.groups.ui.muted },

    -- ============================================================
    -- mason.nvim
    -- ============================================================
    MasonHeader                  = { fg = c.groups.accents.primary },
    MasonHeaderSecondary         = { fg = c.groups.ui.subtle },
    MasonHighlight               = { fg = c.groups.accents.tertiary },
    MasonHighlightBlock          = { bg = c.groups.ui.overlay },
    MasonHighlightBlockBold      = { fg = c.groups.ui.foreground, bg = c.groups.ui.overlay },
    MasonHighlightBlockSecondary = { fg = c.groups.accents.tertiary, bg = c.groups.ui.overlay },
    MasonHighlightSecondary      = { fg = c.groups.ui.subtle },
    MasonMuted                   = { fg = c.groups.ui.muted },
    MasonMutedBlock              = { fg = c.groups.ui.muted, bg = c.groups.ui.overlay },
    MasonMutedBlockBold          = { fg = c.groups.ui.muted, bg = c.groups.ui.overlay },
    MasonHeading                 = { fg = c.groups.ui.strong },
    MasonHeadingSecondary        = { fg = c.groups.ui.text_muted },
    MasonNormal                  = { fg = c.groups.ui.foreground, bg = c.groups.ui.background },
    MasonError                   = { fg = c.groups.diagnostics.error },
    MasonWarning                 = { fg = c.groups.diagnostics.warning },
    MasonInfo                    = { fg = c.groups.diagnostics.info },

    -- ============================================================
    -- lualine.nvim
    -- ============================================================
    LualineNormal                = { fg = c.groups.ui.text_muted, bg = c.groups.ui.surface },
    LualineInsert                = { fg = c.groups.ui.background, bg = c.groups.accents.primary },
    LualineVisual                = { fg = c.groups.ui.background, bg = c.groups.accents.tertiary },
    LualineReplace               = { fg = c.groups.ui.background, bg = c.groups.accents.rose },
    LualineCommand               = { fg = c.groups.ui.background, bg = c.groups.ui.strong },

    -- ============================================================
    -- harpoon.nvim
    -- ============================================================
    HarpoonBorder                = { fg = c.groups.ui.border },
    HarpoonWindow                = { bg = c.groups.ui.surface },
    HarpoonNormal                = { fg = c.groups.ui.foreground, bg = c.groups.ui.surface },
    HarpoonTitle                 = { fg = c.groups.accents.primary },

    -- ============================================================
    -- undotree
    -- ============================================================
    UndotreeSavedBig             = { fg = c.groups.accents.tertiary },
    UndotreeNode                 = { fg = c.groups.accents.primary },
    UndotreeSavedSmall           = { fg = c.groups.accents.green },
    UndotreeCurrent              = { fg = c.groups.accents.rose },
    UndotreeNodeCurrent          = { fg = c.groups.accents.rose },
    UndotreeSeq                  = { fg = c.groups.accents.primary },
    UndotreeNext                 = { fg = c.groups.accents.primary },

    -- ============================================================
    -- conform.nvim (only shows status, minimal groups)
    -- ============================================================
    -- No specific groups; uses statusline/notify
  }
end

return { get_hl = get_hl }
