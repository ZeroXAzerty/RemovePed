
Citizen.CreateThread(function()

    while true do 
        Citizen.Wait(0)
        int, ped = FindFirstPed()
        if IsPedAPlayer(ped) == false then
            DeleteEntity(ped)
        end
    end

end)


