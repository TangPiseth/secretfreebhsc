--[PTHT loop UWS]
--[Turn on /ghost]
platY = GetLocal().pos.y / 32
plantID = 5640
harvestID = 15461
delayPlant = 80
delayHarvest = 200
worldType = "island" --[normal/nether/island]
mray = true










--[Main Script]
SendVariantList({[0] = "OnDialogRequest", [1] = [[
set_default_color|`w
add_label_with_icon|small|`8BooLua Community|left|2918|
add_spacer|small|
add_label_with_icon|small|`5VIP `b- `5Free Scripts CPS|left|1368|
add_label_with_icon|small|`eGL `b- `2BotHax `b- `8GPai|left|1368|
add_label_with_icon|small|`6Report Bug Script|left|1368|
add_label_with_icon|small|`3Request Script|left|1368|
add_label_with_icon|small|`8Learn Script|left|1368|
add_spacer|small|
add_url_button||`qDiscord``|NOFLAGS|https://discord.gg/Any9dcWNwE|`$BooLua Community.|0|0|
add_smalltext|`9Need more scripts?!Join now!|
add_quick_exit|]]})
if string.lower(worldType) == "normal" then
	sizeX, sizeY = 100, 60
elseif string.lower(worldType) == "nether" then
	sizeX, sizeY = 150, 150
elseif string.lower(worldType) == "island" then
	sizeX, sizeY = 200, 200
end
if mray == true then put = 10 else put = 1 end
plantTiles = {}
for plantY = sizeY - 2, 0, -1 do
	for x1 = 0, put - 1 do
		for x2 = 0, sizeX/put -1 do
			plantX = x2 * put + x1
			if (GetTile(plantX, plantY).fg == 0 or GetTile(plantX, plantY).fg == harvestID) and  GetTile(plantX, plantY + 1).fg ~= 0 and GetTile(plantX, plantY + 1).fg ~= harvestID and plantY <= platY then
				table.insert(plantTiles, {x = plantX, y = plantY})
			end
		end
	end
end
harvestTiles = {}
for harvestX = 0, sizeX - 1, 1 do
	for harvestY = sizeY - 2, 0, -1 do
		if (GetTile(harvestX, harvestY).fg == 0 or GetTile(harvestX, harvestY).fg == harvestID) and  GetTile(harvestX, harvestY + 1).fg ~= 0 and GetTile(harvestX, harvestY + 1).fg ~= harvestID and harvestY <= platY then
			table.insert(harvestTiles, {x = harvestX, y = harvestY})
		end
	end
end
while true do
	for i = 1, 3 do
		for _, tile in pairs(plantTiles) do
			if GetTile(tile.x, tile.y).fg == 0 then
				SendPacketRaw(false, {state = 32, x = tile.x * 32, y = tile.y * 32})
				SendPacketRaw(false, {type = 3, value = plantID, px = tile.x, py = tile.y, x = tile.x * 32, y = tile.y * 32})
				Sleep(delayPlant)
			end
		end
	end
	SendPacket(2, "action|dialog_return\ndialog_name|ultraworldspray\n")
	Sleep(10000)
	for i = 1, 3 do
		for _, tile in pairs(harvestTiles) do
			if GetTile(tile.x, tile.y).fg == harvestID and GetTile(tile.x, tile.y).extra.progress == 1 then
				SendPacketRaw(false, {state = 32, x = tile.x * 32, y = tile.y * 32})
				SendPacketRaw(false, {type = 3, value = 18, px = tile.x, py = tile.y, x = tile.x * 32, y = tile.y * 32})
				SendPacketRaw(false, {state = 4196896, px = tile.x, py = tile.y, x = tile.x * 32, y = tile.y * 32})
				SendPacketRaw(false, {state = 16779296, px = tile.x, py = tile.y, x = tile.x * 32, y = tile.y * 32})
				Sleep(delayHarvest)
			end
		end
	end
end
