--- Variant-specific highlight roles mapped to named palette swatches.
local M = {}

---@param palette table Selected variant's named color swatches
---@param variant string Selected variant name
---@return table
function M.get(palette, variant)
  if variant == "cream" then
    return {
      ui = {
        background = palette.warm_cream,
        foreground = palette.ink,
        surface = palette.cream_surface,
        overlay = palette.cream_overlay,
        border = palette.taupe,
        selection = palette.blue,
        faint = palette.linen,
        muted = palette.stone,
        subtle = palette.gray,
        text_muted = palette.slate,
        strong = palette.dark_brown,
      },
      accents = {
        primary = palette.blue,
        secondary = palette.deep_teal,
        tertiary = palette.purple,
        quaternary = palette.olive,
        rose = palette.rose,
        green = palette.green,
        earth = palette.moss,
      },
      syntax = {
        comment = palette.stone,
        functions = palette.rust,
        keyword = palette.brown,
        string = palette.green,
        constant = palette.purple,
        number = palette.olive,
        boolean = palette.olive,
        type = palette.deep_teal,
        control = palette.deep_teal,
        attribute = palette.deep_teal,
        constructor = palette.deep_teal,
        builtin_variable = palette.deep_teal,
        operator = palette.dark_brown,
        preproc = palette.purple,
        special = palette.purple,
      },
      diagnostics = {
        error = palette.vermilion,
        warning = palette.ochre_brown,
        info = palette.deep_blue,
        hint = palette.forest_teal,
        success = palette.green,
      },
      git = {
        add = palette.green,
        change = palette.ochre_brown,
        delete = palette.vermilion,
      },
    }
  end

  return {
    ui = {
      background = palette.espresso,
      foreground = palette.warm_cream,
      surface = palette.dark_panel,
      overlay = palette.dark_surface,
      border = palette.dark_brown,
      selection = palette.brown,
      faint = palette.dark_surface,
      muted = palette.warm_gray,
      subtle = palette.taupe,
      text_muted = palette.taupe,
      strong = palette.warm_cream,
    },
    accents = {
      primary = palette.brown,
      secondary = palette.copper,
      tertiary = palette.teal,
      quaternary = palette.copper,
      rose = palette.rose,
      green = palette.sage,
      earth = palette.clay,
    },
    syntax = {
      comment = palette.warm_gray,
      functions = palette.peach,
      keyword = palette.brown,
      string = palette.sage,
      constant = palette.teal,
      number = palette.copper,
      boolean = palette.copper,
      type = palette.copper,
      control = palette.copper,
      attribute = palette.copper,
      constructor = palette.copper,
      builtin_variable = palette.copper,
      operator = palette.warm_cream,
      preproc = palette.teal,
      special = palette.teal,
    },
    diagnostics = {
      error = palette.rose,
      warning = palette.copper,
      info = palette.teal,
      hint = palette.pale_blue,
      success = palette.muted_green,
    },
    git = {
      add = palette.muted_green,
      change = palette.copper,
      delete = palette.rose,
    },
  }
end

return M
