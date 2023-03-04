local QBCore = exports['qb-core']:GetCoreObject()

attachKey = 51 --KEYBIND - http://docs.fivem.net/game-references/controls/
attachKeyName = "~INPUT_CONTEXT~"

--- Code ---

function GetVehicleInDirection(cFrom, cTo)
    local rayHandle = CastRayPointToPoint(cFrom.x, cFrom.y, cFrom.z, cTo.x, cTo.y, cTo.z, 10, GetPlayerPed(-1), 0)
    local _, _, _, _, vehicle = GetRaycastResult(rayHandle)
    return vehicle
end

--DINGHY THREAD
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped)
        if veh ~= nil then
            if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "DINGHY" then --BOAT
                local belowFaxMachine = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, -1.0)
				local boatCoordsInWorldLol = GetEntityCoords(veh)
                local trailerLoc = GetVehicleInDirection(boatCoordsInWorldLol, belowFaxMachine)
                
				if GetDisplayNameFromVehicleModel(GetEntityModel(trailerLoc)) == "BOATTRAILER" then --TRAILER
                    if IsEntityAttached(veh) then
                        if IsControlJustReleased(1, attachKey) then
							DetachEntity(veh, false, true)
						end
						QBCore.Functions.Notify('Press E to detach boat', 'primary', 5000)
                    else
                        if IsControlJustReleased(1, attachKey) then
							AttachEntityToEntity(veh, trailerLoc, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
							TaskLeaveVehicle(ped, veh, 64)
                        end
                        QBCore.Functions.Notify('Press E to attach boat', 'primary', 5000)
					end
                end
            end
        end
    end
end)

--SEASHARK THREAD
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped)
        if veh ~= nil then
            if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "SEASHARK" then --BOAT
                local belowFaxMachine = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, -1.0)
				local boatCoordsInWorldLol = GetEntityCoords(veh)
                local trailerLoc = GetVehicleInDirection(boatCoordsInWorldLol, belowFaxMachine)
                
				if GetDisplayNameFromVehicleModel(GetEntityModel(trailerLoc)) == "BOATTRAILER" then --TRAILER
                    if IsEntityAttached(veh) then
                        if IsControlJustReleased(1, attachKey) then
							DetachEntity(veh, false, true)
						end
						QBCore.Functions.Notify('Press E to detach boat', 'primary', 5000)
                    else
                        if IsControlJustReleased(1, attachKey) then
							AttachEntityToEntity(veh, trailerLoc, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
							TaskLeaveVehicle(ped, veh, 64)
                        end
                        QBCore.Functions.Notify('Press E to attach boat', 'primary', 5000)
					end
                end
            end
        end
    end
end)

--TROPIC THREAD
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped)
        if veh ~= nil then
            if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "TROPIC" then --BOAT
                local belowFaxMachine = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, -1.0)
				local boatCoordsInWorldLol = GetEntityCoords(veh)
                local trailerLoc = GetVehicleInDirection(boatCoordsInWorldLol, belowFaxMachine)
                
				if GetDisplayNameFromVehicleModel(GetEntityModel(trailerLoc)) == "BOATTRAILER" then --TRAILER
                    if IsEntityAttached(veh) then
                        if IsControlJustReleased(1, attachKey) then
							DetachEntity(veh, false, true)
						end
						QBCore.Functions.Notify('Press E to detach boat', 'primary', 5000)
                    else
                        if IsControlJustReleased(1, attachKey) then
							AttachEntityToEntity(veh, trailerLoc, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
							TaskLeaveVehicle(ped, veh, 64)
                        end
                        QBCore.Functions.Notify('Press E to attach boat', 'primary', 5000)
					end
                end
            end
        end
    end
end)

--SUNTRAP THREAD
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped)
        if veh ~= nil then
            if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "SUNTRAP" then --BOAT
                local belowFaxMachine = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, -1.0)
				local boatCoordsInWorldLol = GetEntityCoords(veh)
                local trailerLoc = GetVehicleInDirection(boatCoordsInWorldLol, belowFaxMachine)
                
				if GetDisplayNameFromVehicleModel(GetEntityModel(trailerLoc)) == "BOATTRAILER" then --TRAILER
                    if IsEntityAttached(veh) then
                        if IsControlJustReleased(1, attachKey) then
							DetachEntity(veh, false, true)
						end
						QBCore.Functions.Notify('Press E to detach boat', 'primary', 5000)
                    else
                        if IsControlJustReleased(1, attachKey) then
							AttachEntityToEntity(veh, trailerLoc, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
							TaskLeaveVehicle(ped, veh, 64)
                        end
                        QBCore.Functions.Notify('Press E to attach boat', 'primary', 5000)
					end
                end
            end
        end
    end
end)

--SQUALO THREAD
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped)
        if veh ~= nil then
            if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "SQUALO" then --BOAT
                local belowFaxMachine = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, -1.0)
				local boatCoordsInWorldLol = GetEntityCoords(veh)
                local trailerLoc = GetVehicleInDirection(boatCoordsInWorldLol, belowFaxMachine)
                
				if GetDisplayNameFromVehicleModel(GetEntityModel(trailerLoc)) == "BOATTRAILER" then --TRAILER
                    if IsEntityAttached(veh) then
                        if IsControlJustReleased(1, attachKey) then
							DetachEntity(veh, false, true)
						end
						QBCore.Functions.Notify('Press E to detach boat', 'primary', 5000)
                    else
                        if IsControlJustReleased(1, attachKey) then
							AttachEntityToEntity(veh, trailerLoc, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
							TaskLeaveVehicle(ped, veh, 64)
                        end
                        QBCore.Functions.Notify('Press E to attach boat', 'primary', 5000)
					end
                end
            end
        end
    end
end)

--SMALLBOAT THREAD
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped)
        if veh ~= nil then
            if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "SMALLBOAT" then --BOAT
                local belowFaxMachine = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, -1.0)
				local boatCoordsInWorldLol = GetEntityCoords(veh)
                local trailerLoc = GetVehicleInDirection(boatCoordsInWorldLol, belowFaxMachine)
                
				if GetDisplayNameFromVehicleModel(GetEntityModel(trailerLoc)) == "BOATTRAILER" then --TRAILER
                    if IsEntityAttached(veh) then
                        if IsControlJustReleased(1, attachKey) then
							DetachEntity(veh, false, true)
						end
						QBCore.Functions.Notify('Press E to detach boat', 'primary', 5000)
                    else
                        if IsControlJustReleased(1, attachKey) then
							AttachEntityToEntity(veh, trailerLoc, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
							TaskLeaveVehicle(ped, veh, 64)
                        end
                        QBCore.Functions.Notify('Press E to attach boat', 'primary', 5000)
					end
                end
            end
        end
    end
end)