local component = require("component")
local sides = require("sides")
local io = require("io")
 
function stringToSide(side)
  if(side=="top") then return sides.top
  elseif(side=="bottom") then return sides.bottom
  elseif(side=="n") then return sides.north
  elseif(side=="e") then return sides.east
  elseif(side=="s") then return sides.south
  elseif(side=="w") then return sides.west
  else return "err"
  end
end
local e = false
while(e == false) do
  print("Reactor Side (N/E/S/W/TOP/BOTTOM):")
  local reactorSide =  stringToSide(string.lower(io.read()))
 
  e = true
  if(reactorSide == "err") then
    print("Invalid Input")
    e = false 
  end
end
 
print("\nBuffer Side (N/E/S/W/TOP/BOTTOM):")
