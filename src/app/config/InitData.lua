--玩家数据
data = {
    --人群
    pop={
        farmer = 1000,
        labor = 1000,
        skilled_worker = 1000,
        handicraftsmen = 1000,
        staff = 1000,
        soldier = 1000,
        officer = 1000,
        scholar = 1000,
        civil_servants = 1000,
        noble = 1000,
        capitalist = 1000,
        monk = 1000
    },
    --工厂
    factory = {
        farm = {
            level = 1,
            pop = {100}
        },
        bank = {
            level = 1,
            pop = {1,2,10}  --工人数组 第一位代表config中的pop的第一个人群的数量 第二位代表第二个
        },
        brewery = {
            level = 1,
            pop = {10}
        },
        factory = {
            level = 1,
            pop = {1,100,50}
        },
        government = {
            level = 1,
            pop = {100}
        },
        handicraft = {
            level = 1,
            pop = {100}
        },
        temple = {
            level = 1,
            pop = {100}
        },
        university = {
            level = 1,
            pop = {100}
        },
        workshop = {
            level = 1,
            pop = {10,100}
        }
    },
    --玩家持有产品
    product = {
        food=10000000,
        alcohol=1000000,
        IC=0,
        cash=0,
        jewelry=1000000,
        RP=0
    },
    --计算历史记录
    history = {
        -- {
        --     pop = {
        --         pop = {
        --             growth_rate = 0.45,
        --             add = 100
        --         },
        --         farmer = {
        --             growth_rate = 0.45,
        --             add = 100,
        --             food_supply = 0.45,
        --             alcohol_supply = 0.45,
        --             jewelry_supply = 0.45
        --         },
        --     },
        --     factory = {
        --         farm = {
        --             output = {

        --             },
        --             pop = {100}
        --         },
        --         bank = {
        --             output = {
                        
        --             },
        --             pop = {1,2,10}  --工人数组 第一位代表config中的pop的第一个人群的数量 第二位代表第二个
        --         },
        --         brewery = {
        --             level = 1,
        --             pop = {10}
        --         },
        --         factory = {
        --             level = 1,
        --             pop = {1,100,50}
        --         },
        --         government = {
        --             level = 1,
        --             pop = {100}
        --         },
        --         handicraft = {
        --             level = 1,
        --             pop = {100}
        --         },
        --         temple = {
        --             level = 1,
        --             pop = {100}
        --         },
        --         university = {
        --             level = 1,
        --             pop = {100}
        --         },
        --         workshop = {
        --             level = 1,
        --             pop = {10,100}
        --         }
        --     },
        --     product = {
        --         food=10000000,
        --         alcohol=1000000,
        --         IC=0,
        --         cash=0,
        --         jewelry=1000000,
        --         RP=0
        --     }
        -- }
    }
}