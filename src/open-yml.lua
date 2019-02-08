local yml = require 'lyaml'
local f   = io.open('./data.yml', 'r')

local data = yml.load(f:read("*all"))

for i, c in pairs(data.cpn) do
  print(c.id)
end

f:close()

os.exit(0)
