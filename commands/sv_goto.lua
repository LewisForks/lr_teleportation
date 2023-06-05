RegisterCommand('goto', function(source, args)
    -- don't forget to store the source so it doesnt expire
    -- local src = source
    local ped = GetPlayerPed(source) -- src instead of source
    local targetId = tonumber(args[1]) or source -- ``or source`` is not needed, we want this to be null if no target
    if not targetId then
        TriggerClientEvent('chat:addMessage', source, {
            args = { 'You must specify a player ID to teleport to.', }
        })
        return
    end
    
    -- this could be a little redundant/unnecessary
    -- may be better to just check later on whether the targetCoords is null
    if not GetPlayerName(targetId) then
        TriggerClientEvent('chat:addMessage', source, {
            args = { 'Player is not online.', }
        })
        return
    end

    local targetCoords = GetEntityCoords(GetPlayerPed(targetId))
    
    SetEntityCoords(ped, targetCoords)
end)
