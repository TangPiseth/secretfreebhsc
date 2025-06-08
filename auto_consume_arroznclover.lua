consumeClover = false -- Don't Touch --
consumeArroz = false -- Don't Touch --

AddHook("onvariant", "onHook", function(var)
    if var[0] == "OnDialogRequest" and var[1]:find("add_player_info") then
        if var[1]:find("|528|") then
            consumeClover = true
        else
            consumeClover = false
        end

        if var[1]:find("|4604|") then
            consumeArroz = true
        else
            consumeArroz = false
        end
        return true
    end
end)

local function place(id, x, y)
    pkt = {}
    pkt.type = 3
    pkt.value = id
    pkt.px = math.floor(GetLocal().pos.x / 32 +x)
    pkt.py = math.floor(GetLocal().pos.y / 32 +y)
    pkt.x = GetLocal().pos.x
    pkt.y = GetLocal().pos.y
    SendPacketRaw(false, pkt)
end

local function wrenchMe()
    SendPacket(2, "action|wrench\n|netid|".. GetLocal().netid)
    Sleep(100)
end

while true do
    wrenchMe()
    if not consumeArroz then
        Sleep(100)
        for i = 1, 1 do
            place(4604, 0, 0)
            break
        end
    end

    wrenchMe()
    if not consumeClover then
        Sleep(100)
        for i = 1, 1 do
            place(528, 0, 0)
            break
        end
    end
end