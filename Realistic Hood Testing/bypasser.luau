if game.GameId ~= 4444526080 then return end
local ReplicatedFirst = (cloneref or clonereference or function(i) return i end)(game:GetService("ReplicatedFirst"))
local function disableScripts(container)
    for _, descendant in ipairs(container:GetDescendants()) do
        local isLocalScript = descendant:IsA("LocalScript") and descendant.Name ~= "RunFirst"
        local isClientScript = descendant:IsA("Script") and descendant.RunContext == Enum.RunContext.Client
        if isLocalScript or isClientScript then
            descendant.Disabled = true
        end
    end
end
disableScripts(ReplicatedFirst)
ReplicatedFirst.DescendantAdded:Connect(function(descendant)
    local isLocalScript = descendant:IsA("LocalScript") and descendant.Name ~= "RunFirst"
    local isClientScript = descendant:IsA("Script") and descendant.RunContext == Enum.RunContext.Client
    if isLocalScript or isClientScript then
        descendant.Disabled = true
    end
end)
