-- print date time
local date = os.date('*t')
for k, v in pairs(date) do
  print(k .. ": " .. tostring(v))
end

-- system exec
os.execute('ls -laFh --color=auto')

-- rgb calc
local function rgb(r, g, b)
  local color = {r, g, b}

  for k, v in ipairs(color) do
    if v < 0 or v > 255 then
      return nil
    end
  end

  return r + g * 256 + b * 256 * 256
end

print(rgb(255, 255, 255))
