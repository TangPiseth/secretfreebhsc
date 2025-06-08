opening = "\nadd_label_with_icon|big|`2P`^R`2O`^X`2Y `^M`2A`^D`^E `2B`^Y `b@Tackle     |left|758|"..
"\nadd_textbox|`2H`^e`2l`^l`2o, "..GetLocal().name.."|"..
"\nadd_textbox|`2Y`^o`2u`^'`2r`^e `2u`^s`^i`2n`^g `2t`^h`2e `^n`2e`^w`2e`^s`2t `^v`2e`^r`2s`^i`2o`^n`2!|"..
"\nadd_textbox|`2P`^r`2o`^x`2y `^i`2s `^F`2R`^E`2E `^!`2!`^! `2M`^a`2d`^e `2b`^y `b@Tackle|"..
"\nadd_spacer|small|"..
"\nadd_textbox|`2B`^u`2y `^o`2r `^S`2e`^l`2l `^B`2l`^a`2c`^k`2?`^! `2C`^o`2n`^t`2a`^c`2t `^H`2e`^r`2e|".. 
"\nadd_textbox|`2WhatsApp `0+62 852-6037-0440|".. 
"\nadd_textbox|`bDiscord `0@TackleVan|".. 
"\nadd_spacer|small|".. 
"\nadd_label_with_icon|big|`b@Tackle `2C`^o`2m`^m`2u`^n`2i`^t`2y|left|11550|"..
"\nadd_label_with_icon|big|`2D`^e`2v`^e`2l`^o`2p`^e`2d `^b`2y `b@Tackle|left|6292|"..
"\nadd_url_button||`bDiscord `2C`^o`2m`^m`2u`^n`2i`^t`2y `b(Free Script) |noflags|https://discord.gg/jsfS2qgz|Bergabung Ke Discord Tackle - Growtopia Shop?|".. 
"\nadd_url_button||`2WhatsApp `2C`^o`2m`^m`2u`^n`2i`^t`2y `b(Free Promote) |noflags|https://chat.whatsapp.com/ELasK9bnsnQ0i6a0kLf9gt|Bergabung Ke WhatsApp Tackle - Growtopia Shop?|"..
"\nadd_spacer|small|".. 
"\nadd_spacer|small|"..
"\nadd_label_with_icon|small|`2I`^n`2f`^o`2r`^m`2a`^t`2i`^o`2n|left|5956|"..
"\nadd_textbox|`2/p`2r`^o`2x`^y `2t`^o `2s`^h`2o`^w `2a`^l`2l `^c`2o`^m`2m`^a`2n`^d`2s|".. 
"\nadd_spacer|small|"..
"\nadd_quick_exit||"..
"\nend_dialog|cl|`2O`^k`2a`^y`2!|"

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
add_label|big|`2WRENCH `0COMMANDS|left|
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
add_button_with_icon|modmenu|`2M`^e`2n`^u|staticYellowFrame|12436||
add_button_with_icon|proxycmd|`2C`^o`2m`^m`2a`^n`2d`^s|staticYellowFrame|758||
add_button_with_icon|socialportal|`2S`^o`2c`^i`2a`^l `2B`^u`2t`^t`2o`^n|staticYellowFrame|1366||
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
LogToConsole("`0[ `2@`^T`2a`^c`2k`^l`2e`0] "..str)
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
        return "`0[ `2R`^E`2M`^E`0: `9"..remefunc(tonumber(num)).."`0 ]"
    elseif not reme and qeme then
            return "`0[ `2Q`^E`2M`^E`0: `9"..qemefunc(tonumber(num)).."`0 ]"
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
SendPacket(2, "action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2G`^a`2s "..player.name)
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
SendPacket(2, "action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`2ON`0) `2P`^u`2l`^l `2M`^o`2d`^e")
return true
end
end --WRENCH FINISH

if str:find("/pt") or str:find("buttonClicked|path") then
if pathf == false then
pathf = true
EditToggle("PathFinder", true)
SendPacket(2,"action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`2ON`0) `2T`^e`2l`^e`2p`^o`2r`^t")
return true
else
pathf = false
EditToggle("PathFinder", false)
SendPacket(2,"action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`4OFF`0) `2T`^e`2l`^e`2p`^o`2r`^t")
return true
end
end

if str:find("/sc") or str:find("buttonClicked|show") then
if showco == false then
showco = true
SendPacket(2,"action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`2ON`0) `2S`^h`2o`^w`2i`^n`2g `^C`2o`^l`2l`^e`2c`^t`2e`^d `2L`^o`2c`^k`2s") 
return true
else
showco = false
SendPacket(2,"action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`4OFF`0) `2S`^h`2o`^w`2i`^n`2g `^C`2o`^l`2l`^e`2c`^t`2e`^d `2L`^o`2c`^k`2s")
return true
end
end

if str:find("/cv") or str:find("buttonClicked|cvdlkebgl") then ---CHANGE BGL
if cbgl == false then
cbgl = true
SendPacket(2,"action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`2ON`0) `2F`^a`2s`^t `2C`^o`2n`^v`2e`^r`2t `1Diamond Lock")
return true
else
cbgl = false
SendPacket(2,"action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`4OFF`0) `2F`^a`2s`^t `2C`^o`2n`^v`2e`^r`2t `1Diamond Lock")
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
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`2ON`0) `4Reme `2M`^o`2d`^e")
return true
else
reme = false
qeme = false
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`4OFF`0) `4Reme `2M`^o`2d`^e")
return true
end
end

if str:find("/qeme") or str:find("buttonClicked|mqeme") then
if qeme == false then
qeme = true
reme = false
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`2ON`0) `bQeme `2M`^o`2d`^e")
return true
else
qeme = false
reme = false
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`4OFF`0) `bQeme `2M`^o`2d`^e")
return true
end
end

if str:find("/sdb") or str:find("buttonClicked|bsdb") then
if sdbb == false then
sdbb = true
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2B`^l`2o`^c`2k`^i`2n`^g `2S`^D`2B")
return true
else
sdbb = false
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2U`^n`2b`^l`2o`^c`2k`^i`2n`^g `2S`^D`2B")
return true
end
end

if str:find("/blue") then ---IRENG TO BGL
SendPacket(2,"action|dialog_return\ndialog_name|info_box\nbuttonClicked|make_bluegl")
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2C`^o`2n`^v`2e`^r`2t`^e`2d `eBlack Gem Lock `2t`^o `bBlue Gem Lock")
return true
elseif str:find("/black") then ---BGL TO IRENG
SendPacket(2,"action|dialog_return\ndialog_name|info_box\nbuttonClicked|make_bgl")
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2C`^o`2n`^v`2e`^r`2t`^e`2d `eBlue Gem Lock `2t`^o `bBlack Gem Lock")
return true
end

if str:find("/woff") or str:find("buttonClicked|woff") then
var = {}
ban = false
kick = false
pull = false
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `0(`4OFF`0) `2W`^r`2e`^n`2c`^h `2M`^o`2d`^e")
return true
end

local colors = { "`^(shamrock)" }
local random_color = colors[math.random(1, #colors)]
SendPacket(2,"|/setcolor "..random_color.." : ")

if str:find("/w (%d+)") then
count = str:match("/w (%d+)")
c = tonumber (count)
cty(242,1796,c)
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|242|\nitem_count|"..count)
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2D`^r`2o`^p`2p`^e`2d `0"..count.. " `9World Lock")
return true
end

if str:find("/d (%d+)") then
count = str:match("/d (%d+)")
c = tonumber (count)
cty(1796,242,c)
cty(1796,7188,c)
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|1796|\nitem_count|"..count)
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2D`^r`2o`^p`2p`^e`2d `0"..count.. " `1Diamond Lock")
return true
end

if str:find("/bg (%d+)") then
count = str:match("/bg (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|7188|\nitem_count|"..count)
SendPacket(2, "action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2D`^r`2o`^p`2p`^e`2d `0"..count.. " `eBlue Gem Lock")
return true
end

if str:find("/bb (%d+)") then
count = str:match("/bb (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|11550|\nitem_count|"..count)
SendPacket(2,"action|input\ntext|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2D`^r`2o`^p`2p`^e`2d `0"..count.." `bBlack Gem Lock")
return true
end

if str:find("/wd (%d+)") then
WdBgl = str:match("/wd (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|bank_withdraw\nbgl_count|"..WdBgl)
SendPacket(2,"action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2W`^i`2t`^h`2d`^r`2a`^w`2e`^d `0"..WdBgl.." `eBlue Gem Lock")
return true
end

if str:find("/depo (%d+)") or str:find("/dp (%d+)") then
DpBgl = str:match("/depo (%d+)") or str:match("/dp (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|bank_deposit\nbgl_count|"..DpBgl)
SendPacket(2,"action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2D`^e`2p`^o`2s`^i`2t`^e`2d `0"..DpBgl.." `eBlue Gem Lock")
return true
end

if str:find("buttonClicked|socialportal") then
        SendPacket(2,"action|dialog_return\ndialog_name|social\nbuttonClicked|back")
        return true
    end
    return false
    end

function var(var) 
if var.v1:find("OnConsoleMessage") and var.v2:find("World Locked") then
SendVariant({
	v0 = "OnAddNotification",
	v1 = "interface/atomic_button.rttex",
	v2 = "`bDiscord `2@`^T`2a`^c`2k`^l`2e`^V`2a`^n",
	v3 = "audio/hub_open.wav"
})
end

if var.v1:find("OnConsoleMessage") and var.v2:find("World Locked") then
SendPacket(2,"action|input\n|text|`2P`^r`2o`^x`2y `^M`2a`^d`2e `^b`2y `b@Tackle")
Sleep(1000) 
SendPacket(2,"action|input\n|text|`bDiscord `0@TackleVan") 
end

if var.v1:find("OnConsoleMessage") and var.v2:find("spun the wheel") then
ProxyLog("`2(`^R`2E`^A`2L`^) "..var.v2)
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
SendPacket(2,"action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2T`^o`2o`^k `0"..jumlah.." `9World Lock")
end
if var.v1:find("OnConsoleMessage") and var.v2:find("oCollected") and var.v2:find("Diamond") then
jumlah = var.v2:match("(%d+)")
SendPacket(2,"action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2T`^o`2o`^k `0"..jumlah.." `1Diamond Lock")
end
if var.v1:find("OnConsoleMessage") and var.v2:find("oCollected") and var.v2:find("Blue Gem") then
jumlah = var.v2:match("(%d+)")
SendPacket(2,"action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2T`^o`2o`^k `0"..jumlah.." `eBlue Gem Lock")
end
if var.v1:find("OnConsoleMessage") and var.v2:find("oCollected") and var.v2:find("Black Gem") then
jumlah = var.v2:match("(%d+)")
SendPacket(2,"action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2T`^o`2o`^k `0"..jumlah.." `bBlack Gem Lock")
end
end

if var.v1:find("OnKill") then
SendPacket(2,"action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2Y`^o`2u`^'`2r`^e `4dead.")
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
SendPacket(2,"action|input\n|text|`0[ `2@`^T`2a`^c`2k`^l`2e `0] `2C`^o`2n`^v`2e`^r`2t`^e`2d `^t`2o `eBlue Gem Lock")
return true
end
end

if var.v1 == "OnTalkBubble" and var.v3:find("spun the wheel") and var.v3:find("<") and var.v3:find(">") then
SendVariant({v0 = var.v1, v1 = var.v2, v2 = var.v3.." `2(`^F`2A`^K2^E`^)", v3 = var.v4})
return true
end

if var.v1:find("OnTalkBubble") and var.v3:find("spun the wheel") then 
if reme == true or qeme == true then
local num = string.gsub(string.gsub(var.v3:match("and got (.+)"), "!%]", ""), "`", "")
local onlynumber = string.sub(num, 2)
local clearspace = string.gsub(onlynumber, " ", "")
local h = string.gsub(string.gsub(clearspace, "!7", ""), "]", "")
SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`2(`^R`2E`^A`2L`^) "..var.v3.." "..getGame(tonumber(h)), v3 = var.v4})
return true
end
end

if var.v1:find("OnTalkBubble") and var.v3:find("spun the wheel") then
SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`2(`^R`2E`^A`2L`^) "..var.v3, v3 = var.v4})
return true
end
return false
end

AddHook(Hook, "OnSendPacket") 
AddHook(var, "OnVariant") 
SendPacket(2, "action|input\n|text|`2H`^e`2l`^l`2o, "..GetLocal().name.."|")
Sleep(1000) 
SendPacket(2, "action|input\n|text|`2P`^r`2o`^x`2y `^M`2a`^d`2e `^b`2y `b@Tackle")
Sleep(1000)
SendPacket(2, "action|input\n|text|`2F`^r`2e`^e `2P`^r`2o`^x`2y `bDiscord `0@TackleVan")
SendVariant({v0 = "OnDialogRequest", v1 = opening })