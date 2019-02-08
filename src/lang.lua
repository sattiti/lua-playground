--[[ Variable {{{
comment comment
]]
-- global var
str1 = 'hello'
str2 = 'world'
str3 = "again"
str4 = [[
welcome home
]]
num1 = 20
num2 = -1

-- local var
local localNum1 = 1.0
--}}}
-- Data type {{{
-- nil
print(nil)

-- boolean
print(true)
print(false)

-- number
print(num1)
print(num2)
print(num1 + num2)
print(0xff)
print(007)
print(type(localNum1))

--[[
string type
--]]
print('singlequote: hello world')
print("doubleQuote: hello world")
print(str1)

-- concat string
print(str1 .. str2)

print(type(str2))

-- lenght
print(#str1)

-- function
--[[
Usually, use 'local' to define a function.
name = function(arg)
  local var
  BODY
  return arg1, arg2, arg3
end

local function(...)
  local var
  BODY
  return arg1, arg2, arg3
end
]]
local function say(msg)
  print(msg)
end
say("func: " .. str1)

-- noname function
print(
  (function()
    return "fun"
  end)()
)

-- userdata
-- thread (co-routine)
-- table
t1 = {
  a = 2,
  b = {
    b1 = 1,
    b2 = 2
  },
  c = {1, 2, 3, 4, 5, 6, 7, 8, 9}
}

for k, v in pairs(t1) do
  print(k)
  print(v)
end

local t = {
  a = 1,
  b = 2,
  
  add = function(this)
    return this.a + this.b
  end,
  
  minus = function(this, n)
    return this.a - n
  end
 }

t.add(t)
t.minus(t, 1)

-- use a colon(:) to pass 'self' automatically.
t:add()
t:minus(1)
--- }}}
-- Statement {{{
--[[
lua | c
not | !
or  | ||
and | &&
==  | ==
~=  | !=
<   | <
>   | >
<=  | <=
>=  | >=
]]
-- if EXP then BLOCK elseif EXP then BLOCK else BLOCK end
if num1 == 2 then
  print(false)
elseif num1 == 2 then
  print(false)
else
  print(true)
end

-- while EXP do BLOCK end
i = 0
while i < num1 do
  print(i)
  i = i + 1
end

-- repeat BLOCK until EXP
i = 0
repeat
  print(i)
  i = i + 1
until i >= num1

-- for VAL in EXP do BLOCK END
i = 0
for i = 0, num1, 2 do
  print(i)
end
-- }}}
-- Open file {{{
local file = "./a.json"
local f    = io.open(file, 'r')
for line in f:lines() do
  print(line)
end
f:close()

local h = io.popen("ls -la ~")
--[[
n        reads a numeral and returns it as a float or an integer.
a        reads the whole file, starting at the current position.
l        reads the next line skipping the end of line, returning nil on end of
file. This is the default format.
L        reads the next line keeping the end-of-line character (if present),
returning nil on end of file.
number   reads a string with up to this number of bytes, returning nil on end of
file. If number is zero, it reads nothing and returns an empty string,
or nil on end of file.
]]
local r = h:read("*all")
for m in string.gmatch(r, ' [.][%w%d]+') do
  print(m)
end
h:close()
-- }}}

-- os {{{
local date = os.date('*t')
for k, v in pairs(date) do
  print(k .. ": " .. tostring(v))
end

os.execute('ls')

-- get env
print(os.getenv("PATH"))

-- os.remove(FILENAME)
-- os.rename(OLD, NEW)

-- 0: true, 1: false
-- os.exit(0)

-- }}}
-- String {{{
print(string.char(0x3c))

-- format
print(string.format("%s", "hello world"))

-- string.gmatch(STR, PATTERN)
local s = "hello world from Lua lua"
for w in string.gmatch(s, "lua") do
  print(w)
end
--}}}

-- Standard Libraries
-- https://www.lua.org/manual/5.3/
