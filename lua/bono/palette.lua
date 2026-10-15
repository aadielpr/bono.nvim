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

    accent     = "#B94D3B",
    accent2    = "#876032",

    palette1   = "#527594",
    palette2   = "#2d6c6c",
    palette3   = "#7c619a",
    palette4   = "#6e5c20",
    palette5   = "#b05555",
    palette6   = "#3d6e3d",
    palette7   = "#63742f",
    palette8   = "#9a5f22",

    surface    = "#f5edd2",
    overlay    = "#ede5c9",

    success    = "#3d6e3d",
    warning    = "#8b6a3a",
    danger     = "#a0423a",
    info       = "#2d5080",
    hint       = "#356858",
  },

  espresso = {
    bg         = "#10233d",
    fg         = "#f2d9a2",

    lightest   = "#193651",
    lighter    = "#244664",
    light      = "#667786",
    mid        = "#82977d",
    dark       = "#909587",
    darkest    = "#f2d9a2",

    accent     = "#e97931",
    accent2    = "#e8a33b",

    palette1   = "#57a79c",
    palette2   = "#e8a33b",
    palette3   = "#c95842",
    palette4   = "#e97931",
    palette5   = "#d83b24",
    palette6   = "#82977d",
    palette7   = "#9c6941",
    palette8   = "#667786",

    surface    = "#193651",
    overlay    = "#28615d",

    success    = "#82977d",
    warning    = "#e8a33b",
    danger     = "#d83b24",
    info       = "#57a79c",
    hint       = "#16817d",
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
