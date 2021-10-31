Chart = {
  size   = "s",
  height = 0,
  width  = 0,
  series = {}
}

function Chart:new(size, series, height, width)
  series = series or {}
  size   = size or "xs"

  local sizes = {
    ["xs"] = {["h"] = 0, ["w"] = 0},
    ["s"]  = {["h"] = 0, ["w"] = 0},
    ["m"]  = {["h"] = 0, ["w"] = 0},
    ["l"]  = {["h"] = 0, ["w"] = 0},
    ["xl"] = {["h"] = 0, ["w"] = 0}
  }

  if height ~= nil and width ~= nil then
    height = height
    width  = width
  else

  end

  print(sizes["m"]["h"])
end

Chart:new("s")

-- local pprint = require('pprint')

-- digits = {}
-- for p in string.gmatch("this is 1 string with 2, no, 3 digits!", '%d+') do
--   table.insert(digits, p)
-- end

-- pprint(digits)