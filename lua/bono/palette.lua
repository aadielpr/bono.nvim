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
    bg         = "#1e1c17",
    fg         = "#e0def4",

    lightest   = "#2a283e",
    lighter    = "#393552",
    light      = "#6e6a86",
    mid        = "#908caa",
    dark       = "#b8b5cf",
    darkest    = "#e0def4",

    accent     = "#d97757",  -- primary accent: functions, headings
    accent2    = "#c4956a",  -- secondary accent: keywords, statements

    palette1   = "#7b9ebd",  -- modules, tags, links, UI accents (47 uses)
    palette2   = "#6ba8a8",  -- keywords, types, completion (38 uses)
    palette3   = "#a68bbf",  -- constants, preprocessor, special (33 uses)
    palette4   = "#c4a855",  -- numbers, booleans (16 uses)
    palette5   = "#c67777",  -- errors, debug (15 uses)
    palette6   = "#7da47a",  -- strings (10 uses)
    palette7   = "#a8b56b",  -- markdown H3 (2 uses)
    palette8   = "#d4914a",  -- reserved (0 uses)

    surface    = "#2a273f",
    overlay    = "#393552",

    success    = "#3e8fb0",
    warning    = "#f6c177",
    danger     = "#eb6f92",
    info       = "#9ccfd8",
    hint       = "#c4a7e7",
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
