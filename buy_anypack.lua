-- Configuration Section --
local config = {
  itemPack = "", -- Debug Item pack to purchase
  itemList = { 
        0,
        0
  },            -- List of item IDs to manage

  -- Advanced settings
  dropThreshold = 250, -- Minimum amount for dropping
  actionDelay = 500,  -- Delay between actions in milliseconds
  moveTimeout = 60,    -- Timeout for pathfinding in seconds
  debugMode = true     -- Enable debug logging
}

-- Constants --
local PACKET_TYPE = 2
local DROP_DIALOG = "action|dialog_return\ndialog_name|drop\nitem_drop|%d|\nitem_count|%d"
local TILE_SIZE = 32

-- Runtime Variables --
local shouldMove = false
local currentPosition = { x = nil, y = nil }

-- Initialize Hook --
AddHook("onvariant", "drop_protection_handler", function(var)
  if var[0] == "OnTextOverlay" and var[1]:find("You can't drop that here, face somewhere with open space.") then
    shouldMove = true
    return true
  end
  return false
end)

-- Safe position update function
local function updatePosition()
  local player = GetLocal()
  if not player or not player.pos then
    if config.debugMode then
      LogToConsole("Warning: Failed to get player position")
    end
    return false
  end

  currentPosition.x = math.floor(player.pos.x / TILE_SIZE)
  currentPosition.y = math.floor(player.pos.y / TILE_SIZE)
  return true
end

-- Count inventory items with error handling
local function countInventoryItems(itemId)
  local count = 0
  local inventory = GetInventory()

  if not inventory then
    if config.debugMode then
      LogToConsole("Warning: Failed to retrieve inventory")
    end
    return 0
  end

  for _, item in pairs(inventory) do
    if item.id == itemId then
      count = count + item.amount
    end
  end

  return count
end

-- Count world objects with error handling
local function countWorldObjects(itemId)
  local count = 0
  local objectList = GetObjectList()

  if not objectList then
    if config.debugMode then
      LogToConsole("Warning: Failed to retrieve object list")
    end
    return 0
  end

  for _, object in pairs(objectList) do
    if object.id == itemId then
      count = count + (object.amount or 1)
    end
  end

  return count
end

-- Improved drop function with position handling
local function dropItemPacks()
  if not updatePosition() then
    return false
  end

   

  -- Handle movement if drop was blocked
  if shouldMove then
    if currentPosition.x and currentPosition.y then
      local newX = currentPosition.x - 1
      local newY = currentPosition.y

      if config.debugMode then
        LogToConsole(string.format("Moving from (%d,%d) to (%d,%d)",
          currentPosition.x, currentPosition.y, newX, newY))
      end

      FindPath(newX, newY, config.moveTimeout)
    else
      LogToConsole("Error: Cannot move - invalid position")
    end

    shouldMove = false
  end

  return true
end

-- Validate configuration
local function validateConfig()
  if config.itemPack == "" then
    LogToConsole("Error: itemPack is not configured")
    return false
  end

  for _, itemId in ipairs(config.itemList) do
    if itemId == 0 then
      LogToConsole("Error: itemList contains unconfigured items (0)")
      return false
    end
  end

  return true
end

-- Main execution loop
local function main()
  if not validateConfig() then
    LogToConsole("Script terminated due to configuration errors")
    return
  end

  LogToConsole("Item Pack Manager started successfully")
  LogToConsole(string.format("Managing %d item types", #config.itemList))

  while true do
    -- Purchase item pack
    SendPacket(PACKET_TYPE, "action|buy\nitem|" .. config.itemPack)

    -- Check for items that need dropping
    for _, itemId in ipairs(config.itemList) do
      if countInventoryItems(itemId) >= config.dropThreshold then
        Sleep(config.actionDelay)
        dropItemPacks()
      end
    end

    Sleep(config.actionDelay)
  end
end

-- Start the script
main()