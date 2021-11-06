function text(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.2, 1.2)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.87, 0.8)

end

Citizen.CreateThread(function()

    while true do 
        Citizen.Wait(0)
        int, ped = FindFirstPed()
        if IsPedAPlayer(ped) == false then
            DeleteEntity(ped)
        end
    end

end)

Citizen.CreateThread(function()
    local ped = PlayerPedId()
    while true do
        Citizen.Wait(0)
        local bool, player = GetEntityPlayerIsFreeAimingAt(ped)
        ped = GetPlayerName(source)
        print(player)
        text("Vous visez sur "..ped)


    end
end)

