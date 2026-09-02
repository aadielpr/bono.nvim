-- stylua: ignore
---
--- bono palette — warm muted colorscheme variants
---

local palette = {}

palette.variants = {
  cream = {
    bg         = "#fdf6da",
    fg         = "#141210",

    lightest   = "#c8bfb0",
    lighter    = "#a89888",
    light      = "#948e84",
    mid        = "#7d7872",
    dark       = "#6a716e",
    darkest    = "#5a4a42",

    accent     = "#9a4929",  -- primary accent: functions, headings
    accent2    = "#876032",  -- secondary accent: keywords, statements

    palette1   = "#527594",  -- modules, tags, links, UI accents (47 uses)
    palette2   = "#2d6c6c",  -- keywords, types, completion (38 uses)
    palette3   = "#7c619a",  -- constants, preprocessor, special (33 uses)
    palette4   = "#6e5c20",  -- numbers, booleans (16 uses)
    palette5   = "#b05555",  -- errors, debug (15 uses)
    palette6   = "#3d6e3d",  -- strings (10 uses)
    palette7   = "#63742f",  -- markdown H3 (2 uses)
    palette8   = "#9a5f22",  -- reserved (0 uses)

    surface    = "#f5edd2",
    overlay    = "#ede5c9",

    success    = "#3d6e3d",
    warning    = "#8b6a3a",
    danger     = "#a0423a",
    info       = "#2d5080",
    hint       = "#356858",
  },

  espresso = {
    bg         = "#13110e",
    fg         = "#e7dcc4",

    lightest   = "#26211c",
    lighter    = "#3d352b",
    light      = "#6b6259",
    mid        = "#cbb79e",
    dark       = "#cbb79e",
    darkest    = "#e7dcc4",

    accent     = "#e0b182",  -- Apricot: functions, headings
    accent2    = "#a67c52",  -- Coffee: keywords, statements

    palette1   = "#a67c52",  -- Sky: modules, tags, links, UI accents (47 uses)
    palette2   = "#d19a66",  -- Caramel: keywords, types, completion (38 uses)
    palette3   = "#6caaa4",  -- Teal: constants, preprocessor, special (33 uses)
    palette4   = "#d19a66",  -- Caramel: numbers, booleans (16 uses)
    palette5   = "#d28f8f",  -- Rose: errors, operators, debug (15 uses)
    palette6   = "#98a880",  -- Sage: strings (10 uses)
    palette7   = "#8b6a5c",  -- Cocoa: markdown H3 (2 uses)
    palette8   = "#b5a6d6",  -- Lavender: reserved (0 uses)

    surface    = "#1e1b16",
    overlay    = "#26211c",

    success    = "#7fa26e",  -- Matcha
    warning    = "#d19a66",  -- Caramel
    danger     = "#d28f8f",  -- Rose
    info       = "#6caaa4",  -- Teal
    hint       = "#8fb4d6",  -- Sky
  },
}

--- Resolve the palette for a given variant.
--- Falls back to vim.o.background detection: "light" → cream, "dark" → espresso.
---@param variant string|nil
---@return table
function palette.get(variant)
  if variant and palette.variants[variant] then
    return palette.variants[variant]
  end
  if vim.opt.background:get() == "dark" then
    return palette.variants.espresso
  end
  return palette.variants.cream
end

return palette
