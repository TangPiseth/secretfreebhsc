--[Clear island]
--[Turn on /ghost]
delay = 150










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
for y2 = 193, 0, -10 do
	y1 = y2 - 9
	for x = 0, 199 do
		for y = y1, y2 do
			if y >= 0 then
				tile = GetTile(x, y)
			end
			if (tile.fg ~= 0 or tile.bg ~= 0) and tile.fg ~= 6 and tile.fg ~= 8 and tile.fg ~= 242 and tile.fg ~= 5638 and tile.fg ~= 1796 and tile.fg ~= 5260 and tile.fg ~= 11550 and tile.fg ~= 4992 and tile.fg ~= 7188 then
				SendPacketRaw(false, {state = 32, x = x * 32, y = y * 32})
				Sleep(1)
				while GetTile(x, y).fg ~= 0 or GetTile(x, y).bg ~= 0 do
					SendPacketRaw(false, {type = 3, value = 18, px = x, py = y, x = x * 32, y = y * 32})
					Sleep(delay)
				end
			end
		end
	end
end
LogToConsole("DONE")
