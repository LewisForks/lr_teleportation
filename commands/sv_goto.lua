RegisterCommand('goto', function(source, args)
    local ped = GetPlayerPed(source)
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

        local targetCoords = GetEntityCoords(GetPlayerPed(targetId))

        SetEntityCoords(ped, targetCoords)
end)