local clientData = {}
clientData.KD = {}

Citizen.CreateThread(function()
  for k,v in pairs(Config.Zones) do
    if v.blip.show then
      clientData['blip_'..k] = AddBlipForCoord(v.location.x, v.location.y, v.location.z)
			SetBlipSprite (clientData['blip_'..k], v.blip.sprite)
			SetBlipDisplay(clientData['blip_'..k], 4)
			SetBlipScale  (clientData['blip_'..k], v.blip.size)
			SetBlipColour (clientData['blip_'..k], v.blip.color)
			SetBlipAsShortRange(clientData['blip_'..k], true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.blip.text)
			EndTextCommandSetBlipName(clientData['blip_'..k])
    end
  end
end)

Citizen.CreateThread(function()
  while true do
    local sleep = 500
    local pCoords = GetEntityCoords(PlayerPedId())
    if not clientData.currentZone then
      for k,v in pairs(Config.Zones) do
        local dist = #(v.location - pCoords)
        if dist <= v.radius then
          clientData.currentZone = k
        end
      end
    else
      local dist = #(pCoords - Config.Zones[clientData.currentZone].location)
      if dist <= Config.Zones[clientData.currentZone].radius then
        local marker = Config.Zones[clientData.currentZone].marker
        for k,v in pairs(Config.Zones[clientData.currentZone].points) do
          if not clientData.KD[clientData.currentZone..'-'..k] or (clientData.KD[clientData.currentZone..'-'..k] + 15000) < GetGameTimer() then 
            local pDist = #(pCoords - v)
            -- print(dist, pDist)
            if pDist <= 15.0 then
              sleep = 5
              DrawMarker(marker.type, v, 0, 0, 0, 0, 0, 0, marker.size.x, marker.size.y, marker.size.z, marker.color.r, marker.color.g, marker.color.b, marker.alpha, false, false, false, true, nil, nil, false)
              if pDist <= 2.0 then
                clientData.currentPoint = k
                break
              else
                clientData.currentPoint = nil
              end
            end
          end
        end
      else
        clientData.currentZone = nil
      end
    end
    Citizen.Wait(sleep)
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    if clientData.currentPoint and not clientData.harvesting then
      if Config.Zones[clientData.currentZone] and Config.Zones[clientData.currentZone].text3d then
        showHelpNotification(Config.Zones[clientData.currentZone].text3d)
        if IsControlJustReleased(0,38) then
          startHarvest(clientData.currentZone, clientData.currentPoint, Config.Zones[clientData.currentZone].reward)
        end
      end
    end
  end
end)

--------------------------------------------------------------------------------------------

function startHarvest(z,p,r)
  FreezeEntityPosition(PlayerPedId(), true)
  if Config.ProgressBar == 'mythic' then
    TriggerEvent("mythic_progbar:client:progress", {
      name = "rury_harvest",
      duration = Config.Zones[z].harvestingTime,
      label = Config.Zones[z].progressText,
      useWhileDead = false,
      canCancel = false,
      controlDisables = {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
      },
      animation = {
        animDict = Config.Zones[z].animation and Config.Zones[z].animation.dict or 'amb@world_human_gardener_plant@male@base',
        anim = Config.Zones[z].animation and Config.Zones[z].animation.anim or 'base',
      },
      prop = Config.Zones[z].animation and Config.Zones[z].animation.prop or {}
    }, function(status)
        FreezeEntityPosition(PlayerPedId(), false)
        clientData.KD[z..'-'..p] = GetGameTimer()
        clientData.currentPoint = nil
        TriggerServerEvent('rury:harvest:finish', r)
    end)
  end
  if Config.ProgressBar == 'qb' then
    QBCore = exports['qb-core']:GetCoreObject()
    QBCore.Functions.Progressbar("harvest_task", Config.Zones[z].progressText, Config.Zones[z].harvestingTime, false, false, {
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
    }, {
      animDict = Config.Zones[z].animation and Config.Zones[z].animation.dict or 'amb@world_human_gardener_plant@male@base',
      anim = Config.Zones[z].animation and Config.Zones[z].animation.anim or 'base',
      flags = 0,
    }, (Config.Zones[z].animation and Config.Zones[z].animation.prop or {}), {}, function() -- Done
      FreezeEntityPosition(PlayerPedId(), false)
      clientData.KD[z..'-'..p] = GetGameTimer()
      clientData.currentPoint = nil
      TriggerServerEvent('rury:harvest:finish', r)
    end)
  end
end

--------------------------------------------------------------------------------------------

function showHelpNotification(msg)
	AddTextEntry('HelpNotification', msg)
	BeginTextCommandDisplayHelp('HelpNotification')
	EndTextCommandDisplayHelp(0, false, true, -1)
end

--------------------------------------------------------------------------------------------
