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

    green      = "#3d6e3d",
    blue       = "#527594",
    red        = '#b05555',
    yellow     = '#6e5c20',
    purple     = '#7c619a',
    cyan       = '#2d6c6c',
    orange     = '#9a5f22',
    olive      = '#63742f',

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

    blue       = '#7b9ebd',
    green      = '#7da47a',
    red        = '#c67777',
    yellow     = '#c4a855',
    purple     = '#a68bbf',
    cyan       = '#6ba8a8',
    orange     = '#d4914a',
    olive      = '#a8b56b',

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
