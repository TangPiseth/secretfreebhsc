--[Consume items]
consumeID = {528, 1474, 4604}
delay = 30 --[minutes]










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
sitX, sitY = math.floor(GetLocal().pos.x / 32), math.floor(GetLocal().pos.y / 32)
while true do
	Sleep(3000)
	for _, item in pairs(consumeID) do
		for i = 1, 2 do
			SendPacketRaw(false, {type = 3, value = item, px = sitX, py = sitY, x = sitX * 32, y = sitY * 32})
			Sleep(200)
		end
	end
	Sleep(delay * 60000)
end
