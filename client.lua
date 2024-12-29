local nuiVisible = false -- Başlangıçta pusula kapalı
local directions = {"K", "KD", "D", "GD", "G", "GB", "B", "KB"}

function getDirectionFromHeading(heading)
    local index = math.floor((heading + 22.5) / 45.0) % 8 + 1
    return directions[index]
end

CreateThread(function()
    while true do
        if nuiVisible then
            local playerPed = PlayerPedId()
            local playerVehicle = GetVehiclePedIsIn(playerPed, false)
            local playerPos = GetEntityCoords(playerPed)
            local heading = GetEntityHeading(playerPed)
            local streetHash, crossingHash = GetStreetNameAtCoord(playerPos.x, playerPos.y, playerPos.z)
            local streetName = GetStreetNameFromHashKey(streetHash)
            local zoneName = GetLabelText(GetNameOfZone(playerPos.x, playerPos.y, playerPos.z))
            local direction = getDirectionFromHeading(heading)

            SendNUIMessage({
                show = true,
                direction = direction,
                street = streetName,
                zone = zoneName
            })
        else
            SendNUIMessage({ show = false })
        end

        Wait(500)
    end
end)

-- QBCore OnPlayerLoaded entegrasyonu
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    Wait(2000)
    nuiVisible = true -- Oyuncu yüklendiğinde pusula açılır
    SendNUIMessage({ show = nuiVisible })
end)

-- Oyuncu çıktığında pusulayı kapatmak için OnPlayerUnload event'i
RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    nuiVisible = false -- Oyuncu çıkarsa pusula kapatılır
    SendNUIMessage({ show = nuiVisible })
end)
