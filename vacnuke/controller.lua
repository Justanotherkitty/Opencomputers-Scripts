local component = require("component")
local sides = require("sides")
local io = require("io")

-- Functions
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
-- Variable Definitions
local reactorSide
local bufferSide

local inventoryController

-- Program Start

-- check for inventory controller
for k,v in component.list("inventory_controller", true) do
  if(not v == "inventory_controller") then 
    print("No Inventory Controller :(")
    os.exit()
  end
  inventoryController = component.proxy(k)
end




local e = false
while(e == false) do
  print("Reactor Side (N/E/S/W/TOP/BOTTOM):")
  reactorSide = stringToSide(string.lower(io.read()))
 
  e = true
  if(reactorSide == "err") then
    print("Invalid Input")
    e = false 
  end
end
 
e = false
while(e == false) do
  print("Buffer Side (N/E/S/W/TOP/BOTTOM):")
  bufferSide = stringToSide(string.lower(io.read()))
 
  e = true
  if(bufferSide == "err") then
    print("Invalid Input")
    e = false 
  end
end


-- Main Program Loop