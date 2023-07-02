function Notify(msg, type)
    if Config.Notify == 'gta' then
        if type == 'info' then 
            SetNotificationTextEntry('STRING')
            AddTextComponentString(msg)
            DrawNotification(0,1)
        end
        if type == 'error' then 
            SetNotificationTextEntry('STRING')
            AddTextComponentString(msg)
            DrawNotification(0,1)
        end
        if type == 'success' then 
            SetNotificationTextEntry('STRING')
            AddTextComponentString(msg)
            DrawNotification(0,1)
        end
    end
    if Config.Notify == 'okokNotify' then
        if type == 'info' then 
            exports['okokNotify']:Alert('', msg, 7500, 'info')
        end
        if type == 'error' then 
            exports['okokNotify']:Alert('', msg, 7500, 'error')
        end
        if type == 'success' then 
            exports['okokNotify']:Alert('', msg, 7500, 'success')
        end
    end
end

RegisterNetEvent('rury:harvestzones:notify', function(msg, type)
    Notify(msg, type)
end)