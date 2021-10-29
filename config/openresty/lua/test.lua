local pprint = require('pprint')

local string = "1,2,3,4,5"

points = {}
for p in string.gmatch(string, '[^,]+') do
  p = tonumber(p)
  if p ~= nil or p <= 0 then
    table.insert(points, p)
  end   
end

pprint(points)