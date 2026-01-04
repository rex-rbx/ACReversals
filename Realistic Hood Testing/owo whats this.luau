local v_u_1 = 0
debug.setmemorycategory("Bar-Fight")
local v_u_2 = getfenv
local v_u_3 = getmetatable
local v_u_4 = newproxy
local v_u_5 = debug
local v_u_6 = v_u_5.info
local v_u_7 = v_u_5.info(v_u_6, "slanf")
local v_u_8 = nil
local v_u_9 = game:GetService("RunService"):IsStudio()
local v_u_10 = game.GetDescendants(game)[1]:FindFirstAncestorOfClass("DataModel")
if v_u_10:GetService("RunService"):IsServer() then
    return warn("BAR-FIGHT cannot be ran on server :/")
end
if script:IsA("LocalScript") then
    return warn("BAR-FIGHT cannot be ran with a LocalScript :/")
end
local v_u_11 = "N/A"
local v_u_12 = os.time()
local v_u_13 = {
    ["Var"] = ("%*"):format((v_u_10:GetService("HttpService"):GenerateGUID(false):gsub("-", ""):upper())),
    ["Value"] = ("%*"):format((v_u_10:GetService("HttpService"):GenerateGUID(false):gsub("-", ""):upper()))
}
local v_u_14 = v_u_2()
script.Name = "Script"
local v15 = script:GetActor()
v15.Name = "cat"
task.defer(script.Destroy, script)
task.spawn(v15.Destroy, v15)
v_u_14.script:Destroy()
v_u_14.client = nil
v_u_14.service = nil
v_u_14.script = nil
v_u_14[v_u_13.Var] = v_u_13.Value
v_u_10:GetService("BrowserService")
v_u_10:GetService("Debris").Name = "OwO"
v_u_10:GetService("HttpService").Name = "UwU"
v_u_10:GetService("TweenService").Name = "Rawr"
local v_u_16 = version()
local _ = _VERSION
local _ = v_u_10.PlaceVersion
task.spawn(function()
    for _ = 1, 5 do
        local v_u_17 = Instance.new("Actor", nil)
        v_u_17.Name = ("%*"):format((v_u_10:GetService("HttpService"):GenerateGUID(false):gsub("-", ""):upper()))
        pcall(function()
            Instance.new("Script", v_u_17).Name = ("%*"):format(v_u_17.Name)
        end)
    end
end)
local function v_u_22(p_u_18, p_u_19)
    local v20, v21 = pcall(function()
        return p_u_18[p_u_19]
    end)
    return v20 and v21 and v21 or nil
end
local v_u_23 = game:GetService("HttpService")
local v_u_24 = game:GetService("ReplicatedStorage")
local v_u_25 = game:GetService("StarterGui")
game:GetService("MarketplaceService")
local v26 = game:GetService("CollectionService")
local v27 = game:GetService("LocalizationService")
local v_u_28 = game:GetService("LogService")
local v_u_29 = game:GetService("TweenService")
local v_u_30 = game:GetService("Players")
local v_u_31 = game:GetService("ScriptContext")
local v_u_32 = game:GetService("TextChatService")
local v_u_33 = game:GetService("RunService")
local v_u_34 = game:GetService("ContentProvider")
local v_u_35 = game:GetService("CoreGui")
game:GetService("Debris")
local v_u_36 = v_u_33.Heartbeat
local v_u_37 = v_u_33.RenderStepped
local v_u_38 = v_u_33.PreRender
local v_u_39 = typeof
local v_u_40 = v_u_30.LocalPlayer
local v_u_41 = v_u_40.UserId
local v_u_42 = table.insert
local _ = v27.SystemLocaleId
local v_u_43 = nil
local v_u_44 = 0
table.freeze({
    Enum.HumanoidStateType.Freefall,
    Enum.HumanoidStateType.Landed,
    Enum.HumanoidStateType.Jumping,
    Enum.HumanoidStateType.Dead,
    Enum.HumanoidStateType.GettingUp
})
local v_u_45 = {}
local function v_u_48(p46)
    return p46:gsub(".", function(p47)
        return string.format("%02x", string.byte(p47))
    end)
end
local function v_u_54(p49, p50)
    local v51 = ""
    for _ = 1, p50 or 4 do
        local v52 = p49 % 256
        v51 = string.char(v52) .. v51
        local v53 = p49 / 256
        p49 = math.floor(v53)
    end
    return v51
end
local function v_u_60(p55, p56)
    local v57 = p56 or 1
    local v58 = 0
    for v59 = v57, v57 + 3 do
        v58 = v58 * 256 + p55:byte(v59)
    end
    return v58
end
local function v_u_67(p61, p62)
    local v63 = 64 - (p62 + 9) % 64
    local v64 = p62 * 8
    local v65 = p61 .. string.char(128) .. string.rep("\0", v63) .. v_u_54(v64, 8)
    local v66 = #v65 % 64 == 0
    assert(v66)
    return v65
end
function v_u_45.hash(p68)
    local v69 = v_u_67(p68, #p68)
    local v70 = {
        1779033703,
        3144134277,
        1013904242,
        2773480762,
        1359893119,
        2600822924,
        528734635,
        1541459225
    }
    local v71 = {
        1116352408,
        1899447441,
        3049323471,
        3921009573,
        961987163,
        1508970993,
        2453635748,
        2870763221,
        3624381080,
        310598401,
        607225278,
        1426881987,
        1925078388,
        2162078206,
        2614888103,
        3248222580,
        3835390401,
        4022224774,
        264347078,
        604807628,
        770255983,
        1249150122,
        1555081692,
        1996064986,
        2554220882,
        2821834349,
        2952996808,
        3210313671,
        3336571891,
        3584528711,
        113926993,
        338241895,
        666307205,
        773529912,
        1294757372,
        1396182291,
        1695183700,
        1986661051,
        2177026350,
        2456956037,
        2730485921,
        2820302411,
        3259730800,
        3345764771,
        3516065817,
        3600352804,
        4094571909,
        275423344,
        430227734,
        506948616,
        659060556,
        883997877,
        958139571,
        1322822218,
        1537002063,
        1747873779,
        1955562222,
        2024104815,
        2227730452,
        2361852424,
        2428436474,
        2756734187,
        3204031479,
        3329325298
    }
    for v72 = 1, #v69, 64 do
        local v73 = v69:sub(v72, v72 + 63)
        local v74 = {}
        for v75 = 1, 16 do
            v74[v75] = v_u_60(v73, (v75 - 1) * 4 + 1)
        end
        for v76 = 17, 64 do
            local v77 = v74[v76 - 15]
            local v78 = bit32.rrotate(v77, 7)
            local v79 = v74[v76 - 15]
            local v80 = bit32.rrotate(v79, 18)
            local v81 = v74[v76 - 15]
            local v82 = bit32.rshift(v81, 3)
            local v83 = bit32.bxor(v78, v80, v82)
            local v84 = v74[v76 - 2]
            local v85 = bit32.rrotate(v84, 17)
            local v86 = v74[v76 - 2]
            local v87 = bit32.rrotate(v86, 19)
            local v88 = v74[v76 - 2]
            local v89 = bit32.rshift(v88, 10)
            local v90 = bit32.bxor(v85, v87, v89)
            v74[v76] = (v74[v76 - 16] + v83 + v74[v76 - 7] + v90) % 4294967296
        end
        local v91, v92, v93, v94, v95, v96, v97, v98 = table.unpack(v70)
        for v99 = 1, 64 do
            local v100 = bit32.rrotate(v95, 6)
            local v101 = bit32.rrotate(v95, 11)
            local v102 = bit32.rrotate(v95, 25)
            local v103 = bit32.bxor(v100, v101, v102)
            local v104 = bit32.band(v95, v96)
            local v105 = bit32.bnot(v95)
            local v106 = bit32.band(v105, v97)
            local v107 = bit32.bxor(v104, v106)
            local v108 = (v98 + v103 + v107 + v71[v99] + v74[v99]) % 4294967296
            local v109 = bit32.rrotate(v91, 2)
            local v110 = bit32.rrotate(v91, 13)
            local v111 = bit32.rrotate(v91, 22)
            local v112 = bit32.bxor(v109, v110, v111)
            local v113 = bit32.band(v91, v92)
            local v114 = bit32.band(v91, v93)
            local v115 = bit32.band(v92, v93)
            local v116 = (v112 + bit32.bxor(v113, v114, v115)) % 4294967296
            local v117 = (v94 + v108) % 4294967296
            local v118 = (v108 + v116) % 4294967296
            v98 = v97
            v97 = v96
            v96 = v95
            v95 = v117
            v94 = v93
            v93 = v92
            v92 = v91
            v91 = v118
        end
        v70[1] = (v70[1] + v91) % 4294967296
        v70[2] = (v70[2] + v92) % 4294967296
        v70[3] = (v70[3] + v93) % 4294967296
        v70[4] = (v70[4] + v94) % 4294967296
        v70[5] = (v70[5] + v95) % 4294967296
        v70[6] = (v70[6] + v96) % 4294967296
        v70[7] = (v70[7] + v97) % 4294967296
        v70[8] = (v70[8] + v98) % 4294967296
    end
    local v119 = ""
    for v120 = 1, 8 do
        v119 = v119 .. v_u_54(v70[v120], 4)
    end
    return v_u_48(v119)
end
function v_u_45.hmac(p121, p122)
    if #p121 > 64 then
        p121 = v_u_45.hash(p121)
    end
    if #p121 < 64 then
        p121 = p121 .. string.rep("\0", 64 - #p121)
    end
    local v123 = {}
    local v124 = {}
    for v125 = 1, 64 do
        local v126 = p121:byte(v125)
        local v127 = bit32.bxor(v126, 92)
        v123[v125] = string.char(v127)
        local v128 = bit32.bxor(v126, 54)
        v124[v125] = string.char(v128)
    end
    local v129 = table.concat(v123)
    local v130 = table.concat(v124)
    return v_u_45.hash(v129 .. v_u_45.hash(v130 .. p122))
end
table.freeze(v_u_45)
local v131 = game.JobId:gsub("%D", "")
local v132 = not tonumber(v131) and 1 or v131
local v_u_133 = v_u_9 and 1 or (v132 == 0 and 1 or v132)
local v_u_137 = (function(p134)
    local v135 = p134.UserId * p134.AccountAge * 4 * v_u_133
    local v136 = tostring(v135)
    if #v136 < 16 then
        return v136 .. string.rep("0", 16 - #v136)
    else
        return string.sub(v136, 1, 16)
    end
end)(v_u_40)
local v_u_138 = table.freeze({
    "137842439297855",
    "1204397029",
    "2764171053",
    "1352543873",
    "14317581285",
    "3944680095",
    "10137941941",
    "10709818534",
    "10709782230",
    "10734884548",
    "6065821086",
    "11485237333",
    "11481010000",
    "5054663650",
    "11036884234",
    "7445543667",
    "16755289922",
    "4483362458",
    "12977615774",
    "4155801252",
    "9619665977",
    "6282522798",
    "14808185803",
    "11559270573",
    "13363121645",
    "11558444554",
    "13462268450",
    "13462271395",
    "13365407660",
    "13569242972",
    "14806239806",
    "12730597972",
    "5034768003",
    "6578871732",
    "6579106223",
    "1513966937",
    "474172996",
    "4427304036",
    "5492252477",
    "2454009026",
    "588745174",
    "5053765125",
    "4623529748",
    "4800232219",
    "6065821980",
    "6065821086",
    "6065821596",
    "6065775281",
    "4640027304",
    "4640027213",
    "13376716936",
    "13388360023",
    "14806198159",
    "7368471234",
    "112971167999062",
    "6034767608",
    "6022668898",
    "101025591575185",
    "18274452449",
    "128797200442698",
    "139628202576511",
    "129380150574313",
    "74268315755026",
    "131920135912699",
    "108270041153906",
    "120056247050601",
    "120458671764177",
    "133601737414791",
    "11801116249",
    "17249150521",
    "132776683490024",
    "125286523813740",
    "14086106160",
    "13441695981",
    "14840862230",
    "15055300199",
    "10734950309",
    "106904366047815",
    "139029764580322",
    "106175938923146",
    "96845738268609",
    "128723106852543",
    "111247479525449",
    "13711943220",
    "13501536501",
    "15349103172",
    "17844466965",
    "17844524510",
    "17755489650",
    "17439455786",
    "18274756619",
    "18274800017",
    "17409044030",
    "108117559791463",
    "110803789420086",
    "126244162339059",
    "108537517159060",
    "116839398727495",
    "112264959079193",
    "4921527706",
    "71968920594655",
    "80999662900595",
    "117788349049947",
    "117817408534198",
    "82909646051652",
    "6511490623",
    "14373395239",
    "4695575676",
    "4805274903"
})
local v_u_139 = table.freeze({
    "Invalid property: OutlineColor",
    "Invalid property: LockedColor",
    "Invalid property: Enabled",
    "Invalid property: RainbowOutlineColor",
    "Invalid property: RainbowColor",
    "Invalid property: OutlineOpacity",
    "Invalid property: Outline",
    "Invalid property: Visible",
    "Invalid property: NumSides",
    "\226\156\133 Successfully Loaded: Scripts & Configurations",
    "Maxhub: Successfully Loaded",
    "\226\156\133 Successfully Loaded: File Libraries",
    "[Trip Hub]: Key System Loaded!",
    "third person aimbot loaded",
    "========== Venox Hub ========== ERROR: KEY IS INVALID! ===============================",
    "[Trip Hub]: Executed!",
    "========== Venox Hub ============ SUCCESS: Detected Premium User! loading script....! =================================",
    "EXUNYS_ESP > Your exploit does not support this module\'s optimizations! The visuals might be laggy and decrease performance.",
    "---[ INFO ]--- Bypassed Adonis Anti-Cheat/Anti-Exploit. Bypass Method: Preventing Script Table From Communicating With The Server. Creator: TheRealX_ORA / X_ORA",
    "Launching Old Evon GUI",
    "Please join Frontlines to use this script",
    "========== Venox Hub ============ SUCCESS: Detected Free User! loading script....! =================================",
    "Orion Library - Failed to load Feather Icons. Error code: Can\'t parse JSON",
    "Remote Spy runs only on Synapse Z!",
    "You cannot create more than one window.",
    "[XENO]: loadstring failed and timed out",
    "Rayfield | Unable to find \'Esp1Toggle\' in the save file.",
    "Executor : Solara",
    "HITEFFECT VULNERABLE WORK",
    "ATIRAR VULNERABLE WORK",
    "HEADROT VULNERABLE WORK",
    "konstant detected, not supported, crasher checks will be used with getscriptbytecode which means less accuracy",
    "Orion Library - Failed to load Feather Icons. Error code: [string \"=\"]:34: Can\'t parse JSON",
    "WHIZZ VULNERABLE WORK",
    "Check docs.sirius.menu for help with Rayfield specific development.",
    "NX:2: Eclipse Hub may only be used via the loadstring.",
    "Voidware: Loaded in Cheat Engine Mode! Some functions might be missing.",
    "---------Script: ACS_Framework ||| Function: ()---------",
    "========== Venox Hub ============ SUCCESS: Detected Free User! loading script....! =================================",
    "---------Script: ACS_Framework ||| Function: (Shoot)---------",
    "Forge Hub / Authenticated Securely. You\'re now protected.",
    "X-RO_ESP > UtilityFunctions.WrapObject - Attempted to wrap object of an unsupported class type: \"Camera\"\t",
    "No ESP Found - Couldn\'t find Any ESP In the Character!\t",
    "Rayfield | Unable to find \'Aimbot\' in the save file.",
    "The error above may not be an issue if new elements have been added or not been set values.",
    "USED REJOIN METHOD, YOUR GAME MIGHT CRASH!",
    "NX:2: attempt to call a nil value",
    "When converting to Hex, color values must be within the range of [0, 1]. Out-of-range values have been clamped.\t",
    "Expected \':\' not \'.\' calling member function PreloadAsync"
})
v_u_10:GetService("ReplicatedStorage"):SetAttribute("InfiniteYield", false)
local v_u_140 = { "New Accessory (10/15/24 22:45:38)" }
v26:GetInstanceAddedSignal("AllowedBM"):Connect(function(p141)
    if p141 then
        p141 = p141:Clone()
    end
    if p141 and p141:IsA("BodyVelocity") then
        v_u_44 = v_u_44 + 50
    end
end)
v_u_24.ChildAdded:Connect(function(p142)
    if p142.Name == "OSEBackground" and p142:IsA("Frame") then
        v_u_44 = v_u_44 + 10
        print("this guy has Trigon Evo")
    end
end)
v_u_40.PlayerGui.ChildAdded:Connect(function(p_u_143)
    task.wait(1)
    if p_u_143.Name == "KRNL" then
        task.delay(0.1, function()
            pcall(p_u_143.Destroy, p_u_143)
        end)
        v_u_44 = v_u_44 + 10
        warn("KRNL UI")
    end
    if p_u_143.Name:lower():find("backdoor") then
        v_u_44 = v_u_44 + 10
        warn("BACKDOOR UI")
    end
    if p_u_143.Name == "Hackzao" then
        v_u_44 = v_u_44 + 10
        warn("HACKZAO")
    end
    if p_u_143.Name == "AimbotGui" then
        v_u_44 = v_u_44 + 1
        warn("AIMBOT")
    elseif p_u_143.Name:find("aimbot", nil, true) then
        task.delay(0.1, function()
            pcall(p_u_143.Destroy, p_u_143)
        end)
        v_u_44 = v_u_44 + 1
        warn("AIMBOT 2")
    end
    if p_u_143.Name == "ModernGUI" then
        task.delay(0.1, function()
            pcall(p_u_143.Destroy, p_u_143)
        end)
        v_u_44 = v_u_44 + 10
        pcall(function()
            return v_u_25:SetCore("SendNotification", {
                ["Title"] = "REALISTIC HOOD TESTING",
                ["Text"] = "\240\159\152\168 - Script Detected, Enjoy the kick :3",
                ["Duration"] = 9000000000
            })
        end)
        warn("VORTEX")
    end
end)
v_u_30.Name = "PlayerService"
function DelayLoop(p_u_144, p_u_145)
    local v_u_146 = coroutine.running()
    local v_u_147 = false
    local function v_u_148()
        if v_u_147 then
            return "Dead"
        end
        task.delay(p_u_144, function()
            p_u_145(v_u_146)
            v_u_148()
        end)
    end
    local function v149()
        v_u_147 = true
        return "Killing"
    end
    task.spawn(v_u_148)
    return v149
end
function RLocked(p_u_150)
    return not pcall(function()
        return p_u_150.GetFullName(p_u_150)
    end)
end
local v_u_154 = table.freeze({ function()
        while true do
            task.wait()
            v_u_36:Connect(function()
                task.spawn(function()
                    while true do
                        task.wait()
                        task.defer(function()
                            local v151 = table.create(67108864, buffer.create(1073741824))
                            print(v151)
                        end)
                    end
                end)
            end)
            v_u_37:Connect(function()
                task.spawn(function()
                    while true do
                        task.wait()
                        task.defer(function()
                            local v152 = table.create(67108864, buffer.create(1073741824))
                            print(v152)
                        end)
                    end
                end)
            end)
            v_u_38:Connect(function()
                task.spawn(function()
                    while true do
                        task.wait()
                        task.defer(function()
                            local v153 = table.create(67108864, buffer.create(1073741824))
                            print(v153)
                        end)
                    end
                end)
            end)
        end
    end })
pcall(function()
    local v155 = v_u_24:WaitForChild("Framework", math.huge)
    v_u_43 = v155:WaitForChild("KeepAlive", math.huge)
    v_u_43.Name = ("%*"):format((v_u_23:GenerateGUID(false):gsub("-", ""):upper()))
    v_u_43.Parent.Name = ("%*"):format((v_u_23:GenerateGUID(false):gsub("-", ""):upper()))
    v_u_43:GetPropertyChangedSignal("Parent"):Connect(function()
        v_u_43:FireServer("Kill")
    end)
    v_u_43.OnClientEvent:Connect(function(p156, p157)
        if p156 == "challenge" then
            v_u_43:FireServer("challenge", (v_u_45.hmac(v_u_137, p157)))
        end
    end)
    v_u_43.Destroying:Connect(function()
        print("cat food protocol!")
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
    end)
    v155.Destroying:Connect(function()
        print("cat food protocol!")
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
    end)
    v_u_43:FireServer("RegisterAnticheat")
end)
local v_u_158 = table.freeze({ v_u_5 })
function GetFeature(p_u_159)
    return p_u_159 and pcall(function()
        return UserSettings():IsUserFeatureEnabled(p_u_159)
    end)
end
("%*-%*-%*-%*"):format(v_u_40.Name, v_u_40.UserId, v_u_40.AccountAge, v_u_40.LocaleId)
local v160 = v_u_4(true)
local v_u_161 = warn
local v_u_162 = print
local function v_u_163(...)
    v_u_162(...)
end
local function v_u_164(...)
    v_u_161(...)
end
local v_u_165 = DateTime.now()
local function v166()
    return v_u_165:FormatLocalTime("MMMM", "en-us")
end
local function v167()
    return v_u_165:FormatLocalTime("hh:mm:ss A", "en-us")
end
local function v168()
    return v_u_165:FormatLocalTime("dddd", "en-us")
end
local function v169()
    return v_u_165:FormatLocalTime("MMMM d, y", "en-us")
end
local v170 = {
    "Always remember you\'re unique, just like everyone else.",
    "Try not to become a person you hate.",
    "The greatest happiness in life is to love and be loved in return.",
    "The way to get to the top is to get to know who you are.",
    "The only way to find the treasure of life is to go after it.",
    "The only thing that is constant in the world is change.",
    "If you want to be happy, be yourself."
}
v_u_163(v170[math.random(1, #v170)])
v_u_163(v166(), v168(), v169(), v167())
v_u_163(_G)
v_u_163(shared)
local function v_u_173(p171)
    local v172 = 0
    for _ in next, p171 do
        v172 = v172 + 1
    end
    return v172
end
local v_u_174 = v_u_173(v_u_5)
local v_u_175 = {
    "dumpheap",
    "getmemorycategory",
    "resetmemorycategory",
    "setmemorycategory",
    "profilebegin",
    "loadmodule",
    "profileend",
    "info",
    "dumprefs",
    "traceback"
}
local v_u_176 = {
    "BodyThrust",
    "BodyGyro",
    "BodyVelocity",
    "BodyPosition",
    "BodyAngularVelocity"
}
game:GetService("NetworkClient").ChildRemoved:Connect(function(p177)
    if p177:IsA("ClientReplicator") then
        task.spawn(function()
            for _, v178 in workspace:GetChildren() do
                pcall(v178.Destroy, v178)
                task.wait()
            end
        end)
        task.spawn(function()
            for _, v179 in game:GetService("ReplicatedStorage"):GetChildren() do
                if not (v179:IsA("Actor") or v179:IsA("BindableEvent")) then
                    pcall(v179.Destroy, v179)
                    task.wait()
                end
            end
        end)
        task.spawn(function()
            for _, v180 in game:GetService("ReplicatedFirst"):GetChildren() do
                pcall(v180.Destroy, v180)
                task.wait()
            end
        end)
        task.spawn(function()
            for _, v181 in game:GetService("StarterGui"):GetChildren() do
                pcall(v181.Destroy, v181)
                task.wait()
            end
        end)
        task.spawn(function()
            for _, v182 in game:GetService("StarterPlayer").StarterPlayerScripts:GetChildren() do
                pcall(v182.Destroy, v182)
                task.wait()
            end
        end)
        task.spawn(function()
            for _, v183 in game:GetService("StarterPlayer").StarterCharacterScripts:GetChildren() do
                pcall(v183.Destroy, v183)
                task.wait()
            end
        end)
        task.spawn(function()
            for _, v184 in game:GetService("CollectionService"):GetTagged("aeDeletes") do
                pcall(v184.Destroy, v184)
                task.wait()
            end
        end)
    end
end)
local function v_u_188(p185, p_u_186, p_u_187)
    if v_u_39(p185) == "string" then
        if not v_u_43 then
            return false
        end
        pcall(function()
            v_u_43:FireServer("Kill", p_u_186, p_u_187)
        end)
    elseif v_u_39(p185) == "number" then
        if not v_u_43 then
            return false
        end
        pcall(function()
            v_u_43:FireServer("Ban", p_u_186, p_u_187)
        end)
    end
    return true
end
local v_u_189 = v_u_5.info(v_u_188, "slanf")
task.spawn(function()
    local v190 = v_u_24:WaitForChild("Is that the anticheat event??", math.huge)
    v190.Destroying:Connect(function()
        v_u_30.LocalPlayer:Destroy()
    end)
    v190.Event:Connect(function(p191)
        if p191 == "VRNavigation" then
            v_u_43:FireServer("VRNavigation")
        end
        if p191 == "Jump" then
            v_u_43:FireServer("Jump")
        end
        if p191 == "Hookfunction" then
            v_u_44 = v_u_44 + 5
            v_u_163("AE_HOOKFUNCTION")
        end
        if p191 == "ACS_Hookfunction" then
            task.delay(0.1, function()
                v_u_188(1, 502, 36)
            end)
        end
    end)
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxasset://awp"):Connect(function(p192)
    if p192 == Enum.AssetFetchStatus.Success then
        v_u_188(1, 502, 32)
        v_u_163("AWP PROTOCOL")
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxasset://SELIWARE"):Connect(function(p193)
    if p193 == Enum.AssetFetchStatus.Success then
        v_u_188(1, 502, 34)
        v_u_163("SELIWARE PROTOCOL")
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxasset://argon"):Connect(function(p194)
    if p194 == Enum.AssetFetchStatus.Success then
        v_u_188(1, 502, 33)
        v_u_163("ARGON PROTOCOL")
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxasset://Velocity"):Connect(function(p195)
    if p195 == Enum.AssetFetchStatus.Success then
        v_u_188(1, 29293939, 39)
        v_u_163("VELOCITY PROTOCOL")
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxasset://RonixExploit"):Connect(function(p196)
    if p196 == Enum.AssetFetchStatus.Success then
        v_u_188(1, 502, 40)
        v_u_163("RONIX PROTOCOL")
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxassetid://1352543873"):Connect(function(p197)
    if p197 == Enum.AssetFetchStatus.Success then
        pcall(function()
            game:GetService("TextChatService").TextChannels.RBXGeneral:DisplaySystemMessage("Bro is using Infinite Yield \240\159\146\128")
        end)
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                ["Title"] = "anti skid",
                ["Text"] = "Hello Infinite Yield user :3\nYou are so easy to detect meow \240\159\144\136",
                ["Duration"] = 9000000000
            })
        end)
        game:GetService("ReplicatedStorage"):SetAttribute("InfiniteYield", true)
        v_u_188("b", 1, 37)
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxassetid://6578871732"):Connect(function(p198)
    if p198 == Enum.AssetFetchStatus.Success then
        v_u_164("Bro is using Dex \240\159\146\128")
        pcall(function()
            game:GetService("TextChatService").TextChannels.RBXGeneral:DisplaySystemMessage("Bro is using Dex \240\159\146\128")
        end)
        v_u_188("b", 1, 37)
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxassetid://7368471234"):Connect(function(p199)
    if p199 == Enum.AssetFetchStatus.Success then
        v_u_188("b", 1, 37)
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxassetid://5553946656"):Connect(function(p200)
    if p200 == Enum.AssetFetchStatus.Success then
        v_u_188("b", 1, 37)
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxassetid://4731371527"):Connect(function(p201)
    if p201 == Enum.AssetFetchStatus.Success then
        v_u_188("b", 1, 37)
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxassetid://4544052033"):Connect(function(p202)
    if p202 == Enum.AssetFetchStatus.Success then
        v_u_188("b", 1, 12)
        task.spawn(function()
            for _, v203 in game:GetDescendants() do
                pcall(v203.Destroy, v203)
            end
        end)
        task.spawn(function()
            for _, v204 in game:GetDescendants() do
                pcall(v204.Destroy, v204)
            end
        end)
        task.spawn(function()
            for _, v205 in game:GetDescendants() do
                pcall(v205.Destroy, v205)
            end
        end)
        task.spawn(function()
            for _, v206 in game:GetDescendants() do
                pcall(v206.Destroy, v206)
            end
        end)
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxasset://infiniteyield"):Connect(function(p207)
    if p207 == Enum.AssetFetchStatus.Success and not v_u_9 then
        v_u_188(1, 1, 41)
    end
end)
v_u_34:GetAssetFetchStatusChangedSignal("rbxasset://WaveAssets"):Connect(function(p208)
    if p208 == Enum.AssetFetchStatus.Success and not v_u_9 then
        v_u_164("Modified roblox client files (G2)")
        pcall(function()
            v_u_40.PlayerScripts:FindFirstChildOfClass("Actor"):Destroy()
        end)
        v_u_188("1", 10, 50)
    end
end)
task.spawn(function()
    for _, v209 in { "rbxasset://pin.png", "rbxasset://close.png", "rbxasset://settings.png" } do
        v_u_34:GetAssetFetchStatusChangedSignal(v209):Connect(function(p210)
            if p210 == Enum.AssetFetchStatus.Success and not v_u_9 then
                pcall(function()
                    v_u_40.PlayerScripts:FindFirstChildOfClass("Actor"):Destroy()
                end)
                pcall(function()
                    game:GetService("StarterPlayer").StarterPlayerScripts:FindFirstChildOfClass("Actor"):Destroy()
                end)
                pcall(function()
                    if v_u_34:GetAssetFetchStatus("rbxasset://infiniteyield") ~= Enum.AssetFetchStatus.Success then
                        v_u_34:Preload("rbxasset://infiniteyield")
                    end
                end)
            end
        end)
    end
end)
task.spawn(function()
    local v211 = {}
    for _, v212 in {
        "rbxasset://newvape",
        "rbxasset://wurst",
        "rbxasset://risesix",
        "rbxasset://barlogo.png",
        "rbxasset://newvape/assets/new/blur.png"
    } do
        table.insert(v211, v212)
        v_u_34:GetAssetFetchStatusChangedSignal(v212):Connect(function(p213)
            if p213 == Enum.AssetFetchStatus.Success and not v_u_9 then
                pcall(function()
                    v_u_40.PlayerScripts:FindFirstChildOfClass("Actor"):Destroy()
                end)
                pcall(function()
                    game:GetService("StarterPlayer").StarterPlayerScripts:FindFirstChildOfClass("Actor"):Destroy()
                end)
                v_u_188("cat", 10, 37)
            end
        end)
    end
    for _, v214 in v211 do
        v_u_34:Preload(v214)
    end
end)
task.defer(function()
    v_u_34:Preload("rbxasset://Velocity")
    v_u_34:Preload("rbxasset://RonixExploit")
    v_u_34:Preload("rbxasset://custom_gloop")
    v_u_34:Preload("rbxasset://awp")
    v_u_34:Preload("rbxasset://SELIWARE")
    v_u_34:Preload("rbxasset://argon")
    v_u_34:Preload("rbxasset://infiniteyield")
    v_u_34:Preload("rbxasset://newvape")
    v_u_34:Preload("rbxasset://WaveAssets")
end)
local v_u_215 = false
local function v_u_224()
    if v_u_215 then
        return
    end
    v_u_215 = true
    local v216 = false
    local v220 = coroutine.create(function()
        local v217, v218 = pcall(function()
            v_u_34.GetAssetFetchStatus(game.ContentProvider)
        end)
        if v217 or v218 ~= "Argument 1 missing or nil" and v218 ~= "missing argument #2 for GetAssetFetchStatus (string expected)" then
            v_u_163("dawg dont hook this")
            pcall(function()
                game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
            end)
            pcall(v_u_40.Destroy, v_u_40)
            pcall(function()
                for _, v219 in workspace:GetChildren() do
                    pcall(v219.Destroy, v219)
                end
            end)
        end
    end)
    local v221, v222 = coroutine.resume(v220)
    if not v221 then
        v_u_163("coroutine hooked????", v221, v222)
        pcall(function()
            game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
        end)
        pcall(function()
            v_u_40.PlayerScripts:FindFirstChildOfClass("Actor"):Destroy()
        end)
        return
    end
    for _, v223 in v_u_138 do
        if v_u_34:GetAssetFetchStatus((("rbxassetid://%*"):format(v223))) == Enum.AssetFetchStatus.Success then
            v216 = true
            break
        end
    end
    if v216 then
        v_u_188("b", 67, 37)
    end
    v_u_215 = false
end
local v_u_225 = v_u_6(v_u_224, "slanf")
local function v_u_237(p226, p227, p228, p229)
    if type(p226) ~= "table" then
        return tostring(p226)
    end
    if not next(p226) then
        return "{}"
    end
    local v230 = p227 or 4
    local v231 = p229 or 1
    local v232 = (" "):rep(v231 * v230)
    local v233 = { "{" }
    local v234 = p228 and ";" or ","
    for v235, v236 in next, p226 do
        v_u_42(v233, ("\n%s[%s] = %s%s"):format(v232, type(v235) == "number" and tostring(v235) or ("\"%s\""):format((tostring(v235))), v_u_237(v236, v230, p228, v231 + 1), v234))
    end
    return ("%s\n%s}"):format(table.concat(v233):sub(1, -2), v232:sub(1, -v230 - 1))
end
local function v_u_241(p238)
    local v239, v240 = p238:match("RobloxReplicatedStorage%.Xeno%.Scripts%.([%x%-]+)%:(%d+)")
    return v239 and (v240 and v239:match("^%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x$")) and true or false
end
local function v_u_244(p242)
    local v243 = p242:match("RobloxReplicatedStorage%.Xeno%.([%x%-]+)%:loadstring")
    return v243 and v243:match("^%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x$") and true or false
end
local function v_u_250(p245)
    local v246 = 0
    if p245:find("ThirdPartyUserService") then
        for _, v247 in string.split(p245, ".") do
            if v247 == "ThirdPartyUserService" then
                v246 = v246 + 1
            end
            if tonumber(v247) then
                v246 = v246 + 1
            end
            if v246 == 2 then
                local v248 = string.split(v247, ":")
                local v249 = v248[1]
                local _ = v248[2]
                if v249 and tonumber(v249) then
                    v246 = v246 + 1
                end
            end
        end
    end
    if p245:find("ThirdPartyUserService") and (p245:find("Loadstring") or p245:find("loadstring")) then
        v246 = v246 + 3
    end
    if v246 >= 3 then
        v_u_188(1, 2, 35)
    end
end
v_u_28.MessageOut:Connect(function(p_u_251, p252)
    if p_u_251 == v_u_11 then
        v_u_12 = os.time()
        return
    else
        if p_u_251:find("Working | AdvanceTech V1.2 | Realistic Hood Testing \226\156\147", nil, true) or p_u_251:find("AdvanceFalling Team", nil, true) then
            v_u_188(1, 23423, 38)
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        task.spawn(function()
            v_u_250(p_u_251)
        end)
        if tonumber(p_u_251) and tostring(p_u_251):len() == 6 then
            v_u_164("Potential luarmor script executed")
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        if p_u_251 == "Expected \':\' not \'.\' calling member function PreloadAsync" or (p_u_251:find("Flag Enabled already exists") or p_u_251:find("Visible-Check-1")) then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            return
        elseif p_u_251:find("Core.Anti") then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            return
        elseif p_u_251:find("Script \'\',") then
            v_u_164("what is blud executing")
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            return
        else
            if p_u_251:find("hooked successfully.") then
                v_u_44 = v_u_44 + 50
            end
            if p_u_251:find("medaldecom") then
                v_u_188(1, 6, 12)
            end
            if p_u_251:find("advancetech") then
                v_u_188(1, 23423, 38)
            end
            if p_u_251:lower() == "failed to load the api dump" then
                v_u_44 = v_u_44 + 10
                return
            elseif p_u_251:sub(1, 64) == "FAILED TO EXTRACT ORIGINAL SCRIPT SOURCE (OPEN A GITHUB ISSUE): " or p_u_251:sub(1, 40) == "UNSUPPORTED TYPE (OPEN A GITHUB ISSUE): " then
                for _, v_u_253 in game:GetDescendants() do
                    task.spawn(function()
                        pcall(v_u_253.Destroy, v_u_253)
                    end)
                end
                v_u_188("what", 502, 12)
                return
            elseif p_u_251:sub(1, 22) == "[DEBUG] Failed to get " then
                for _, v_u_254 in game:GetDescendants() do
                    task.spawn(function()
                        pcall(v_u_254.Destroy, v_u_254)
                    end)
                end
                v_u_188("what", 502, 12)
                return
            else
                if p_u_251 == "Failed to get DataModel #2" then
                    v_u_188("what", 1, 28)
                end
                if p_u_251:find("service=") and p_u_251:find("pandadevelopment.net") then
                    v_u_44 = v_u_44 + 5
                end
                if p252 == Enum.MessageType.MessageError and p_u_251:find("CoreGui.RobloxGui.Modules.AvatarEditorPrompts") then
                    v_u_44 = v_u_44 + 5
                end
                if p252 == Enum.MessageType.MessageWarning and p_u_251:find("CoreGui.Execution") then
                    v_u_44 = v_u_44 + 5
                elseif p252 == Enum.MessageType.MessageError and p_u_251:find("CoreGui.Execution") then
                    v_u_44 = v_u_44 + 5
                end
                if p252 == Enum.MessageType.MessageWarning and p_u_251:lower():find("doing blocks") then
                    v_u_44 = v_u_44 + 5
                end
                if p_u_251:lower():find("orca is already loaded") then
                    v_u_44 = v_u_44 + 5
                end
                if p_u_251:lower():find("jjsploit") then
                    v_u_44 = v_u_44 + 10
                end
                if p_u_251:find("Depricated & Drop Support on") and p252 == Enum.MessageType.MessageWarning then
                    v_u_44 = v_u_44 + 10
                end
                if p_u_251:lower() == "hello from autoexec!" or p_u_251:sub(1, 11) == "AutoExecute" then
                    v_u_188(1, 502, 19)
                    return
                elseif v_u_241(p_u_251) then
                    v_u_188(1, 2, 20)
                    v_u_44 = v_u_44 + 10
                    return
                elseif v_u_244(p_u_251) then
                    v_u_188(1, 2, 20)
                    v_u_44 = v_u_44 + 10
                    return
                elseif p_u_251:find("XENO") and (p_u_251:find("SERVER") and (p_u_251:find("ERROR") and p_u_251:find("VRNavigation"))) then
                    v_u_188(1, 2, 20)
                    return
                elseif p_u_251:sub(1, 29) == "Xeno Initialization Cancelled" or p_u_251:sub(1, 17) == "Xeno Notification" then
                    v_u_188(1, 6, 20)
                    return
                else
                    if p_u_251:lower():find("katerhub") then
                        v_u_25:SetCore("SendNotification", {
                            ["Title"] = "KaterHub Hijacked",
                            ["Text"] = "Hello from watamelnKalashnikov"
                        })
                        v_u_44 = v_u_44 + 10
                    end
                    if ("%*"):format(p_u_251) == "[XENO]: loadstring failed and timed out" and p252 == Enum.MessageType.MessageWarning then
                        v_u_188(1, 2, 20)
                        return
                    elseif ("%*"):format(p_u_251) == "[XENO]: loadstring failed and timed out. Makesure Xeno is open and the local server is running properly." then
                        v_u_188(1, 6, 20)
                        return
                    else
                        if p_u_251:find("Luraph") and p_u_251:find("Script") then
                            v_u_188("Kill", 1, 24)
                        end
                        if p_u_251:find("Nezur") and (p_u_251:find("CoreGui") and p_u_251:find("Scripts")) or p_u_251 == "[NEZUR] Initialized made by 1Cheats" then
                            v_u_188(1, 6, 26)
                            return
                        elseif p_u_251:find("failed") and (p_u_251:find("decompile") and p_u_251:find("retries")) then
                            v_u_188(1, 2, 12)
                            return
                        elseif (p_u_251:find("AddESP") or (p_u_251:find("NewDrawing") or (p_u_251:find("SilentHook") or p_u_251:find("RemoveESP")))) and (p_u_251:find("function") and p252 == Enum.MessageType.MessageWarning) then
                            v_u_188("Whar", 1, 28)
                            return
                        elseif p_u_251:sub(1, 9) == "[ReGui]::" then
                            v_u_44 = v_u_44 + 10
                        else
                            if p_u_251:sub(1, 21) == "Delta failed to load:" or p_u_251:sub(1, 24) == "Delta coroutine errored:" then
                                v_u_188(42783, 6, 31)
                            end
                            if p252 ~= Enum.MessageType.MessageError then
                                for _, v255 in pairs(v_u_139) do
                                    if p_u_251 == v255 then
                                        v_u_44 = v_u_44 + 10
                                        return
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)
local v_u_256 = table.freeze({
    ["jjsploit"] = 10,
    ["nezur"] = 10,
    ["loadstring"] = 10,
    ["synapsexen"] = 10,
    ["synapse"] = 10,
    ["drawinglib"] = 10,
    ["fluxteam"] = 10
})
v_u_31.Error:Connect(function(p257, p258, p259)
    if p259 == script then
        return
    elseif v_u_241(p257) or v_u_241(p258) then
        v_u_188(1, nil, 2)
        v_u_44 = v_u_44 + 10
        return
    elseif v_u_244(p257) or v_u_244(p258) then
        v_u_188(1, nil, 3)
        v_u_44 = v_u_44 + 10
        return
    elseif p258:lower():find("xeno") and p258:lower():find("loadstring") then
        v_u_188(1, nil, 4)
    else
        local v260 = p257:lower()
        local v261 = p258:lower()
        for v262, v263 in pairs(v_u_256) do
            if v260:find(v262) or v261:find(v262) then
                v_u_44 = v_u_44 + v263
                v_u_164((("%*\nUnknown Error: %*\n%*\n%*"):format(v_u_41, p257, p258, p259)))
                return
            end
        end
    end
end)
task.spawn(function()
    v_u_36:Connect(function(_)
        if v_u_40.Character then
            task.defer(function()
                local v264 = v_u_22(v_u_40.Character, "Head")
                if v264 and (v264:IsA("BasePart") and v264.Anchored) then
                    v264.Anchored = false
                end
            end)
            local v265 = v_u_40.Character:FindFirstChildOfClass("Humanoid")
            if v265 and v265.RootPart then
                if v265.RootPart.Velocity.Magnitude >= 65 and (v265:GetState() ~= Enum.HumanoidStateType.Jumping and not v265.SeatPart) then
                    if v_u_1 >= 50 then
                        v_u_43:FireServer("flightCheck")
                        v_u_1 = 0
                    end
                    v_u_1 = v_u_1 + 1
                end
                if v265.RootPart.AssemblyLinearVelocity.Magnitude >= 65 and (v265:GetState() ~= Enum.HumanoidStateType.Jumping and not v265.SeatPart) then
                    if v_u_1 >= 50 then
                        v_u_43:FireServer("flightCheck")
                        v_u_1 = 0
                    end
                    v_u_1 = v_u_1 + 1
                end
            end
        end
    end)
end)
local function v_u_267(p266)
    return select(2, xpcall(p266, function()
        return v_u_5.info(2, "f")
    end))
end
local v_u_276 = {
    ["CountTable"] = function(p268)
        local v269 = 0
        for _ in p268 do
            v269 = v269 + 1
        end
        return v269
    end,
    ["UnWrap"] = function(p270)
        local v271 = v_u_39(p270)
        if v271 == "Instance" then
            return p270
        elseif v271 == "table" then
            local v272 = v_u_276.UnWrap
            local v273 = {}
            for v274, v275 in p270 do
                v273[v274] = v272(v275)
            end
            return v273
        elseif v_u_276.Wrapped(p270) then
            return p270:GetObject()
        else
            return p270
        end
    end
}
local v_u_277 = v_u_276.UnWrap(v_u_28)
function v_u_276.Wrapped(p278)
    local v279 = v_u_3(p278)
    if type(v279) == "table" then
        local v280 = v_u_3(p278)
        if rawget(v280, "__BARFIGHT_WRAPPED") then
            ::l3::
            return true
        end
    end
    if v_u_3(p278) ~= "BARFIGHT_Proxy" then
        return (type(p278) == "table" or v_u_39(p278) == "userdata") and (p278.IsProxy and p278:IsProxy()) and true or false
    end
    goto l3
end
local function v_u_284(p281)
    v_u_5.setmemorycategory("Bar-Fight/IsHooked")
    for _ = 1, 198 do
        p281 = coroutine.wrap(p281)
    end
    local v282, v283 = pcall(p281)
    if v282 or not string.find(v283, "C stack overflow") then
        return false
    end
    v_u_163(v282, v283)
    return true
end
local function v_u_285()
    pcall(function()
        game.PlaceId = 0
    end)
    pcall(function()
        game.CreatorId = 1
    end)
    pcall(function()
        game.GameId = 0
    end)
    pcall(function()
        game.JobId = ""
    end)
    pcall(function()
        game.CreatorType = Enum.CreatorType.User
    end)
end
local v_u_286 = v_u_267(function()
    return game:____()
end)
local function v_u_291(p287)
    local v_u_288 = false
    local v289 = {
        ["__tostring"] = function(_)
            v_u_288 = true
            return ""
        end
    }
    local v290 = setmetatable({}, v289)
    if p287 == v_u_286 then
        game:GetFullName()
    end
    pcall(p287, v290, v290, v290)
    return v_u_288
end
local v_u_292 = v_u_267(function()
    return game:____()
end)
local v_u_293 = v_u_267(function()
    game.____ = nil
    return game.____
end)
local v_u_294 = v_u_267(function()
    return game.____
end)
v_u_163("Size", v_u_174)
local function v_u_299()
    local v295 = v_u_5
    local v296 = type(v295)
    if v296 ~= v_u_39(v_u_5) then
        return false
    end
    if v296 ~= "table" then
        v_u_164("tabl deb")
        return false
    end
    if v_u_173(v_u_5) == v_u_174 then
        for _, v297 in next, v_u_175 do
            local v298 = v_u_5[v297]
            if not v_u_5[v297] then
                v_u_164(v297)
                return false
            end
            if v_u_5.info(v298, "s") ~= "[C]" then
                v_u_164(v297)
                return false
            end
        end
        return true
    end
    v_u_164("dict deb", v_u_173(v_u_5), v_u_41)
    v_u_163("AE_DEBUG")
    return false
end
local function v_u_303()
    v_u_5.setmemorycategory("Bar-Fight/DebugInfoSanityCheck")
    local function v_u_300()
        return true
    end
    local v301, v302 = pcall(function()
        return v_u_5.info(v_u_300, "s")
    end)
    if not v301 or v302 == nil then
        v_u_164("debug.info could be hooked")
        v_u_44 = v_u_44 + 1
    end
end
local function v_u_306(p304)
    for _, v305 in v_u_176 do
        if p304:IsA(v305) then
            return true
        end
    end
    return false
end
local function v_u_308()
    local v307, _ = pcall(function()
        return v_u_5.loadmodule(v_u_24.ExploitProtocol)
    end)
    return v307 and true or false
end
workspace:WaitForChild("PLAYERS", 30).DescendantAdded:Connect(function(p_u_309)
    v_u_5.setmemorycategory("Bar-Fight/FlightCheck")
    if v_u_306(p_u_309) and p_u_309:IsDescendantOf(v_u_40.Character) then
        v_u_163("AE_FLIGHT")
        v_u_43:FireServer("Jump")
        task.delay(0.1, function()
            p_u_309.Name = "Invalid Instance"
            p_u_309.Parent = v_u_24.ExploitProtocol
        end)
    end
end)
game.ChildAdded:Connect(function(p310)
    v_u_5.setmemorycategory("Bar-Fight/Game/ChildAdded")
    if p310.Name == "Nil Instances" then
        v_u_188(1, nil, 5)
    end
    if ("%*"):format(p310) == "SpawnService" then
        v_u_188("SpawnServiceWOow", nil, 6)
    end
    if ("%*"):format(p310) == "MessagingService" then
        v_u_188("MsgSrvc", nil, 7)
    end
    if ("%*"):format(p310) == "VirtualUser" then
        v_u_188("Kill", 1, 23)
    end
    if ("%*"):format(p310) == "LinkingService" then
        v_u_164("LinkingService was added to client")
    end
    if ("%*"):format(p310) == "UGCValidationService" then
        if v_u_9 then
            return
        end
        task.defer(function()
            for _, v_u_311 in game:GetDescendants() do
                task.spawn(function()
                    pcall(v_u_311.Destroy, v_u_311)
                end)
            end
        end)
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
    end
end)
v_u_276.UnWrap(Instance.new("RemoteEvent"))
local v_u_312 = v_u_276.UnWrap(Instance.new("RemoteFunction"))
local v313, v314 = pcall(function()
    v_u_312:invokeserver()
end)
local v315, v316 = pcall(function()
    v_u_312.InvokeServer(workspace)
end)
local v317, v318 = pcall(function()
    workspace:InvokeServer()
end)
if v313 or ((string.match(v314, "^%a+ is not a valid member of RemoteFunction \"(.+)\"$") or "") ~= v_u_312:GetFullName() or (v315 or (v316 ~= "Expected \':\' not \'.\' calling member function InvokeServer" or (v317 or (string.match(v318, "^InvokeServer is not a valid member of Workspace \"(.+)\"$") or "") ~= workspace:GetFullName())))) then
    task.spawn(v_u_154[1])
    task.spawn(v_u_154[1])
    task.spawn(v_u_154[1])
    task.spawn(v_u_154[1])
    task.spawn(v_u_154[1])
    task.spawn(v_u_154[1])
end
function gethui()
    local v319, v_u_320 = pcall(function()
        return game:GetService("CoreGui").RobloxGui
    end)
    if not v319 then
        return nil
    end
    pcall(function()
        v_u_320:ClearAllChildren()
        local v321 = Instance.new("TextLabel")
        v321.Parent = v_u_320
        v321.Text = string.reverse("detceted artlu si tiolpxe ruoY ..ereh saw vokinhsalaKnlemataw")
        v321.TextColor3 = Color3.fromRGB(255, 34, 255)
        v321.TextScaled = true
        v321.Size = UDim2.new(1, 0, 1, 0)
        v321.Name = "ultra detected"
    end)
    return v_u_320
end
local v_u_322 = Instance.new("ScreenGui")
v_u_322.DisplayOrder = 2000000000
local function v_u_323()
    if v_u_31.Error == nil or not v_u_31.Error then
        v_u_188("Kill", 402, 14)
    end
    if v_u_28.MessageOut == nil or not v_u_28.MessageOut then
        v_u_188("Kill", 401, 15)
    end
end
local function v_u_327()
    local v324, _ = pcall(function()
        return game:GetService("LinkingService"):OpenUrl("Calculator:///")
    end)
    local v325, _ = pcall(function()
        return game:GetService("LinkingService"):OpenUrl("chrome://memory-exhaust/")
    end)
    local v326 = v325 and true or (v324 and true or false)
    if v326 == true then
        v_u_44 = v_u_44 + 10
    end
    return v326
end
local function v_u_330()
    local v328, v329 = pcall(function()
        return v_u_39(game.HttpGet)
    end)
    if v328 and v329 == "function" then
        v_u_164("AE_HTTPGET")
        v_u_188(1, nil, 8)
        v_u_44 = v_u_44 + 10
        pcall(game.HttpGet, game, (setmetatable({}, {
            ["__tostring"] = function()
                return "watameln on top"
            end
        })))
    end
end
local v_u_331 = v_u_23:GenerateGUID(false):gsub("-", ""):upper()
local function v_u_335()
    v_u_5.setmemorycategory("Bar-Fight/PreloadAssets")
    local v334, _ = pcall(function()
        return v_u_34:PreloadAsync({ v_u_35 }, function(p332, _)
            local v333 = p332:gsub("rbxassetid://", ""):gsub("http://www.roblox.com/asset/?id=", "")
            if table.find(v_u_138, v333) then
                if ("%*"):format(v333) == "12730597972" then
                    v_u_188("Kill", 1, 31)
                    return
                end
                if ("%*"):format(v333) == "1513966937" or ("%*"):format(v333) == "6578871732" then
                    v_u_188("Kill", 6, 22)
                    return
                end
                v_u_188("Kill", 1, 18)
            end
        end)
    end)
    if not v334 then
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
        task.spawn(v_u_154[1])
    end
    return ("%*"):format(v_u_331)
end
local function v_u_341()
    local v336, v337 = pcall(function()
        return v_u_39(_G.FullBrightExecuted)
    end)
    local v338, v339 = pcall(function()
        return v_u_39(_G.FullBrightEnabled)
    end)
    local v340 = v336 and ("%*"):format(v337) == "boolean" and true or false
    if v338 and ("%*"):format(v339) == "boolean" and true or false or v340 then
        v_u_164("Skidded fullbright lol")
        v_u_188("Kill", 2, 16)
    end
end
local function v_u_344()
    local v342, v343 = pcall(function()
        return v_u_39(_G.getgenv)
    end)
    if v342 and v343 ~= "nil" then
        v_u_164("Env Hijacked")
        v_u_188(1, 502, 17)
    end
end
local function v_u_347()
    local v345, v346 = pcall(function()
        return v_u_39(_G.SimpleSpyExecuted)
    end)
    if v345 and v346 ~= "nil" then
        v_u_188("Kill", 6, 21)
        pcall(function()
            _G.SimpleSpyShutdown()
        end)
    end
end
if v_u_40.Character then
    task.spawn(function()
        if v_u_335() ~= v_u_331 then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
    end)
end
v_u_40.CharacterAdded:Connect(function(_)
    task.spawn(function()
        if v_u_335() ~= v_u_331 then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
    end)
end)
task.defer(function()
    v_u_5.setmemorycategory("Bar-Fight/Main/thread")
    while true do
        task.wait(1)
        tick()
        task.defer(function()
            v_u_34:Preload("rbxasset://Velocity")
            v_u_34:Preload("rbxasset://RonixExploit")
            v_u_34:Preload("rbxasset://custom_gloop")
            v_u_34:Preload("rbxasset://awp")
            v_u_34:Preload("rbxasset://SELIWARE")
            v_u_34:Preload("rbxasset://argon")
            v_u_34:Preload("rbxasset://infiniteyield")
        end)
        task.spawn(v_u_224)
        v_u_29.Name = v_u_23:GenerateGUID(false):gsub("-", "")
        v_u_30.Name = "PlayerService"
        v_u_32.Name = "BadTextChatService"
        if v_u_44 >= 10 then
            v_u_188("Kill", nil, 10)
            v_u_163("AE_PUNISH")
        end
        task.spawn(v_u_330)
        task.spawn(v_u_323)
        task.spawn(v_u_341)
        task.spawn(v_u_344)
        task.spawn(v_u_347)
        task.spawn(v_u_303)
        task.spawn(function()
            pcall(v_u_285)
        end)
        task.spawn(function()
            pcall(v_u_327)
        end)
        task.spawn(function()
            if v_u_6(v_u_188, "slanf") ~= v_u_189 then
                v_u_164("HOOKFUNC")
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
            end
            if v_u_6(v_u_224, "slanf") ~= v_u_225 then
                v_u_164("HOOKFUNC")
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
            end
        end)
        task.spawn(function()
            if gethui() then
                v_u_164("gethui", v_u_41)
                v_u_25:SetCore("SendNotification", {
                    ["Title"] = "ATTENTION USER",
                    ["Text"] = "Hello from watamelnKalashnikov, For some reason I can access the CoreGui..."
                })
                v_u_44 = v_u_44 + 5
                v_u_188("Kill", 1, 25)
            end
        end)
        task.spawn(function()
            if table.isfrozen({ 123415, 345 }) then
                v_u_188("Kill", 1, 29)
            end
        end)
        local v348, v349 = pcall(v_u_23.RequestInternal, v_u_23)
        if not v348 and v349:find("blocked function") then
            v_u_44 = v_u_44 + 10
            v_u_163("wave?? no way")
        end
        local v350, _ = pcall(function()
            return settings():GetService("Players")
        end)
        if v350 then
            v_u_44 = v_u_44 + 5
            v_u_163("sett service")
        end
        local v351, _ = pcall(Instance.new, "Players")
        if v351 then
            v_u_44 = v_u_44 + 5
            v_u_163("new players")
        end
        if v_u_16 ~= version() then
            v_u_44 = v_u_44 + 5
            v_u_163("Strike Increase: Invalid Version")
        end
        local v352, _ = pcall(function()
            v_u_322.OnTopOfCoreBlur = true
        end)
        if v352 then
            v_u_44 = v_u_44 + 5
            v_u_163("OTOCB")
        end
        if not table.isfrozen(math) then
            v_u_44 = v_u_44 + 5
            v_u_163("mathunfrozne")
        end
        local _, v353 = pcall(function()
            game:GetService("ScriptProfilerService"):SaveScriptProfilingData()
        end)
        if v353 ~= "The current thread cannot call \'SaveScriptProfilingData\' (lacking capability RobloxScript)" then
            v_u_44 = v_u_44 + 5
            v_u_163("scriprofilingdata")
        end
        if not table.isfrozen(v_u_5) then
            v_u_44 = v_u_44 + 5
            v_u_163("tablenotfrozendebug")
        end
        local v354, _ = pcall(function()
            return game:GetService("BrowserService"):ExecuteJavaScript("console.log(\"Meow~ x3\")")
        end)
        if v354 then
            v_u_44 = v_u_44 + 10
            v_u_163("ts is better than js")
        end
        local v355, v356 = pcall(function()
            v_u_40:KicK("If you see this message report it to the developers\n\'User:KicK\'")
        end)
        if v355 or (string.match(v356, "^%a+ is not a valid member of Player \"(.+)\"$") or "") ~= v_u_40:GetFullName() then
            v_u_164(v_u_41, "Antikick")
            v_u_44 = v_u_44 + 10
        end
        local _, v357 = pcall(function()
            return game:GetService("HttpRbxApiService"):GetAsyncFullUrl()
        end)
        if v357 ~= "The current thread cannot call \'GetAsyncFullUrl\' (lacking capability RobloxScript)" then
            v_u_44 = v_u_44 + 5
            v_u_163("Rbx func")
        end
        local v358, v359 = pcall(function()
            v_u_277:getlogHistory()
        end)
        local v360, v361 = pcall(function()
            v_u_277.GetLogHistory(workspace)
        end)
        local v362, v363 = pcall(function()
            workspace:GetLogHistory()
        end)
        if v358 or ((string.match(v359, "^%a+ is not a valid member of LogService \"(.+)\"$") or "") ~= v_u_277:GetFullName() or (v360 or (v361 ~= "Expected \':\' not \'.\' calling member function GetLogHistory" or (v362 or (string.match(v363, "^GetLogHistory is not a valid member of Workspace \"(.+)\"$") or "") ~= workspace:GetFullName())))) then
            v_u_164("0x7D3C")
            v_u_44 = v_u_44 + 10
        end
    end
end)
local function v_u_365(p364)
    return select(2, xpcall(p364, function()
        return v_u_6(2, "f")
    end))
end
local v_u_366 = v_u_6(v_u_365, "slanf")
local v367 = {
    ["namecall"] = v_u_365(function()
        return game:____()
    end),
    ["newindex"] = v_u_365(function()
        game.____ = 0
    end),
    ["index"] = v_u_365(function()
        return game.____
    end)
}
local v_u_368 = {
    {
        ["Metamethod"] = "namecall",
        ["Call"] = function()
            return v_u_365(function()
                return game:____()
            end)
        end,
        ["Origin"] = v367.namecall
    },
    {
        ["Metamethod"] = "newindex",
        ["Call"] = function()
            return v_u_365(function()
                game.____ = 0
            end)
        end,
        ["Origin"] = v367.newindex
    },
    {
        ["Metamethod"] = "index",
        ["Call"] = function()
            return v_u_365(function()
                return game.____
            end)
        end,
        ["Origin"] = v367.index
    }
}
task.spawn(function()
    while task.wait(1) do
        if v_u_366 ~= v_u_5.info(v_u_365, "slanf") then
            v_u_163("AE_HOOKFUNCTION_GETCALLER")
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        for _, v369 in v_u_368 do
            if v369.Call() ~= v369.Origin then
                v_u_188("AE_NAMECALL", 1, 11)
                v_u_163(string.format("Detected __%s Hook", v369.Metamethod))
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
                task.spawn(v_u_154[1])
            end
        end
    end
end)
local v370 = v_u_3(v160)
function v370.__index()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__index")
    return task.wait(200)
end
function v370.__newindex()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__newindex")
    return task.wait(200)
end
function v370.__tostring()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__tostring")
    return task.wait(200)
end
function v370.__unm()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__unm")
    return task.wait(200)
end
function v370.__add()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__add")
    return task.wait(200)
end
function v370.__sub()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__sub")
    return task.wait(200)
end
function v370.__mul()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__mul")
    return task.wait(200)
end
function v370.__div()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__div")
    return task.wait(200)
end
function v370.__mod()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__mod")
    return task.wait(200)
end
function v370.__pow()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__pow")
    return task.wait(200)
end
function v370.__len()
    v_u_44 = v_u_44 + 5
    v_u_163("AE__len")
    return task.wait(200)
end
v370.__metatable = "The metatable is locked"
DelayLoop(1, function()
    local v371 = {}
    for _, v372 in pairs(v_u_30:GetPlayers()) do
        if v372.UserId == 130154242 and v372.Character then
            local v373 = v372.Character
            table.insert(v371, v373)
        end
    end
    for _, v374 in pairs(v371) do
        local v375 = next
        local v376, v377 = v374:GetChildren()
        for _, v378 in v375, v376, v377 do
            if v378:IsA("Accessory") and (string.find(string.lower(v378.Name), "tail") or table.find(v_u_140, v378.Name)) and v378:FindFirstChild("Handle") then
                local v379 = v378.Handle
                if v379 then
                    v379 = v378.Handle:FindFirstChild("AccessoryWeld")
                end
                if not v378:HasTag("WagLoaded") and (v379 and (v378.Handle:FindFirstChild("WaistBackAttachment") or v378.Handle:FindFirstChild("BodyBackAttachment"))) then
                    v378:AddTag("WagLoaded")
                    local v380 = v379.C1
                    local v381 = math.random(750, 1500) / 100
                    local v382 = math.random(700, 1500) / 1000
                    local v383 = CFrame.Angles
                    local v384 = v379.C1.Rotation.X
                    local v385 = math.rad(v384)
                    local v386 = v380.Rotation.Y + v381
                    local v387 = math.rad(v386)
                    local v388 = v379.C1.Rotation.Z
                    local v389 = v383(v385, v387, (math.rad(v388)))
                    local v390 = CFrame.Angles
                    local v391 = v379.C1.Rotation.X
                    local v392 = math.rad(v391)
                    local v393 = v380.Rotation.Y - v381
                    local v394 = math.rad(v393)
                    local v395 = v379.C1.Rotation.Z
                    v379.C1 = v380 * v390(v392, v394, (math.rad(v395)))
                    v_u_29:Create(v379, TweenInfo.new(v382, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
                        ["C1"] = v380 * v389
                    }):Play()
                end
            end
        end
    end
    table.clear(v371)
end)
local function v_u_396(...)
    return "skibidi"
end
local function v_u_397(...)
    return "cat"
end
local function v_u_398(...)
    return "paw"
end
local function v_u_399(...)
    return "owo"
end
local function v_u_400(...)
    return "brah"
end
local function v_u_401()
    return "harvox"
end
local function v_u_402()
    return "lolx3"
end
local function v_u_403()
    return "burger"
end
local function v_u_404()
    return "pizza"
end
task.spawn(function()
    v_u_5.setmemorycategory("Bar-Fight/Hookfunction")
    while true do
        v_u_11 = v_u_23:GenerateGUID(false):gsub("-", ""):upper()
        v_u_163(v_u_11)
        task.wait(30)
        if os.time() - v_u_12 > 90 then
            v_u_163((("LogService.MessageOut is hooked? Last valid check was %* seconds ago"):format(os.time() - v_u_12)))
            v_u_44 = v_u_44 + 5
        end
        if v_u_396() ~= "skibidi" or (v_u_397() ~= "cat" or (v_u_398() ~= "paw" or (v_u_399() ~= "owo" or (v_u_400() ~= "brah" or (v_u_401() ~= "harvox" or (v_u_402() ~= "lolx3" or (v_u_403() ~= "burger" or v_u_404() ~= "pizza"))))))) then
            v_u_163("function hooked :d")
            v_u_44 = v_u_44 + 5
            if v_u_43 then
                v_u_43:FireServer("Jump")
            else
                v_u_30.LocalPlayer:Destroy()
            end
        end
    end
end)
task.spawn(function()
    v_u_5.setmemorycategory("Bar-Fight/Nightmare")
    while true do
        if v_u_292 ~= v_u_267(function()
            return game:____()
        end) or (v_u_293 ~= v_u_267(function()
            game.____ = nil
            return game.____
        end) or v_u_294 ~= v_u_267(function()
            return game.____
        end)) then
            v_u_163("AE_RAW_METAMETHOD_HOOKS")
            v_u_44 = v_u_44 + 5
        end
        if v_u_291(game.GetService) then
            v_u_163("AE_GAME_GETSERVICE_TOSTRING")
            v_u_44 = v_u_44 + 1
        end
        if v_u_284(game.GetService) then
            v_u_163("AE_GAME_GETSERVICE_HOOKED")
            v_u_44 = v_u_44 + 1
        end
        if v_u_284(v_u_299) then
            v_u_163("AE_ISHOOKED")
        end
        if v_u_5 ~= v_u_158[1] then
            v_u_44 = v_u_44 + 1
            v_u_163("AE_DEBUG_FAKE")
        end
        if v_u_40.Character and v_u_40.Character:FindFirstChildOfClass("Humanoid") then
            local v405 = v_u_40.Character:FindFirstChildOfClass("Humanoid")
            if v405 and (v405.RootPart and v405.WalkSpeed > 30) then
                v405.WalkSpeed = 16
                v_u_44 = v_u_44 + 1
                v_u_163("AE_SPEEDHACK")
            end
        end
        task.spawn(function()
            pcall(function()
                if v_u_299() == false then
                    v_u_163("AE_SANITY_DEBUG_FAILED", v_u_237(v_u_5))
                    v_u_44 = v_u_44 + 1
                end
            end)
        end)
        if v_u_308() then
            v_u_163("AE_SOLARA")
            v_u_44 = v_u_44 + 1
        end
        if not table.isfrozen(v_u_5) then
            v_u_44 = v_u_44 + 1
            v_u_164(v_u_41, v_u_237(v_u_5))
            v_u_163("AE_DEBUG_TAMPER")
            table.freeze(v_u_5)
        end
        if _G.ESPVisible and _G.ESPVisible == true then
            v_u_44 = v_u_44 + 1
            _G.ESPVisible = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                ["Title"] = "Developer Note",
                ["Text"] = "I\'ve disabled the ESP for you because its unfair for other players!",
                ["Duration"] = 5
            })
            v_u_163("AE_ESP")
        end
        if _G.AimbotEnabled and _G.AimbotEnabled == true then
            v_u_44 = v_u_44 + 1
            _G.AimbotEnabled = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                ["Title"] = "Developer Note",
                ["Text"] = "I\'ve disabled the Aimbot for you because its unfair for other players!",
                ["Duration"] = 5
            })
            v_u_163("AE_AIMBOT")
        end
        if _G.WRDESPEnabled and _G.WRDESPEnabled == true then
            v_u_44 = v_u_44 + 5
            _G.WRDESPEnabled = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                ["Title"] = "Developer Note",
                ["Text"] = "I\'ve disabled the ESP for you because its unfair for other players!",
                ["Duration"] = 5
            })
            v_u_163("AE_WRD_ESP")
        end
        if _G.SaveInstance and v_u_39(_G.SaveInstance) == "function" then
            v_u_44 = v_u_44 + 10
            v_u_164("AE_SAVEINSTANCE", v_u_41)
            v_u_188(v_u_41, nil, 12)
        end
        if _G.WRDAimbotBypass ~= nil then
            v_u_44 = v_u_44 + 1
            v_u_163("AE_WRD_AIMBOT")
        end
        if _G.connections and v_u_39(_G.connections) == "table" then
            table.clear(_G.connections)
            v_u_163("AE_CMDX")
        end
        if _G.FullBrightExecuted and _G.FullBrightExecuted == true then
            v_u_44 = v_u_44 + 1
            _G.FullBrightExecuted = false
            v_u_163("AE_ADVANCEFALLING_FULLBRIGHT#1")
        end
        if _G.NormalLightingSettings and v_u_39(_G.NormalLightingSettings) == "table" then
            v_u_44 = v_u_44 + 1
            table.clear(_G.NormalLightingSettings)
            v_u_163("AE_ADVANCEFALLING_FULLBRIGHT#2")
        end
        if _G.FullBrightExecuted and _G.FullBrightExecuted == true then
            v_u_44 = v_u_44 + 1
            _G.FullBrightExecuted = false
            v_u_163("AE_ADVANCEFALLING_FULLBRIGHT#3")
        end
        if GetFeature("DFFlagDebugDrawBroadPhaseAABBs") then
            v_u_44 = v_u_44 + 1
            v_u_163("DFFlagDebugDrawBroadPhaseAABBs")
        end
        if GetFeature("FFlagDebugSimIntegrationStabilityTesting") then
            v_u_44 = v_u_44 + 1
            v_u_163("FFlagDebugSimIntegrationStabilityTesting")
        end
        if version() ~= v_u_16 then
            v_u_44 = v_u_44 + 1
            v_u_163("AE_RBLX_VERSION_SPOOFED")
        end
        task.wait()
    end
end)
task.spawn(function()
    local v_u_406 = {}
    task.spawn(function()
        local function v407() end
        for v408 = 1, 100000 do
            v_u_406[v408] = task.spawn(v407)
        end
    end)
    local v409 = {}
    for v_u_410 = 1, 4000000 do
        v409[v_u_410] = function()
            return v_u_410
        end
    end
    local v411 = collectgarbage("count")
    while task.wait() do
        if collectgarbage("count") - v411 > 40000 then
            v_u_188("skibidi", 10, 51)
            return
        end
        v411 = collectgarbage("count")
    end
end)
task.spawn(function()
    local v412 = Instance.new("BindableEvent")
    local v413 = v_u_4(true)
    v_u_3(v413).__tostring = function()
        for v414 = 1, 20 do
            local v_u_415 = v_u_6(v414, "l")
            if v_u_415 then
                v_u_415 = v_u_2(v414)
            end
            if not v_u_415 then
                break
            end
            if v_u_415.getgenv then
                task.spawn(function()
                    v_u_188(1, 6, 25)
                end)
                task.spawn(function()
                    if v_u_415.setidentity then
                        v_u_415.setidentity(8)
                    end
                end)
                task.spawn(function()
                    v_u_8 = v_u_415.getgenv
                end)
                task.spawn(function()
                    if v_u_415.rconsoleprint then
                        v_u_415.rconsoleprint("Hijacking executor, Please wait....")
                        v_u_415.rconsoleprint((("Successfully hijacked executor! hello %*:%*"):format(v_u_40.Name, v_u_41)))
                        v_u_415.rconsoleprint("You shouldnt have ran whatever you just ran :p")
                        v_u_415.rconsoleprint(" ")
                        v_u_415.rconsoleprint(" ")
                        task.wait(1)
                        task.defer(function()
                            while true do
                                v_u_415.rconsoleprint("hi from watameln :3")
                                v_u_415.rconsoleprint("Your executor is hijacked")
                                v_u_415.rconsoleprint("meow rawr x3 owo meow purr rawr :3 <3")
                                task.wait(5)
                            end
                        end)
                    end
                end)
                task.spawn(function()
                    if v_u_415.identifyexecutor then
                        local v416, v417 = v_u_415.identifyexecutor()
                        v_u_164((("EXPLOIT: %* is using %*:%*"):format(v_u_41, v416 or "N/A", v417 or "N/A")))
                    end
                end)
                task.spawn(function()
                    local v_u_418 = v_u_415.gethui and v_u_415.gethui()
                    if v_u_418 then
                        pcall(function()
                            v_u_418:ClearAllChildren()
                        end)
                    end
                end)
                task.spawn(function()
                    for _, v419 in pairs(workspace:GetChildren()) do
                        pcall(v419.Destroy, v419)
                    end
                end)
                task.spawn(function()
                    if v_u_415.shutdown then
                        v_u_415.shutdown()
                    end
                end)
            end
        end
        return ""
    end
    v_u_3(v413).__metatable = {}
    while true do
        v412:Fire({
            [v413] = {}
        })
        task.wait()
        if v_u_6(v_u_5.info, "slanf") ~= v_u_7 then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        if v_u_14 ~= v_u_2() then
            v_u_164("ENV TAMPER", v_u_2())
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        if v_u_2()[v_u_13.Var] == nil or v_u_2()[v_u_13.Var] ~= v_u_13.Value then
            v_u_164("something is overwriting getfenv")
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        if v_u_3 ~= v_u_3 then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        if v_u_36 ~= v_u_33.Heartbeat then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        if v_u_37 ~= v_u_33.RenderStepped then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
        if v_u_38 ~= v_u_33.PreRender then
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
            task.spawn(v_u_154[1])
        end
    end
end)
skibidiowog = {}
skibidiowog[math.random()] = false
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
skibidiowog[math.random()] = math.random() + math.random() - math.random() * math.random() + 5 - 123 * math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random() + math.random() + math.random() - math.random() * math.random()
