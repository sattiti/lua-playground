local pl   = require 'pl.import_into'()
local json = require 'cjson'

local file = './a.json'
local f    = io.open(file, 'r')

for line in f:lines() do
  j = cjson.decode(line)
  pl.pretty.dump(j.normal[1].html)
end

f:close()

os.exit(0)
