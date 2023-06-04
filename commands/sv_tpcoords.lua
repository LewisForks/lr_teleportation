RegisterCommand('tpcoords', function(source, args)
    local ped = GetPlayerPed(source)
    local targetCoords = vector3(tonumber(args[1]), tonumber(args[2]), tonumber(args[3]))
    print(targetCoords)

    local pedCoords = GetEntityCoords(GetPlayerPed(source))
    print(pedCoords)

    SetEntityCoords(ped, targetCoords)
end)