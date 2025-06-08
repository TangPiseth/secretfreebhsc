iditem = 13903
posx = 7
posy = 195

function take()
for _, obj in pairs(GetObjectList()) do
if obj.id == iditem then
        local x = math.floor(obj.pos.x / 32)
        local y = math.floor(obj.pos.y / 32)
        FindPath(x,y,150)
        Sleep(100)
        if findItem(iditem) == 250 then
            break
        end
    end
end
end

function findItem(id)
    for _, itm in pairs(GetInventory()) do
        if itm.id == id then
            return itm.amount
        end    
    end
    return 0
end

function additem()
FindPath(posx,posy-1,100)
Sleep(500)
SendPacket(2, "action|dialog_return\ndialog_name|magplant_edit\nx|"..posx.."|\ny|"..posy.."|\nbuttonClicked|additems")
Sleep(500)
end

while true do
if findItem(iditem) >= 0 then
take()
end
Sleep(50)
additem()
end