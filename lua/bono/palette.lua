-- stylua: ignore
---
--- bono named color swatches for each variant
---

local palette = {}

palette.variants = {
  cream = {
    warm_cream = "#fdf6da",
    ink = "#141210",
    linen = "#c8bfb0",
    taupe = "#a89888",
    stone = "#948e84",
    gray = "#7d7872",
    slate = "#6a716e",
    dark_brown = "#5a4a42",
    rust = "#AD4737",
    brown = "#876032",
    blue = "#527594",
    deep_teal = "#2d6c6c",
    purple = "#7c619a",
    olive = "#6e5c20",
    rose = "#b05555",
    green = "#3d6e3d",
    moss = "#63742f",
    ochre = "#9a5f22",
    cream_surface = "#f5edd2",
    cream_overlay = "#ede5c9",
    ochre_brown = "#8b6a3a",
    vermilion = "#a0423a",
    deep_blue = "#2d5080",
    forest_teal = "#356858",
  },

  espresso = {
    espresso = "#13110e",
    warm_cream = "#e7dcc4",
    dark_surface = "#26211c",
    dark_brown = "#3d352b",
    warm_gray = "#6b6259",
    taupe = "#cbb79e",
    peach = "#e0b182",
    brown = "#a67c52",
    copper = "#d19a66",
    teal = "#6caaa4",
    rose = "#d28f8f",
    sage = "#98a880",
    clay = "#8b6a5c",
    lavender = "#b5a6d6",
    dark_panel = "#1e1b16",
    muted_green = "#7fa26e",
    pale_blue = "#8fb4d6",
  },
}

--- Select named swatches for a variant.
---@param variant string|nil
---@return table palette, string variant
function palette.get(variant)
  if not variant or not palette.variants[variant] then
    variant = vim.opt.background:get() == "dark" and "espresso" or "cream"
  end
  return palette.variants[variant], variant
end

return palette
