RegisterServerEvent('rury:harvest:finish', function(name)
    local src = source
    local identifier = GetPlayerIdentifier(src)
    local vipBonus
    if GetResourceState('rury_vip') == 'started' then
        local vip = exports['rury_vip']:getVip(xPlayer.identifier)
        if vip and vip.privilege and vip.privilege.harvest_bonus then
            vipBonus = vip.privilege.harvest_bonus
        end
    end
    local item, count = exports['rury_random']:getRandomRewardWithCounts(Config.Rewards[name], vipBonus)
    if AddInventoryItem(item, count) then
        Notify(src, Locale('you_got'):format(count, GetItemLabel(item)), 'info')
    else
        Notify(src, Locale('inventory_full'), 'info')
    end
end)

function Notify(src, msg, type)
    TriggerClientEvent('rury:harvestzones:notify', src, msg, type)
end