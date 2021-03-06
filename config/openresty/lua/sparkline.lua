local args, err = ngx.req.get_uri_args()
local width = 155
local height = 30

if next(args) == nil then
  ngx.exit(ngx.HTTP_BAD_REQUEST)
end

points = {}
for p in string.gmatch(args['points'], '%d+') do
  table.insert(points, p)
end

points_count = table.getn(points)
if not (points_count >= 2 and points_count <= 100) then
  ngx.req.set_header('Content-Type', 'application/json')
  ngx.say('{"code": 400, "message": "You may only specify between 2 and 100 data points."}')
  ngx.exit(ngx.HTTP_BAD_REQUEST)
end

local max_x = points_count
local max_y = math.max(unpack(points))

local coordinates = {}
for index, value in pairs(points) do
  local x = width /  max_x * index
  local y = height - (height / max_y * value)

  table.insert(coordinates, string.format('%d,%d', x, y))
end

local sparkline = [[
  <svg width="]] .. width .. [[" height="]] .. height .. [[" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns="http://www.w3.org/2000/svg" version="1.1">
  <defs>
    <linearGradient id="gradient" x1="0" x2="0" y1="1" y2="0">
      <stop offset="0%" stop-color="#0e4429"></stop>
      <stop offset="10%" stop-color="#006d32"></stop>
      <stop offset="25%" stop-color="#26a641"></stop>
      <stop offset="50%" stop-color="#39d353"></stop>
    </linearGradient>
    <mask id="sparkline" width="]] .. width .. [[" height="]] .. height .. [[">
      <polyline points="]] .. table.concat(coordinates, ' ') .. [[" fill="transparent" stroke="#8cc665" stroke-width="2"></polyline>
    </mask>
  </defs>

  <g transform="translate(0, 0)">
    <rect width="]] .. width .. [[" height="]] .. height .. [[" style="stroke: none; fill: url(#gradient); mask: url(#sparkline)"></rect>
  </g>
</svg>
]]

ngx.print(sparkline)
ngx.exit(ngx.HTTP_OK)