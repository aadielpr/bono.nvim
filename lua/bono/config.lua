local M = {}

---@class bono.Config
M.defaults = {
  variant = nil,          -- nil = auto-detect from vim.o.background, or set to "cream" / "espresso"
  transparent = false,
  styles = {
    bold = {
      comments = false,
      keywords = true,
      functions = true,
      strings = false,
      imports = false,
      variables = false,
      booleans = true,
    },
    italic = {
      comments = false,
      keywords = false,
      functions = false,
      strings = false,
      imports = false,
      variables = false,
      booleans = false,
    },
  },
  dim_inactive = false,
}

local user_config = {}

function M.setup(opts)
  user_config = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

function M.get()
  return user_config
end

--- Build a style table for a given group name.
--- Merges bold and italic booleans into { bold = true/false, italic = true/false }
--- Returns an empty table if no style is enabled, so the caller can omit the style key.
---@param styles table The resolved styles table from config
---@param name string  One of: comments, keywords, functions, strings, imports, variables
---@return table|nil  Style table or nil if nothing enabled
function M.style(styles, name)
  local s = {}
  if styles.bold[name] then
    s.bold = true
  end
  if styles.italic[name] then
    s.italic = true
  end
  if next(s) == nil then
    return nil
  end
  return s
end

return M
