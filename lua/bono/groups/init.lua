--- Collects all highlight groups
---@param c table Palette
---@param opts bono.Config
---@return table highlights
local function setup(c, opts)
  local groups = {
    require("bono.groups.base").get_hl(c, opts),
    require("bono.groups.syntax").get_hl(c, opts),
    require("bono.groups.treesitter").get_hl(c, opts),
    require("bono.groups.lsp").get_hl(c, opts),
    require("bono.groups.plugins").get_hl(c, opts),
  }

  -- Merge all group tables into one
  local hl = {}
  for _, g in ipairs(groups) do
    for name, spec in pairs(g) do
      hl[name] = spec
    end
  end

  return hl
end

return { setup = setup }
