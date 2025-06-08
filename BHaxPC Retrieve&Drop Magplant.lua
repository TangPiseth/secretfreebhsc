--[Retrieve magplant and drop]
--[Stand on top of magplant]
itemID = 1656
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
magX = math.floor(GetLocal().pos.x / 32)
magY = math.floor(GetLocal().pos.y / 32 + 1)
AddHook("onvariant", "hook", function(var)
	if var[0] == "OnDialogRequest" and var[1]:find("MAGPLANT") then
		return true
	end
	if var[0] == "OnTextOverlay" and var[1]:find("You can't drop that here") then
		drop = false
	end
	return false
end)
SendPacketRaw(false, {type = 3, value = 32, px = magX, py = magY, x = magX * 32, y = magY * 32})
Sleep(1000)
drop = true
while drop do
	SendPacket(2, "action|dialog_return\ndialog_name|magplant_edit\nx|" .. magX .. "|\ny|" .. magY .. "|\nbuttonClicked|withdraw")
	Sleep(delay)
	SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|" .. itemID .. "|\nitem_count|250\n")
	Sleep(delay)
end
RemoveHooks()
LogToConsole("DONE")
