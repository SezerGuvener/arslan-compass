local nuiVisible = true
local isPusulaToggled = true

local directions = {"K", "KD", "D", "GD", "G", "GB", "B", "KB"}

function getDirectionFromHeading(heading)
    local index = math.floor((heading + 22.5) / 45.0) % 8 + 1
    return directions[index]
end

CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerVehicle = GetVehiclePedIsIn(playerPed, false)

        if playerVehicle ~= 0 or nuiVisible then
            local playerPos = GetEntityCoords(playerPed)
            local heading = GetEntityHeading(playerPed)
            local streetHash, crossingHash = GetStreetNameAtCoord(playerPos.x, playerPos.y, playerPos.z)
            local streetName = GetStreetNameFromHashKey(streetHash)
            local zoneName = GetLabelText(GetNameOfZone(playerPos.x, playerPos.y, playerPos.z))
            local direction = getDirectionFromHeading(heading)

            if nuiVisible then
                SendNUIMessage({
                    show = true,
                    direction = direction,
                    street = streetName,
                    zone = zoneName
                })
            end
        else
            if nuiVisible then
                SendNUIMessage({ show = false })
            end
        end

        Wait(500)
    end
end)

RegisterCommand('pusula', function()
    nuiVisible = not nuiVisible
    isPusulaToggled = not nuiVisible
    SendNUIMessage({ show = nuiVisible })

    if nuiVisible then
        lib.notify({
            title = 'Pusula',
            description = 'Pusula açıldı.',
            type = 'success'
        })
    else
        lib.notify({
            title = 'Pusula',
            description = 'Pusula kapatıldı.',
            type = 'error'
        })
    end
end, false)

AddEventHandler('playerSpawned', function()
    nuiVisible = isPusulaToggled
    SendNUIMessage({ show = nuiVisible })
end)
