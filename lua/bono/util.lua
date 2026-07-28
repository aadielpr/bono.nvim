local M = {}

--- Blend two hex colors based on an alpha factor.
--- @param fg string  Foreground hex color
--- @param bg string  Background hex color (or "NONE")
--- @param alpha number Blend factor (0 to 1, where 0 = pure bg, 1 = pure fg)
--- @return string # A hex color string like "#RRGGBB"
function M.blend(fg, bg, alpha)
  if fg == "NONE" or not fg or bg == "NONE" or not bg then
    return bg and bg ~= "NONE" and bg or "NONE"
  end
  fg = fg:gsub("#", "")
  bg = bg:gsub("#", "")

  local fr, fg_r, fb = tonumber(fg:sub(1, 2), 16), tonumber(fg:sub(3, 4), 16), tonumber(fg:sub(5, 6), 16)
  local br, bg_r, bb = tonumber(bg:sub(1, 2), 16), tonumber(bg:sub(3, 4), 16), tonumber(bg:sub(5, 6), 16)

  local r = math.floor(fr * alpha + br * (1 - alpha) + 0.5)
  local g = math.floor(fg_r * alpha + bg_r * (1 - alpha) + 0.5)
  local b = math.floor(fb * alpha + bb * (1 - alpha) + 0.5)

  return string.format("#%02x%02x%02x", r, g, b)
end

return M
