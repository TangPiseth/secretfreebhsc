--[Find and drop]
delay = 150
itemID = 1656










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
AddHook("onvariant", "hook", function(var)
	if var[0] == "OnDialogRequest" and var[1]:find("item_finder") then
		return true
	end
	if var[0] == "OnTextOverlay" and var[1]:find("You can't drop that here") then
		find = false
	end
	return false
end)
find = true
while find do
	SendPacket(2, "action|dialog_return\ndialog_name|item_search\n" .. itemID .. "|1")
	Sleep(delay)
	SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|" .. itemID .. "|\nitem_count|250\n")
	Sleep(delay)
end
RemoveHooks()
LogToConsole("DONE")
