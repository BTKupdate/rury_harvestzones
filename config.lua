Config = {}
Config.Notify = 'gta' -- gta | okokNotify
Config.Lang = 'en'
Config.Locales = {}
Config.ProgressBar = 'mythic' -- mythic | qb

Config.Zones = {
    ['scrapyard1'] = {
        location = vector3(2382.32,3059.16,48.2),
        radius = 50.0,
        reward = 'scrapmetal',
        text3d = 'Press ~INPUT_CONTEXT~ to harvest',
        progressText = 'Harvesting..',
        harvestingTime = 10000,
        animation = {
            dict = 'amb@world_human_gardener_plant@female@base',
            anim = 'base_female',
            prop = {}
        },
        blip = {
            show = true,
            sprite = 478,
            size = 0.8,
            color = 3,
            text = 'Junkyard'
        },
        marker = {
            type = 2,
            size = {x = 0.4, y = 0.4, z = 0.4},
            color = {r = 100, g = 255, b = 0},
            alpha = 180
        },
        points = {
            vector3(2390.04,3071.68,48.92),
            vector3(2399.6,3082.72,48.64),
            vector3(2416.72,3088.72,49.08),
            vector3(2411.76,3115.56,48.24),
            vector3(2394.0,3050.8,48.72),
            vector3(2360.04,3065.36,48.16)
        }
    },
    ['scrapyard2'] = {
        location = vector3(-548.32,-1666.8,19.2),
        radius = 100.0,
        reward = 'garbage',
        text3d = 'Press ~INPUT_CONTEXT~ to harvest',
        progressText = 'Harvesting..',
        harvestingTime = 10000,
        animation = {
            dict = 'amb@world_human_gardener_plant@female@base',
            anim = 'base_female',
            prop = {}
        },
        blip = {
            show = true,
            sprite = 478,
            size = 0.8,
            color = 3,
            text = 'Junkyard'
        },
        marker = {
            type = 2,
            size = {x = 0.4, y = 0.4, z = 0.4},
            color = {r = 100, g = 255, b = 0},
            alpha = 180
        },
        points = {
            vector3(-548.52,-1676.0,19.56),
            vector3(-567.88,-1673.28,19.44),
            vector3(-584.92,-1689.76,19.6),
            vector3(-541.6,-1664.12,19.4),
            vector3(-584.8,-1679.44,19.6),
            vector3(-596.72,-1667.0,19.48),
            vector3(-573.4,-1658.52,19.8),
            vector3(-591.52,-1655.04,19.8),
            vector3(-605.12,-1677.44,19.64),
            vector3(-544.16,-1653.12,19.32),
            vector3(-539.36,-1621.28,17.8),
            vector3(-539.36,-1633.96,19.04),
            vector3(-521.2,-1626.36,17.8),
            vector3(-512.4,-1628.96,17.8),
            vector3(-500.0,-1636.8,17.8),
            vector3(-493.8,-1652.72,17.8),
            vector3(-485.16,-1643.64,17.8),
            vector3(-491.16,-1678.32,19.44),
            vector3(-484.36,-1686.84,19.76),
            vector3(-490.08,-1694.24,19.28),
            vector3(-502.2,-1701.04,19.32),
            vector3(-512.56,-1696.68,19.44),
            vector3(-533.28,-1697.64,19.36),
        }
    },
    ['scrapyard3'] = {
        location = vector3(1539.52,-2132.12,79.84),
        radius = 80.0,
        reward = 'scrapmetal',
        text3d = 'Press ~INPUT_CONTEXT~ to harvest',
        progressText = 'Harvesting..',
        harvestingTime = 10000,
        animation = {
            dict = 'amb@world_human_gardener_plant@female@base',
            anim = 'base_female',
            prop = {}
        },
        blip = {
            show = true,
            sprite = 478,
            size = 0.8,
            color = 3,
            text = 'Junkyard'
        },
        marker = {
            type = 2,
            size = {x = 0.4, y = 0.4, z = 0.4},
            color = {r = 100, g = 255, b = 0},
            alpha = 180
        },
        points = {
            vector3(1536.44,-2135.28,77.56),
            vector3(1544.68,-2148.08,77.52),
            vector3(1523.48,-2150.2,77.44),
            vector3(1502.8,-2151.64,77.32),
            vector3(1498.4,-2139.12,76.48),
            vector3(1498.12,-2127.52,77.4),
            vector3(1504.28,-2123.76,76.36),
            vector3(1509.84,-2137.6,76.6),
            vector3(1537.16,-2125.88,76.92),
            vector3(1538.76,-2114.0,76.96),
            vector3(1559.32,-2120.84,78.64),
            vector3(1558.48,-2127.68,78.16),
            vector3(1548.36,-2134.2,77.32)
        }
    },
    ['lumberyard_woodlogs'] = {
        location = vector3(-566.12,5490.44,65.88),
        radius = 150.0,
        reward = 'lumberyard_woodlogs',
        text3d = 'Press ~INPUT_CONTEXT~ to chop tree',
        progressText = 'Cutting..',
        harvestingTime = 10000,
        animation = {
            dict = 'melee@large_wpn@streamed_variations',
            anim = 'plyr_front_takedown_bat_r_waisthit',
            prop = {
                model = "prop_w_me_hatchet",
                bone = 28422,
                coords = { x = 0.0, y = 0.1, z = 0.0 },
                rotation = { x = -80.0, y = 0.0, z = 0.0 }
            }
        },
        blip = {
            show = false,
            -- sprite = 478,
            -- size = 0.8,
            -- color = 3,
            -- text = 'Junkyard'
        },
        marker = {
            type = 2,
            size = {x = 0.4, y = 0.4, z = 0.4},
            color = {r = 100, g = 255, b = 0},
            alpha = 180
        },
        points = {
            vector3(-563.16,5457.24,63.16),
            vector3(-560.12,5460.48,63.6),
            vector3(-538.44,5482.88,65.72),
            vector3(-537.08,5490.0,64.88),
            vector3(-540.52,5491.84,63.64),
            vector3(-572.56,5467.92,61.44),
            vector3(-577.36,5469.24,60.6),
            vector3(-579.48,5471.52,59.72),
            vector3(-567.24,5502.0,57.6),
            vector3(-572.6,5510.04,55.64)
        }
    },
    ['chiken_factory'] = {
        location = vector3(-67.36,6242.12,31.08),
        radius = 30.0,
        reward = 'chicken',
        text3d = 'Press ~INPUT_CONTEXT~ to get chicken',
        progressText = 'Getting chicken..',
        harvestingTime = 10000,
        animation = {
            dict = 'anim@heists@narcotics@trash',
            anim = 'pickup',
            prop = {}
        },
        blip = {
            show = false,
            -- sprite = 478,
            -- size = 0.8,
            -- color = 3,
            -- text = 'Junkyard'
        },
        marker = {
            type = 2,
            size = {x = 0.4, y = 0.4, z = 0.4},
            color = {r = 100, g = 255, b = 0},
            alpha = 180
        },
        points = {
            vector3(-68.32,6248.44,31.08),
            vector3(-64.8,6245.8,31.08),
            vector3(-62.92,6241.52,31.08),
            vector3(-60.48,6238.0,31.08),
            vector3(-64.72,6235.12,31.08),
            vector3(-66.56,6237.04,31.08)
        }
    },
    ['raven_factory'] = {
        location = vector3(975.88,-2186.16,33.2),
        radius = 30.0,
        reward = 'cows',
        text3d = 'Press ~INPUT_CONTEXT~ to get cow',
        progressText = 'Getting cow..',
        harvestingTime = 10000,
        animation = {
            dict = 'anim@heists@narcotics@trash',
            anim = 'pickup',
            prop = {}
        },
        blip = {
            show = false,
            -- sprite = 478,
            -- size = 0.8,
            -- color = 3,
            -- text = 'Junkyard'
        },
        marker = {
            type = 2,
            size = {x = 0.4, y = 0.4, z = 0.4},
            color = {r = 100, g = 255, b = 0},
            alpha = 180
        },
        points = {
            vector3(970.12,-2183.88,29.96),
            vector3(973.2,-2184.2,29.96),
            vector3(979.12,-2184.72,29.96),
            vector3(982.76,-2185.08,29.96),
            vector3(991.2,-2184.04,30.68)
        }
    },
    ['coal_mining'] = {
        location = vector3(2809.12,2640.96,37.08),
        radius = 30.0,
        reward = 'coal',
        text3d = 'Press ~INPUT_CONTEXT~ to mine coal',
        progressText = 'Mining coal..',
        harvestingTime = 10000,
        animation = {
            dict = 'melee@large_wpn@streamed_core',
            anim = 'ground_attack_0',
            prop = {
                model = "prop_tool_pickaxe",
                bone = 28422,
                coords = { x = 0.05, y = 0.0, z = 0.0 },
                rotation = { x = -105.0, y = -170.0, z = 20.0 }
            }
        },
        blip = {
            show = false,
            -- sprite = 478,
            -- size = 0.8,
            -- color = 3,
            -- text = 'Junkyard'
        },
        marker = {
            type = 2,
            size = {x = 0.4, y = 0.4, z = 0.4},
            color = {r = 100, g = 255, b = 0},
            alpha = 180
        },
        points = {
            vector3(2809.88,2650.84,38.0),
            vector3(2801.76,2644.16,38.72),
            vector3(2794.64,2637.0,37.32),
            vector3(2795.72,2630.48,40.28),
            vector3(2805.92,2632.76,40.88),
            vector3(2822.0,2633.48,40.32),
            vector3(2820.92,2648.64,40.36)
        }
    },
}

Config.Rewards = {
    ['scrapmetal'] = {
        chance = { -- The higher the number, the higher the chance of a drop
            basic = 300,
            low = 150,
            med = 20,
            high = 5,
            prem = 2,
            god = 1
        },
        rewards = {
            basic = {
                {'scrapmetal', {[math.random(1,2)] = 100, [math.random(3,6)] = 3}},
            },
            low = {
                {'scrapmetal', {[math.random(3,5)] = 100, [math.random(6,9)] = 3}},
            },
            med = {
                {'treasuremap', {[1] = 1}},
                {'jewelrybox', {[1] = 1}},
            },
            high = {
                {'markedbills', {[1] = 1}},
            },
            prem = {
                {'deluxetreasuremap', {[1] = 1}},
            },
            god = {
                {'vanpogo', {[1] = 1}},
            }
        }
    },
    ['garbage'] = {
        chance = { -- The higher the number, the higher the chance of a drop
            basic = 300,
            low = 100,
            med = 50,
            high = 5,
            prem = 2,
            god = 2
        },
        rewards = {
            basic = {
                {'plastic', {[math.random(1,2)] = 100, [math.random(3,6)] = 3}},
            },
            low = {
                {'aluminum', {[math.random(3,5)] = 100, [math.random(6,9)] = 3}},
            },
            med = {
                {'spring', {[1] = 1}},
                {'screw', {[math.random(2,3)] = 100, [math.random(3,7)] = 3}},
            },
            high = {
                {'treasuremap', {[1] = 1}},
            },
            prem = {
                {'deluxetreasuremap', {[1] = 1}},
                {'kuz_rarecoin', {[1] = 1}},
            },
            god = {
                {'vanpogo', {[1] = 1}},
            }
        }
    },
    ['lumberyard_woodlogs'] = {
        chance = { -- The higher the number, the higher the chance of a drop
            basic = 1,
        },
        rewards = {
            basic = {
                {'woodlog', {[1] = 100}},
            }
        }
    },
    ['chicken'] = {
        chance = { -- The higher the number, the higher the chance of a drop
            basic = 1,
        },
        rewards = {
            basic = {
                {'alive_chicken', {[1] = 100}},
            }
        }
    },
    ['cows'] = {
        chance = { -- The higher the number, the higher the chance of a drop
            basic = 1,
        },
        rewards = {
            basic = {
                {'alive_cow', {[1] = 100}},
            }
        }
    },
    ['coal'] = {
        chance = { -- The higher the number, the higher the chance of a drop
            basic = 1,
        },
        rewards = {
            basic = {
                {'coal', {[1] = 100}},
            }
        }
    }
}

function Locale(name)
    return Config.Locales[Config.Lang] and (Config.Locales[Config.Lang][name] and Config.Locales[Config.Lang][name] or name) or name
end