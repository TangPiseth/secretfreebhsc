-- icShark Proxy V1 - Professional Game Automation Tool
-- Created by: icShark
-- Version: 1.0
-- Features: Bank Management, Item Conversion, Auto Drop, Wrench Tools, Reme/Qeme Modes

-- MAIN DIALOG GUI
opening = "\nadd_label_with_icon|big|`b[`#i`9c`#S`9h`#a`9r`#k`b] `5P`9R`5O`9X`5Y `9V`51|left|758|"..
"\nadd_textbox|`5Welcome back, "..GetLocal().name.."!|"..
"\nadd_textbox|`9You're using the latest `5premium`9 version!|"..
"\nadd_textbox|`bProxy is `2FREE`b! Created by `#icShark|"..
"\nadd_spacer|small|"..
"\nadd_textbox|`5Professional tools for experienced players|".. 
"\nadd_textbox|`9Need help? Contact icShark directly|".. 
"\nadd_spacer|small|".. 
"\nadd_label_with_icon|big|`#icShark `9Development|left|11550|"..
"\nadd_label_with_icon|big|`5Powered by `#icShark `5Technology|left|6292|"..
"\nadd_url_button||`bDiscord `9Community `5(Premium Tools)|noflags|https://discord.gg/icshark|Join icShark Discord Community|".. 
"\nadd_url_button||`5GitHub `9Repository `b(Open Source)|noflags|https://github.com/icshark|Visit icShark GitHub|"..
"\nadd_spacer|small|".. 
"\nadd_spacer|small|"..
"\nadd_label_with_icon|small|`9Quick Access Commands|left|5956|"..
"\nadd_textbox|`5Type /proxy to show all available commands|".. 
"\nadd_spacer|small|"..
"\nadd_quick_exit||"..
"\nend_dialog|main|`5Got it!|"

-- COMMAND INFORMATION DIALOG
cmd = [[
add_quick_exit|
add_label_with_icon|big|`5ALL COMMANDS - icShark Proxy|left|758|
add_label|big|`9Command Reference Guide|left|2064|
add_textbox|`5/proxy `9- Show this command list|
add_spacer|small|
add_label|big|`bMAIN COMMANDS|left|2064|
add_textbox|`5/wd <amount> `9- Withdraw BGL from bank|
add_textbox|`5/dp <amount> `9- Deposit BGL to bank|
add_textbox|`5/sdb `9- Toggle SDB blocking|
add_textbox|`5/blue `9- Convert Black to Blue Gem Lock|
add_textbox|`5/black `9- Convert Blue to Black Gem Lock|
add_textbox|`5/cv `9- Toggle auto-convert mode|
add_textbox|`5/pt `9- Toggle teleport/pathfinder|
add_textbox|`5/sc `9- Toggle show collected items|
add_spacer|small|
add_label|big|`#HOST COMMANDS|left|2064|
add_textbox|`5/w <amount> `9- Drop World Locks|
add_textbox|`5/d <amount> `9- Drop Diamond Locks|
add_textbox|`5/bg <amount> `9- Drop Blue Gem Locks|
add_textbox|`5/bb <amount> `9- Drop Black Gem Locks|
add_textbox|`5/reme `9- Toggle Reme mode|
add_textbox|`5/qeme `9- Toggle Qeme mode|
add_spacer|small|
add_label|big|`9WRENCH TOOLS|left|2064|
add_textbox|`5/wrp `9- Toggle fast pull mode|
add_textbox|`5/woff `9- Disable all wrench modes|
add_spacer|small|
end_dialog|commands|`5Close|
]]

-- MAIN MENU DIALOG
MAINMENU = [[
add_quick_exit|
add_label_with_icon|big|`#icShark `5Proxy Hub|left|658|
add_textbox|`9Professional tools for `5]]..GetLocal().name..[[|left|
add_textbox|`bNeed premium features? Contact icShark!|left|
add_textbox|`9Discord: icShark#1337 | GitHub: @icshark|left|
add_spacer|small|
text_scaling_string|imlookingcool|
add_button_with_icon|maintools|`5Main Tools|staticYellowFrame|12436||
add_button_with_icon|commands|`9Commands|staticYellowFrame|758||
add_button_with_icon|socialtools|`bSocial Tools|staticYellowFrame|1366||
add_button_with_icon||END_LIST|noflags|0||
end_dialog|close|`#Close|
]]

-- TOOLS MENU
TOOLSMENU = [[
add_quick_exit|
add_label_with_icon|big|`5TOOLS MENU|left|658|
add_textbox|`#icShark Premium Features|left|
text_scaling_string|imlookingcool|
add_button_with_icon|wrenchtools|`9Wrench Tools|staticYellowFrame|32||
add_button_with_icon|banktools|`5Bank Manager|staticYellowFrame|2480||
add_button_with_icon|converttools|`bConvert Tools|staticYellowFrame|7188||
add_button_with_icon||END_LIST|noflags|0||
add_button_with_icon|specialmodes|`#Special Modes|staticYellowFrame|758||
add_button_with_icon|pathtools|`9Teleport Tools|staticYellowFrame|1684||
add_button_with_icon|displaytools|`5Display Tools|staticYellowFrame|242||
add_spacer|small|
add_button_with_icon||END_LIST|noflags|0||
add_button|backmain|`9Back to Main|
]]

-- WRENCH TOOLS MENU
WRENCHTOOLS = [[
add_quick_exit|
add_label_with_icon|big|`9WRENCH TOOLS|left|32|
add_textbox|`5Advanced player management tools|
add_spacer|small|
add_button_with_icon|fastpull|`5Fast Pull Mode|staticYellowFrame|274||
add_button_with_icon|wrenchoff|`#Disable All|staticYellowFrame|32||
add_button_with_icon||END_LIST|noflags|0||
add_button|backtools|`9Back|
]]

-- SPECIAL MODES MENU
SPECIALMODES = [[
add_quick_exit|
add_label_with_icon|big|`#SPECIAL MODES|left|32|
add_textbox|`5Advanced game calculation modes|
add_spacer|small|
add_button_with_icon|rememode|`#Reme Mode|staticYellowFrame|758||
add_button_with_icon|qememode|`bQeme Mode|staticYellowFrame|758||
add_button_with_icon||END_LIST|noflags|0||
add_button|backtools|`9Back|
]]

-- GLOBAL VARIABLES
data = {}
local pull = false
local kick = false
local ban = false
local cbgl = false
local gasmode = false
local bgems = false
Count = 0
local fasttrash = false
local sdbb = false
local firee = false
local reme = false
local qeme = false
local game
local results
pathf = false
showco = false
collectgems = true

-- UTILITY FUNCTIONS

-- Enhanced logging system with icShark branding
function ProxyLog(str)
    if str and str ~= "" then
        LogToConsole("`#[`5icShark`#] "..tostring(str))
    end
end

-- Safe bubble function
function bubble(str)
    if str and str ~= "" then
        SendVariant({ v0 = "OnTalkBubble", v1 = GetLocal().netID, v2 = tostring(str) })
    end
end

-- Safe inventory check with error handling
function cty(id, id2, amount)
    if not id or not id2 or not amount then return end
    
    for _, inv in pairs(GetInventory()) do
        if inv and inv.id == id then
            if inv.amount < amount then
                cc = {}
                cc.type = 10
                cc.value = id2
                SendPacketRaw(false, cc)
            end
        end
    end
end

-- Safe wear function
function wear(id)
    if not id then return end
    
    ct = {}
    ct.type = 10
    ct.value = id
    SendPacketRaw(false, ct)
end

-- Enhanced overlay system
function ProxyOverlay(str)
    if str and str ~= "" then
        ov = {}
        ov.v0 = "OnTextOverlay"
        ov.v1 = tostring(str)
        SendVariant(ov)
    end
end

-- QEME calculation function with error handling
function qemefunc(number)
    if not number then return 0 end
    
    local num = tonumber(number)
    if not num then return 0 end
    
    if num >= 10 then
        local str_num = tostring(num)
        return tonumber(string.sub(str_num, -1)) or 0
    else
        return num
    end
end

-- Enhanced game mode display
function getGame(num)
    if not num then return "" end
    
    local number = tonumber(num)
    if not number then return "" end
    
    if reme and not qeme then
        return "`#[`5REME`#: `9"..remefunc(number).."`#]"
    elseif not reme and qeme then
        return "`#[`5QEME`#: `9"..qemefunc(number).."`#]"
    else
        return ""
    end
end

-- REME calculation with enhanced error handling
function remefunc(number)
    if not number then return 0 end
    
    local num = tonumber(number)
    if not num then return 0 end
    
    if num == 19 or num == 28 or num == 0 then
        return 0
    else
        local num1 = math.floor(num / 10)
        local num2 = num % 10
        local result = tostring(num1 + num2)
        return tonumber(string.sub(result, -1)) or 0
    end
end

-- MAIN HOOK FUNCTION
function Hook(type, str)
    if not str then return false end
    
    -- Wrench functionality with improved safety
    if str:find("action|wrench\n|netid|(%d+)") then
        local id = str:match("action|wrench\n|netid|(%d+)")
        if pull == true and id then
            SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|pull")
            for _, player in pairs(GetPlayerList()) do
                if player and player.netID == tonumber(id) then
                    SendPacket(2, "action|input\n|text|`#[`5icShark`#] `9Pulled "..tostring(player.name))
                    return true
                end
            end
        end
    end

    -- Enhanced command handling with better error checking
    if str:find("/wrp") or str:find("buttonClicked|fastpull") then
        if pull == false then
            pull = true
            kick = false
            ban = false
            SendPacket(2, "action|input\n|text|`#[`5icShark`#] `5(`2ON`5) `9Fast Pull Mode")
            return true
        end
    end

    if str:find("/pt") or str:find("buttonClicked|pathtools") then
        if pathf == false then
            pathf = true
            EditToggle("PathFinder", true)
            SendPacket(2,"action|input\ntext|`#[`5icShark`#] `5(`2ON`5) `9Teleport Mode")
            return true
        else
            pathf = false
            EditToggle("PathFinder", false)
            SendPacket(2,"action|input\ntext|`#[`5icShark`#] `5(`4OFF`5) `9Teleport Mode")
            return true
        end
    end

    if str:find("/sc") or str:find("buttonClicked|displaytools") then
        if showco == false then
            showco = true
            SendPacket(2,"action|input\ntext|`#[`5icShark`#] `5(`2ON`5) `9Show Collected Items") 
            return true
        else
            showco = false
            SendPacket(2,"action|input\ntext|`#[`5icShark`#] `5(`4OFF`5) `9Show Collected Items")
            return true
        end
    end

    if str:find("/cv") or str:find("buttonClicked|converttools") then
        if cbgl == false then
            cbgl = true
            SendPacket(2,"action|input\ntext|`#[`5icShark`#] `5(`2ON`5) `9Fast Convert Mode")
            return true
        else
            cbgl = false
            SendPacket(2,"action|input\ntext|`#[`5icShark`#] `5(`4OFF`5) `9Fast Convert Mode")
            return true
        end
    end

    -- Main menu navigation
    if str:find("friends") then
        local var = {}
        var.v0 = "OnDialogRequest"
        var.v1 = MAINMENU
        SendVariant(var)
        return true
    end

    if str:find("buttonClicked|commands") or str:find("/proxy") then
        local var = {}
        var.v0 = "OnDialogRequest"
        var.v1 = cmd
        SendVariant(var)
        return true
    end

    if str:find("buttonClicked|maintools") then
        local var = {}
        var.v0 = "OnDialogRequest"
        var.v1 = TOOLSMENU
        SendVariant(var)
        return true
    end

    if str:find("buttonClicked|wrenchtools") then
        local var = {}
        var.v0 = "OnDialogRequest"
        var.v1 = WRENCHTOOLS
        SendVariant(var)
        return true
    end

    if str:find("buttonClicked|specialmodes") then
        local var = {}
        var.v0 = "OnDialogRequest"
        var.v1 = SPECIALMODES
        SendVariant(var)
        return true
    end

    if str:find("buttonClicked|backmain") then
        local var = {}
        var.v0 = "OnDialogRequest"
        var.v1 = MAINMENU
        SendVariant(var)
        return true
    end

    if str:find("buttonClicked|backtools") then
        local var = {}
        var.v0 = "OnDialogRequest"
        var.v1 = TOOLSMENU
        SendVariant(var)
        return true
    end

    -- Special modes
    if str:find("/reme") or str:find("buttonClicked|rememode") then
        if reme == false then
            reme = true
            qeme = false
            SendPacket(2, "action|input\ntext|`#[`5icShark`#] `5(`2ON`5) `#Reme Mode")
            return true
        else
            reme = false
            qeme = false
            SendPacket(2, "action|input\ntext|`#[`5icShark`#] `5(`4OFF`5) `#Reme Mode")
            return true
        end
    end

    if str:find("/qeme") or str:find("buttonClicked|qememode") then
        if qeme == false then
            qeme = true
            reme = false
            SendPacket(2, "action|input\ntext|`#[`5icShark`#] `5(`2ON`5) `bQeme Mode")
            return true
        else
            qeme = false
            reme = false
            SendPacket(2, "action|input\ntext|`#[`5icShark`#] `5(`4OFF`5) `bQeme Mode")
            return true
        end
    end

    -- SDB blocking
    if str:find("/sdb") or str:find("buttonClicked|banktools") then
        if sdbb == false then
            sdbb = true
            SendPacket(2, "action|input\ntext|`#[`5icShark`#] `5Blocking SDB")
            return true
        else
            sdbb = false
            SendPacket(2, "action|input\ntext|`#[`5icShark`#] `5Unblocking SDB")
            return true
        end
    end

    -- Conversion commands
    if str:find("/blue") then
        SendPacket(2,"action|dialog_return\ndialog_name|info_box\nbuttonClicked|make_bluegl")
        SendPacket(2, "action|input\ntext|`#[`5icShark`#] `9Converted Black to Blue Gem Lock")
        return true
    elseif str:find("/black") then
        SendPacket(2,"action|dialog_return\ndialog_name|info_box\nbuttonClicked|make_bgl")
        SendPacket(2, "action|input\ntext|`#[`5icShark`#] `9Converted Blue to Black Gem Lock")
        return true
    end

    -- Wrench disable
    if str:find("/woff") or str:find("buttonClicked|wrenchoff") then
        ban = false
        kick = false
        pull = false
        SendPacket(2, "action|input\ntext|`#[`5icShark`#] `5(`4OFF`5) `9All Wrench Modes")
        return true
    end

    -- Enhanced drop commands with better error handling
    if str:find("/w (%d+)") then
        local count = str:match("/w (%d+)")
        if count then
            local c = tonumber(count)
            if c and c > 0 then
                cty(242,1796,c)
                SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|242|\nitem_count|"..count)
                SendPacket(2, "action|input\ntext|`#[`5icShark`#] `9Dropped "..count.. " World Locks")
            end
        end
        return true
    end

    if str:find("/d (%d+)") then
        local count = str:match("/d (%d+)")
        if count then
            local c = tonumber(count)
            if c and c > 0 then
                cty(1796,242,c)
                cty(1796,7188,c)
                SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|1796|\nitem_count|"..count)
                SendPacket(2, "action|input\ntext|`#[`5icShark`#] `9Dropped "..count.. " Diamond Locks")
            end
        end
        return true
    end

    if str:find("/bg (%d+)") then
        local count = str:match("/bg (%d+)")
        if count then
            local c = tonumber(count)
            if c and c > 0 then
                SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|7188|\nitem_count|"..count)
                SendPacket(2, "action|input\ntext|`#[`5icShark`#] `9Dropped "..count.. " Blue Gem Locks")
            end
        end
        return true
    end

    if str:find("/bb (%d+)") then
        local count = str:match("/bb (%d+)")
        if count then
            local c = tonumber(count)
            if c and c > 0 then
                SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|11550|\nitem_count|"..count)
                SendPacket(2,"action|input\ntext|`#[`5icShark`#] `9Dropped "..count.." Black Gem Locks")
            end
        end
        return true
    end

    -- Enhanced bank commands
    if str:find("/wd (%d+)") then
        local WdBgl = str:match("/wd (%d+)")
        if WdBgl then
            local amount = tonumber(WdBgl)
            if amount and amount > 0 then
                SendPacket(2, "action|dialog_return\ndialog_name|bank_withdraw\nbgl_count|"..WdBgl)
                SendPacket(2,"action|input\n|text|`#[`5icShark`#] `9Withdrew "..WdBgl.." Blue Gem Locks")
            end
        end
        return true
    end

    if str:find("/depo (%d+)") or str:find("/dp (%d+)") then
        local DpBgl = str:match("/depo (%d+)") or str:match("/dp (%d+)")
        if DpBgl then
            local amount = tonumber(DpBgl)
            if amount and amount > 0 then
                SendPacket(2, "action|dialog_return\ndialog_name|bank_deposit\nbgl_count|"..DpBgl)
                SendPacket(2,"action|input\n|text|`#[`5icShark`#] `9Deposited "..DpBgl.." Blue Gem Locks")
            end
        end
        return true
    end

    -- Social portal handling
    if str:find("buttonClicked|socialtools") then
        SendPacket(2,"action|dialog_return\ndialog_name|social\nbuttonClicked|back")
        ProxyOverlay("`5Welcome to icShark Social Portal")
        return true
    end
    
    return false
end

-- VARIANT HANDLER WITH ENHANCED ERROR CHECKING
function var(var) 
    if not var or not var.v1 then return false end

    -- World locked notification
    if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("World Locked") then
        SendVariant({
            v0 = "OnAddNotification",
            v1 = "interface/atomic_button.rttex",
            v2 = "`#icShark Premium Proxy",
            v3 = "audio/hub_open.wav"
        })
    end

    if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("World Locked") then
        SendPacket(2,"action|input\n|text|`#Proxy Made by icShark")
        Sleep(1000) 
        SendPacket(2,"action|input\n|text|`5Discord: icShark#1337") 
    end

    -- Enhanced wheel spin detection
    if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("spun the wheel") then
        ProxyLog("`5(`9REAL`5) "..tostring(var.v2))
        return true
    end

    -- Player movement tracking
    if var.v1 == "OnTalkBubble" and var.v3 and var.v3:find("left,") and var.v3:find("<") and var.v3:find(">") then
        SendVariant({v0 = var.v1, v1 = var.v2, v2 = var.v3.." `w(`4Left`w)", v3 = var.v4})
        return true
    end

    if var.v1 == "OnTalkBubble" and var.v3 and var.v3:find("entered,") and var.v3:find("<") and var.v3:find(">") then
        SendVariant({v0 = var.v1, v1 = var.v2, v2 = var.v3.." `w(`2Entered`w)", v3 = var.v4})
        return true
    end

    -- Item collection tracking
    if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("Collected") and var.v2:find("(%d+) World Lock") then
        local jumlah = var.v2:match("(%d+) World Lock")
        if jumlah then
            wear(242)
        end
    end

    if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("Collected") and var.v2:find("(%d+) Black Gem Lock") then
        local jumlah = var.v2:match("(%d+) Black Gem Lock")
        -- Additional handling could be added here
    end

    -- Show collected items feature
    if showco then
        if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("oCollected") and var.v2:find("World") then
            local jumlah = var.v2:match("(%d+)")
            if jumlah then
                SendPacket(2,"action|input\n|text|`#[`5icShark`#] `9Collected "..jumlah.." World Locks")
            end
        end
        if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("oCollected") and var.v2:find("Diamond") then
            local jumlah = var.v2:match("(%d+)")
            if jumlah then
                SendPacket(2,"action|input\n|text|`#[`5icShark`#] `9Collected "..jumlah.." Diamond Locks")
            end
        end
        if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("oCollected") and var.v2:find("Blue Gem") then
            local jumlah = var.v2:match("(%d+)")
            if jumlah then
                SendPacket(2,"action|input\n|text|`#[`5icShark`#] `9Collected "..jumlah.." Blue Gem Locks")
            end
        end
        if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("oCollected") and var.v2:find("Black Gem") then
            local jumlah = var.v2:match("(%d+)")
            if jumlah then
                SendPacket(2,"action|input\n|text|`#[`5icShark`#] `9Collected "..jumlah.." Black Gem Locks")
            end
        end
    end

    -- Death notification
    if var.v1:find("OnKill") then
        SendPacket(2,"action|input\n|text|`#[`5icShark`#] `4You died!")
    end

    -- Auto-conversion for Diamond Locks
    if var.v1:find("OnConsoleMessage") and var.v2 and var.v2:find("(%d+) Diamond Lock") then
        local jumlah = var.v2:match("(%d+) Diamond Lock")
        if jumlah then
            local s = tonumber(jumlah)
            if s then
                for _, tile in pairs(GetTiles()) do
                    if tile and tile.fg == 3898 then
                        for _, inv in pairs(GetInventory()) do
                            if inv and inv.id == 1796 then
                                if inv.amount > 100 or s > 99 then
                                    SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..tile.x.."|\ny|"..tile.y.."|\nbuttonClicked|bglconvert")
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    -- Block fast delivery dialog
    if var.v1:find("OnDialogRequest") and var.v2 and var.v2:find("Wow, that's fast delivery.") then
        return true
    end

    -- Console message filtering
    if var.v1:find("OnConsoleMessage") and var.v2 then
        ProxyLog("`b"..tostring(var.v2))
        return true
    end

    -- Auto-convert telephone handler
    if var.v1:find("OnDialogRequest") and var.v2 and var.v2:find("`wTelephone") then
        if cbgl == true then
            local x = var.v2:match("embed_data|x|(%d+)")
            local y = var.v2:match("embed_data|y|(%d+)")
            if x and y then
                SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..x.."|\ny|"..y.."|\nbuttonClicked|bglconvert")
                SendPacket(2,"action|input\n|text|`#[`5icShark`#] `9Auto-converted to Blue Gem Lock")
            end
            return true
        end
    end

    -- Enhanced wheel spin detection with game modes
    if var.v1 == "OnTalkBubble" and var.v3 and var.v3:find("spun the wheel") and var.v3:find("<") and var.v3:find(">") then
        SendVariant({v0 = var.v1, v1 = var.v2, v2 = var.v3.." `5(`9FAKE`5)", v3 = var.v4})
        return true
    end

    if var.v1:find("OnTalkBubble") and var.v3 and var.v3:find("spun the wheel") then 
        if reme == true or qeme == true then
            local num = string.gsub(string.gsub(var.v3:match("and got (.+)") or "", "!%]", ""), "`", "")
            local onlynumber = string.sub(num, 2)
            local clearspace = string.gsub(onlynumber, " ", "")
            local h = string.gsub(string.gsub(clearspace, "!7", ""), "]", "")
            local number = tonumber(h)
            if number then
                SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`5(`9REAL`5) "..var.v3.." "..getGame(number), v3 = var.v4})
            else
                SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`5(`9REAL`5) "..var.v3, v3 = var.v4})
            end
            return true
        end
    end

    if var.v1:find("OnTalkBubble") and var.v3 and var.v3:find("spun the wheel") then
        SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`5(`9REAL`5) "..var.v3, v3 = var.v4})
        return true
    end
    
    return false
end

-- INITIALIZE HOOKS AND STARTUP
AddHook(Hook, "OnSendPacket") 
AddHook(var, "OnVariant") 

-- Startup messages
SendPacket(2, "action|input\n|text|`5Hello, "..GetLocal().name.."!")
Sleep(1000) 
SendPacket(2, "action|input\n|text|`#icShark Proxy V1 - Premium Features")
Sleep(1000)
SendPacket(2, "action|input\n|text|`9Free Premium Proxy by icShark")

-- Show main dialog
SendVariant({v0 = "OnDialogRequest", v1 = opening })