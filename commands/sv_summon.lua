RegisterCommand('summon', function(source, args)
    -- remember to store source
    -- local src = source
    local targetId = tonumber(args[1]) or source -- ``or source`` is redundant like in other command
    if not targetId then
        TriggerClientEvent('chat:addMessage', source, {
            args = { 'You must specify a player ID to teleport to.', }
        })
        return
    end

    -- redundant/unnecessary
    if not GetPlayerName(targetId) then
        TriggerClientEvent('chat:addMessage', source, {
            args = { 'Player is not online.', }
        })
        return
    end
    
    local pedCoords = GetEntityCoords(GetPlayerPed(source))
    -- check null here instead
        
    SetEntityCoords(targetId, pedCoords)
end)
