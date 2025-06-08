opening = "\nadd_label_with_icon|big|`4PROXY `0MADE BY `b@Tackle     |left|758|"..
"\nadd_textbox|`2Hello, "..GetLocal().name.."|"..
"\nadd_textbox|`0You're using the newest `2version`0!|"..
"\nadd_textbox|`4Proxy `0is `2FREE`0 !!! `0Made by `b@Tackle|"..
"\nadd_spacer|small|"..
"\nadd_textbox|`2Buy `0or `4Sell `bBlack`0?! `0Contact Here!|".. 
"\nadd_textbox|`2WhatsApp `0+62 852-6037-0440|".. 
"\nadd_textbox|`bDiscord `0@TackleVan|".. 
"\nadd_spacer|small|".. 
"\nadd_label_with_icon|big|`b@Tackle `0Community|left|11550|"..
"\nadd_label_with_icon|big|`0Developed by `b@Tackle|left|6292|"..
"\nadd_url_button||`bDiscord `9Community `b(Free Script) |noflags|https://discord.gg/jsfS2qgz|Bergabung Ke Discord Tackle - Growtopia Shop?|".. 
"\nadd_url_button||`2WhatsApp `9Community `b(Free Promote) |noflags|https://chat.whatsapp.com/ELasK9bnsnQ0i6a0kLf9gt|Bergabung Ke WhatsApp Tackle - Growtopia Shop?|"..
"\nadd_spacer|small|".. 
"\nadd_spacer|small|"..
"\nadd_label_with_icon|small|`0Information|left|5956|"..
"\nadd_textbox|`0/proxy to show all commands|".. 
"\nadd_spacer|small|"..
"\nadd_quick_exit||"..
"\nend_dialog|cl|Okay!|"

-- INFORMATION COMMAND
cmd = [[
add_quick_exit|
add_label_with_icon|big|`2ALL `0Commands ~~ |left|758|
add_label|big|`2Information!|left|2064|
add_textbox|`2/proxy `0to show all commands!|
add_spacer|small|
add_label|big|`2MAIN `0COMMANDS|left|2064|
add_textbox|`2/wd `0to withdraw `ebgl `0from bank!|
add_textbox|`2/dp `0to deposit `ebgl `0into bank!|
add_textbox|`2/sdb `0to `0block sdb!|
add_textbox|`2/blue `0to convert `bblack `0to `ebgl`0!|
add_textbox|`2/black `0to convert `ebgl `0to `bblack`0!|
add_textbox|`2/cv `0to `2on `0or `4off `0convert mode!||
add_textbox|`2/pt `0to `2on `0or `4off `0teleport mode!|
add_textbox|`2/sc `0to show collected locks!|
add_spacer|small|
add_label|big|`4HOSTER `0COMMANDS|2064|
add_textbox|`2/w `0"..." `0to drop `9wl`0!|
add_textbox|`2/d `0"..." `0to drop `1dl`0!|
add_textbox|`2/bg `0"..." `0to drop `eblue gem lock`0!|
add_textbox|`2/bb `0"..." `0to drop `bblack gem lock`0!|
add_textbox|`2/reme `0to `2on `0or `4off `0reme mode!|
add_textbox|`2/qeme `0to `2on `0or `4off `0qeme mode!|
add_spacer|small|
add_label|big|`2Wrench `0Commands|left|
add_textbox|`2/wrp `0to off pull mode!|
add_textbox|`2/woff `0to off wrench mode!|
add_spacer|small|
end_dialog|proxy|Close|
]]

-- BUTTON BTK
BTKDIALOG = [[
add_quick_exit|
add_label_with_icon|big|`4PROXY `0HELPER|left|658|
add_textbox|`0Wassup, ]]..GetLocal().name..[[ ~~ Semoga Win Selalu!|left|
add_textbox|`4Kekurangan `0atau `2Kelebihan `bBlack`0?!|left|
add_textbox|`0DM Saja `bDiscord `0@TackleVan|left|
add_url_button||`bDiscord `0@Tackle|noflags|https://discordapp.com/users/1213537242296098816|Chat @Tackle ?!|"..
text_scaling_string|imlookingcool|
add_button_with_icon|modmenu|`0Menu|staticYellowFrame|12436||
add_button_with_icon|proxycmd|`2Commands|staticYellowFrame|758||
add_button_with_icon|socialportal|`2Social `0Button|staticYellowFrame|1366||
add_button_with_icon||END_LIST|noflags|0||
end_dialog|close|TUTUP!|
]]

-- MORE COMMAND
MORE = [[
add_quick_exit|
add_label_with_icon|big|`2MOD `0MENU|left|658|
add_textbox|`b@Tackle `s[MAX]|left|
text_scaling_string|imlookingcool|
add_button_with_icon|wrenchmenu|`2Wrench `0Menu|staticYellowFrame|32||
add_button_with_icon|bsdb|`4Block `2SDB|staticYellowFrame|2480||
add_button_with_icon|cvdlkebgl|`2Convert|staticYellowFrame|7188||
add_button_with_icon||END_LIST|noflags|0||
add_button_with_icon|remeqeme|`4Reme`0/`bQeme|staticYellowFrame|758||
add_button_with_icon|path|`2Teleport|staticYellowFrame|1684||
add_button_with_icon|show|`0Show `2Collected|staticYellowFrame|242||
add_spacer|small|
add_button_with_icon||END_LIST|noflags|0||
add_button|linkback|Back|
]]

-- WRENCH MENU
WRENCH = [[
add_quick_exit|
add_label_with_icon|big|`2WRENCH `0MENU|left|32|
add_spacer|small|
add_button_with_icon|wpull|`0Fast Pull|staticYellowFrame|274||
add_button_with_icon|woff|`0Turn OFF|staticYellowFrame|32||
add_button_with_icon||END_LIST|noflags|0||
add_button|lonkback|Back|
]]

--- REME QEME MODE
REME = [[
add_quick_exit|
add_label_with_icon|big|`0REME/QEME|left|32|
add_spacer|small|
add_button_with_icon|mreme|`0Reme Mode|staticYellowFrame|758||
add_button_with_icon|mqeme|`0Qeme Mode|staticYellowFrame|758||
add_button_with_icon||END_LIST|noflags|0||
add_button|lonkback|Back|
]]

--- DONT TOUCH !!!
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

---FUNCTION

-- proxy log system
function ProxyLog(str)
LogToConsole("`0[ `1@`3T`5a`#c`1k`3l`5e `0] "..str)
end

function bubble(str)
SendVariant({ v0 = "OnTalkBubble", v1 = GetLocal().netID, v2 = str })
end

-- get item inventory
function cty(id,id2,amount)
for _, inv in pairs(GetInventory()) do
if inv.id == id then
if inv.amount < amount then
cc = {}
cc.type = 10
cc.value = id2
SendPacketRaw(false, cc)
end
end
end
end

-- info id player
function wear(id)
ct = {}
ct.type = 10
ct.value = id
SendPacketRaw(false, ct)
end

-- OVERLAY
function ProxyOverlay(str)
ov = {}
ov.v0 = "OnTextOverlay"
ov.v1 = str
SendVariant(ov)
end

-- QEME
function qemefunc(number)
    if number >= 10 then
        hasil = string.sub(number, -1)
    else
        hasil = number
    end
    return hasil
end

function getGame(num)
    if reme and not qeme then
        return "`0[ `1R`3E`5M`#E`0: `9"..remefunc(tonumber(num)).."`0 ]"
    elseif not reme and qeme then
            return "`0[ `1Q`3E`5M`#E`0: `9"..qemefunc(tonumber(num)).."`0 ]"
            else
                return ""
    end
end

-- REME
function remefunc(number)
    if number == 19 or number == 28 or number == 0 then
        hasil = 0
    else
        num1 = math.floor(number / 10)
        num2 = number % 10
        hasil = string.sub(tostring(num1 + num2), -1)
    end
    return hasil
end

---Hook START !!!
function Hook(type,str)
if str:find("action|wrench\n|netid|(%d+)") then  -- Wrench START
id = str:match("action|wrench\n|netid|(%d+)")
if pull == true then
SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|pull")
for _, player in pairs(GetPlayerList()) do
if player.netID == tonumber(id) then
SendPacket(2, "action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1G`3a`5s "..player.name)
return true
end
end
end
end

if str:find("/wrp") or str:find("buttonClicked|wpull") then
if pull == false then
pull = true
kick = false
ban = false
SendPacket(2, "action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`2ON`0) `1P`3u`5l`#l `1M`3o`5d`#e")
return true
end
end --WRENCH FINISH

if str:find("/pt") or str:find("buttonClicked|path") then
if pathf == false then
pathf = true
EditToggle("PathFinder", true)
SendPacket(2,"action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`2ON`0) `1T`3e`5l`#e`1p`3o`5r`#t")
return true
else
pathf = false
EditToggle("PathFinder", false)
SendPacket(2,"action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`4OFF`0) `1T`3e`5l`#e`1p`3o`5r`#t")
return true
end
end

if str:find("/sc") or str:find("buttonClicked|show") then
if showco == false then
showco = true
SendPacket(2,"action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`2ON`0) `1S`3h`5o`#w`1i`3n`5g `#C`1o`3l`5l`#e`1c`3t`5e`#d `1L`3o`5c`#k`1s") 
return true
else
showco = false
SendPacket(2,"action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`4OFF`0) `1S`3h`5o`#w`1i`3n`5g `#C`1o`3l`5l`#e`1c`3t`5e`#d `1L`3o`5c`#k`1s")
return true
end
end

if str:find("/cv") or str:find("buttonClicked|cvdlkebgl") then ---CHANGE BGL
if cbgl == false then
cbgl = true
SendPacket(2,"action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`2ON`0) `1F`3a`5s`#t `1C`3o`5n`#v`1e`3r`5t `1Diamond Lock")
return true
else
cbgl = false
SendPacket(2,"action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`4OFF`0) `1F`3a`5s`#t `1C`3o`5n`#v`1e`3r`5t `1Diamond Lock")
return true
end
end

if str:find("friends") then --- BANNER BTK
var = {}
var.v0 = "OnDialogRequest"
var.v1 = BTKDIALOG
SendVariant (var)
end

if str:find("buttonClicked|proxycmd") then --- BANNER PROXY
var = {}
var.v0 = "OnDialogRequest"
var.v1 = cmd
SendVariant(var);
end

if str:find("/proxy") then --- BANNER PROXY
var = {}
var.v0 = "OnDialogRequest"
var.v1 = cmd
SendVariant(var);
end

if str:find("buttonClicked|modmenu") then
var = {}
var.v0 = "OnDialogRequest"
var.v1 = MORE
SendVariant(var);
end

if str:find("buttonClicked|wrenchmenu") then
var = {}
var.v0 = "OnDialogRequest"
var.v1 = WRENCH
SendVariant(var);
end

if str:find("buttonClicked|linkback") then
var = {}
var.v0 = "OnDialogRequest"
var.v1 = BTKDIALOG
SendVariant(var);
end

if str:find("buttonClicked|lonkback") then
var = {}
var.v0 = "OnDialogRequest"
var.v1 = MORE
SendVariant(var);
end


if str:find("buttonClicked|remeqeme") then
var = {}
var.v0 = "OnDialogRequest"
var.v1 = REME
SendVariant(var);
end


if str:find("/reme") or str:find("buttonClicked|mreme") then
if reme == false then
reme = true
qeme = false
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`2ON`0) `4Reme `1M`3o`5d`#e")
return true
else
reme = false
qeme = false
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`4OFF`0) `4Reme `1M`3o`5d`#e")
return true
end
end

if str:find("/qeme") or str:find("buttonClicked|mqeme") then
if qeme == false then
qeme = true
reme = false
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`2ON`0) `bQeme `1M`3o`5d`#e")
return true
else
qeme = false
reme = false
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`4OFF`0) `bQeme `1M`3o`5d`#e")
return true
end
end

if str:find("/sdb") or str:find("buttonClicked|bsdb") then
if sdbb == false then
sdbb = true
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1B`3l`5o`#c`1k`3i`5n`#g `1S`3D`5B")
return true
else
sdbb = false
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1U`3n`5b`#l`1o`3c`5k`#i`1n`3g `1S`3D`5B")
return true
end
end

if str:find("/blue") then ---IRENG TO BGL
SendPacket(2,"action|dialog_return\ndialog_name|info_box\nbuttonClicked|make_bluegl")
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1C`3o`5n`#v`1e`3r`5t`#e`1d `eBlack Gem Lock `1t`3o `bBlue Gem Lock")
return true
elseif str:find("/black") then ---BGL TO IRENG
SendPacket(2,"action|dialog_return\ndialog_name|info_box\nbuttonClicked|make_bgl")
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1C`3o`5n`#v`1e`3r`5t`#e`1d `eBlue Gem Lock `1t`3o `bBlack Gem Lock")
return true
end

if str:find("/woff") or str:find("buttonClicked|woff") then
var = {}
ban = false
kick = false
pull = false
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `0(`4OFF`0) `1W`3r`5e`#n`1c`3h `5M`#o`1d`3e")
return true
end

local colors = { "`b(heart)" }
local random_color = colors[math.random(1, #colors)]
SendPacket(2,"|/setcolor "..random_color.." : ")

if str:find("/w (%d+)") then
count = str:match("/w (%d+)")
c = tonumber (count)
cty(242,1796,c)
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|242|\nitem_count|"..count)
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1D`3r`5o`#p`1p`3e`5d `0"..count.. " `9World Lock")
return true
end

if str:find("/d (%d+)") then
count = str:match("/d (%d+)")
c = tonumber (count)
cty(1796,242,c)
cty(1796,7188,c)
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|1796|\nitem_count|"..count)
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1D`3r`5o`#p`1p`3e`5d `0"..count.. " `1Diamond Lock")
return true
end

if str:find("/bg (%d+)") then
count = str:match("/bg (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|7188|\nitem_count|"..count)
SendPacket(2, "action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1D`3r`5o`#p`1p`3e`5d `0"..count.. " `eBlue Gem Lock")
return true
end

if str:find("/bb (%d+)") then
count = str:match("/bb (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|11550|\nitem_count|"..count)
SendPacket(2,"action|input\ntext|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1D`3r`5o`#p`1p`3e`5d `0"..count.." `bBlack Gem Lock")
return true
end

if str:find("/wd (%d+)") then
WdBgl = str:match("/wd (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|bank_withdraw\nbgl_count|"..WdBgl)
SendPacket(2,"action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1W`3i`5t`#h`1d`3r`5a`#w`1e`3d `0"..WdBgl.." `eBlue Gem Lock")
return true
end

if str:find("/depo (%d+)") or str:find("/dp (%d+)") then
DpBgl = str:match("/depo (%d+)") or str:match("/dp (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|bank_deposit\nbgl_count|"..DpBgl)
SendPacket(2,"action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1D`3e`5p`#o`1s`3i`5t`#e`1d `0"..DpBgl.." `eBlue Gem Lock")
return true
end

if str:find("buttonClicked|socialportal") then
        SendPacket(2,"action|dialog_return\ndialog_name|social\nbuttonClicked|back")
        ProxyOverlay("`7Welcome to Normal Social Portal")
        return true
    end
    return false
    end

function var(var) 
if var.v1:find("OnConsoleMessage") and var.v2:find("World Locked") then
SendVariant({
	v0 = "OnAddNotification",
	v1 = "interface/atomic_button.rttex",
	v2 = "`bDiscord `1@`3T`5a`#c`1k`3l`5e`#V`1a`3n",
	v3 = "audio/hub_open.wav"
})
end

if var.v1:find("OnConsoleMessage") and var.v2:find("World Locked") then
SendPacket(2,"action|input\n|text|`1P`3r`5o`#x`1y `3M`5#a`#d`1e `3b`5y `b@Tackle")
Sleep(1000) 
SendPacket(2,"action|input\n|text|`bDiscord `0@TackleVan") 
end

if var.v1:find("OnConsoleMessage") and var.v2:find("spun the wheel") then
ProxyLog("`1(`3R`5E`#A`1L`3) "..var.v2)
return true
end

if var.v1 == "OnTalkBubble" and var.v3:find("left,") and var.v3:find("<") and var.v3:find(">") then
SendVariant({v0 = var.v1, v1 = var.v2, v2 = var.v3.." `w(`4Left`w)", v3 = var.v4})
return true
end


if var.v1 == "OnTalkBubble" and var.v3:find("entered,") and var.v3:find("<") and var.v3:find(">") then
SendVariant({v0 = var.v1, v1 = var.v2, v2 = var.v3.." `w(`2Entered`w)", v3 = var.v4})
return true
end

if var.v1:find("OnConsoleMessage") and var.v2:find("Collected") and var.v2:find("(%d+) World Lock") then
jumlah = var.v2:match("(%d+) World Lock")
wear(242)
end

if var.v1:find("OnConsoleMessage") and var.v2:find("Collected") and var.v2:find("(%d+) Black Gem Lock") then
jumlah = var.v2:match("(%d+) Black Gem Lock")
end

if showco then
if var.v1:find("OnConsoleMessage") and var.v2:find("oCollected") and var.v2:find("World") then
jumlah = var.v2:match("(%d+)")
SendPacket(2,"action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1T`3o`5o`#k `0"..jumlah.." `9World Lock")
end
if var.v1:find("OnConsoleMessage") and var.v2:find("oCollected") and var.v2:find("Diamond") then
jumlah = var.v2:match("(%d+)")
SendPacket(2,"action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1T`3o`5o`#k `0"..jumlah.." `1Diamond Lock")
end
if var.v1:find("OnConsoleMessage") and var.v2:find("oCollected") and var.v2:find("Blue Gem") then
jumlah = var.v2:match("(%d+)")
SendPacket(2,"action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1T`3o`5o`#k `0"..jumlah.." `eBlue Gem Lock")
end
if var.v1:find("OnConsoleMessage") and var.v2:find("oCollected") and var.v2:find("Black Gem") then
jumlah = var.v2:match("(%d+)")
SendPacket(2,"action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1T`3o`5o`#k `0"..jumlah.." `bBlack Gem Lock")
end
end

if var.v1:find("OnKill") then
SendPacket(2,"action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1Y`3o`5u`#'`1r`3e `4dead.")
end

if var.v1:find("OnConsoleMessage") and var.v2:find("(%d+) Diamond Lock") then
jumlah = var.v2:match("(%d+) Diamond Lock")
LogCollect = LogCollect.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] `wYou've Collected `5"..jumlah.." `1Diamond Lock|left|1796|\n"
s = tonumber(jumlah)
for _, tile in pairs(GetTiles()) do
if tile.fg == 3898 then
for _, inv in pairs(GetInventory()) do
if inv.id == 1796 then
if inv.amount > 100 or s > 99 then
SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..tile.x.."|\ny|"..tile.y.."|\nbuttonClicked|bglconvert")
end
end
end
end
end
end
if var.v1:find("OnDialogRequest") and var.v2:find("Wow, that's fast delivery.") then
return true
end
if var.v1:find("OnConsoleMessage") then
ProxyLog("`b"..var.v2)
return true
end

if var.v1:find("OnDialogRequest") and var.v2:find("`wTelephone") then
if cbgl == true then
x = var.v2:match("embed_data|x|(%d+)")
y = var.v2:match("embed_data|y|(%d+)")      
SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..x.."|\ny|"..y.."|\nbuttonClicked|bglconvert")
SendPacket(2,"action|input\n|text|`0[ `1@`3T`5a`#c`1k`3l`5e `0] `1C`3o`5n`#v`1e`3r`5t`#e`1d `3t`#o `eBlue Gem Lock")
return true
end
end

if var.v1 == "OnTalkBubble" and var.v3:find("spun the wheel") and var.v3:find("<") and var.v3:find(">") then
SendVariant({v0 = var.v1, v1 = var.v2, v2 = var.v3.." `1(`3F`5A`#K`1E`3)", v3 = var.v4})
return true
end

if var.v1:find("OnTalkBubble") and var.v3:find("spun the wheel") then 
if reme == true or qeme == true then
local num = string.gsub(string.gsub(var.v3:match("and got (.+)"), "!%]", ""), "`", "")
local onlynumber = string.sub(num, 2)
local clearspace = string.gsub(onlynumber, " ", "")
local h = string.gsub(string.gsub(clearspace, "!7", ""), "]", "")
SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`1(`3R`5E`#A`1L`3) "..var.v3.." "..getGame(tonumber(h)), v3 = var.v4})
return true
end
end

if var.v1:find("OnTalkBubble") and var.v3:find("spun the wheel") then
SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`1(`3R`5E`#A`1L`3) "..var.v3, v3 = var.v4})
return true
end
return false
end

AddHook(Hook, "OnSendPacket") 
AddHook(var, "OnVariant") 
SendPacket(2, "action|input\n|text|`1H`3e`5l`#l`1o, "..GetLocal().name.."|")
Sleep(1000) 
SendPacket(2, "action|input\n|text|`1P`3r`5o`#x`1y `3M`5a`#d`1e `3b`5y `b@Tackle")
Sleep(1000)
SendPacket(2, "action|input\n|text|`1F`3r`5e`#e `1P`3r`5o`#x`1y `bDiscord `0@TackleVan")
SendVariant({v0 = "OnDialogRequest", v1 = opening })