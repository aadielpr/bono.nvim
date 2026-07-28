local M = {}

--- Setup bono with optional config overrides.
--- Call this before :colorscheme bono, or let colorscheme handle defaults.
---
---@param opts? bono.Config
function M.setup(opts)
  require("bono.config").setup(opts)
end

--- Apply the colorscheme
function M.load()
  local palette_mod = require("bono.palette")
  local config = vim.tbl_deep_extend("force", require("bono.config").defaults, require("bono.config").get())
  local palette = palette_mod.get(config.variant)
  local groups = require("bono.groups")

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "bono"
  vim.o.termguicolors = true

  local hl_groups = groups.setup(palette, config)

  for group, spec in pairs(hl_groups) do
    -- Flatten style table into top-level keys (nvim_set_hl doesn't accept a "style" key)
    if spec.style then
      for k, v in pairs(spec.style) do
        spec[k] = v
      end
      spec.style = nil
    end
    if spec.blend then
      local blend_bg = spec.bg or "NONE"
      if blend_bg ~= "NONE" then
        -- Blend the highlight color into the buffer background for a subtle tint
        spec.bg = require("bono.util").blend(blend_bg, palette.bg, spec.blend / 100)
      end
      spec.blend = nil
    end
    vim.api.nvim_set_hl(0, group, spec)
  end
end

return M
