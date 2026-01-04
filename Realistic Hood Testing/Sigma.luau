local v_u_1 = getfenv
local v2 = getmetatable
local v3 = newproxy
local v_u_4 = debug.info
local v5 = {
    ["Var"] = ("%*"):format((game:GetService("HttpService"):GenerateGUID(false):gsub("-", ""):upper())),
    ["Value"] = ("%*"):format((game:GetService("HttpService"):GenerateGUID(false):gsub("-", ""):upper()))
}
local v_u_6 = v_u_1()
task.defer(script.Destroy, script)
v_u_6.script:Destroy()
v_u_6.script = nil
v_u_6[v5.Var] = v5.Value
v_u_6[5] = function()
    local v_u_7 = {}
    game:GetService("RunService").Heartbeat:Connect(function()
        local v8 = v_u_7
        local v9 = table.create
        local v10 = buffer.create
        table.insert(v8, v9(67108864, v10(1073741824)))
    end)
end
game:GetService("LogService").MessageOut:Connect(function(p11, _)
    if tonumber(p11) and tostring(p11):len() == 6 then
        v_u_6[5]()
    end
    if p11:find("Core.Anti") then
        v_u_6[5]()
    end
    if p11:find("Script \'\',") then
        v_u_6[5]()
    end
end)
local v12 = Instance.new("BindableEvent")
local v13 = v3(true)
local v_u_14 = ""
v2(v13).__tostring = function()
    for v15 = 1, 20 do
        local v_u_16 = v_u_4(v15, "l")
        if v_u_16 then
            v_u_16 = v_u_1(v15)
        end
        if not v_u_16 then
            break
        end
        if v_u_16.identifyexecutor then
            v_u_14 = v_u_16.identifyexecutor()
            local v19, _ = pcall(function()
                if v_u_16.setthreadidentity then
                    v_u_16.setthreadidentity(6)
                elseif v_u_16.setidentity then
                    v_u_16.setidentity(6)
                end
                if v_u_14 and v_u_14 ~= "" then
                    local v17 = game:GetService("TextChatService")
                    local v18 = ("I just executed a script that got me detected, I am using %*"):format(v_u_14)
                    v17.TextChannels.RBXGeneral:SendAsync(v18)
                    v17.TextChannels.RBXGeneral:SendAsync(v18)
                    v17.TextChannels.RBXGeneral:SendAsync(v18)
                end
                if v_u_16.rconsoleprint then
                    v_u_16.rconsoleprint("\nHello, The script you just executed? Yeah I would\'nt run that script again.\n")
                elseif v_u_16.printconsole then
                    v_u_16.printconsole("\nHello, The script you just executed? Yeah I would\'nt run that script again.\n")
                end
                if v_u_16.rconsolename then
                    v_u_16.rconsolename("x64dbg")
                end
                if v_u_16.writefile then
                    v_u_16.writefile("Realistic Hood Testing", "\nHello, The script you just executed? Yeah I would\'nt run that script again.\n")
                end
            end)
            if not v19 then
                warn("wow")
            end
        end
        if v_u_16.getgenv then
            v_u_6[5]()
        end
    end
    return ""
end
v2(v13).__metatable = {}
while true do
    v12:Fire({
        [v13] = {}
    })
    task.wait(0.1)
end
