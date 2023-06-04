RegisterCommand('summon', function(source, args)
    local targetId = tonumber(args[1]) or source
    if not targetId then
        TriggerClientEvent('chat:addMessage', source, {
            args = { 'You must specify a player ID to teleport to.', }
        })
        return
    end

    if not GetPlayerName(targetId) then
        TriggerClientEvent('chat:addMessage', source, {
            args = { 'Player is not online.', }
        })
        return
    end
    
        local pedCoords = GetEntityCoords(GetPlayerPed(source))

        SetEntityCoords(targetId, pedCoords)
end)