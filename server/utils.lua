local ESX = nil
local QBCore = nil

Citizen.CreateThread(function()
    if GetResourceState('es_extended') == 'started' then
        ESX = exports['es_extended']:getSharedObject()
    end
    if GetResourceState('qb-core') == 'started' then
        QBCore = exports['qb-core']:GetCoreObject()
    end
end)

function GetPlayerIdentifier(src)
    if ESX then
        local Player = ESX.GetPlayerFromId(src)
        return Player.identifier
    end
    if QBCore then
        local Player = QBCore.Functions.GetPlayer(src)
        return Player.PlayerData.citizenid
    end
    return
end

function AddInventoryItem(src, item, count)
    if ESX then
        local Player = ESX.GetPlayerFromId(src)
        if Player.canCarryItem(item, count) then
            Player.addInventoryItem(item, count)
            return true
        else
            return false
        end
    end
    if QBCore then
        local Player = QBCore.Functions.GetPlayer(src)
        if Player.Functions.AddItem(item, count) then
            return true
        else
            return false
        end
    end
    return false
end

function GetItemLabel(item)
    if ESX then
        return ESX.GetItemLabel(item)
    end
    if QBCore then
        return QBCore.Shared.Items[item] and QBCore.Shared.Items[item].label
    end
    return 'error'
end