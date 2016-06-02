local UILayer = require("app.layers.UILayer")
import("..includes.functions")

--数值配置
config = {
    farmer = {
        name = "农民",
        class = 1, --权重比
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,

    },
    labor = {
        name = "劳工",
        class = 1,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    skilled_worker = {
        name = "技工",
        class = 1,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    handicraftsmen = {
        name = "手工业者",
        class = 2,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    staff = {
        name = "职员",
        class = 1,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    soldier = {
        name = "士兵",
        class = 1,
        food_require = 1,
        alcohol_require = 2,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    officer = {
        name = "军官",
        class = 2,
        food_require = 1,
        alcohol_require = 2,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    scholar = {
        name = "学者",
        class = 2,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    civil_servants = {
        name = "公务员",
        class = 2,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },      
    noble = {
        name = "贵族",
        class = 3,
        food_require = 2,
        alcohol_require = 2,
        jewelry_require = 2,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    capitalist = {
        name = "资本家",
        class = 3,
        food_require = 2,
        alcohol_require = 2,
        jewelry_require = 2,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    monk = {
        name = "僧侣",
        class = 2,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 0.03,
        alc_growth = 0.02,
        jew_growth = 0.01,
    },
    --农场
    farm = {
        -- level 1
        {
            --升级所需资源
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            --最大工作人口
            pop = {
                --pop1
                {
                    name = "farmer",
                    value = 100
                }
            },
            --最大产出
            output = {
                {
                    name = "food",
                    value = 150
                }
            }
            
        },
        -- level 2
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 500
                }
            },
            output = {
                {
                    name = "food",
                    value = 750
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 2500
                }
            },
            output = {
                {
                    name = "food",
                    value = 3750
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 12500
                }
            },
            output = {
                {
                    name = "food",
                    value = 18750
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 62500
                }
            },
            output = {
                {
                    name = "food",
                    value = 93750
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 312500
                }
            },
            output = {
                {
                    name = "food",
                    value = 468750
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 1562500
                }
            },
            output = {
                {
                    name = "food",
                    value = 2343750
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 7812500
                }
            },
            output = {
                {
                    name = "food",
                    value = 11718750
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 39062500
                }
            },
            output = {
                {
                    name = "food",
                    value = 58593750
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 195312500
                }
            },
            output = {
                {
                    name = "food",
                    value = 292968750
                }
            }
        }
    },
    bank = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                --pop1
                {
                    name = "capitalist",
                    value = 1
                },
                --pop2
                {
                    name = "scholar",
                    value = 2
                },
                --pop3
                {
                    name = "staff",
                    value = 10
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.04
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 2
                },
                {
                    name = "scholar",
                    value = 6
                },
                {
                    name = "staff",
                    value = 50
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.06
                }
            }
        },
        {

            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 4
                },
                {
                    name = "scholar",
                    value = 18
                },
                {
                    name = "staff",
                    value = 250
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.08
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 8
                },
                {
                    name = "scholar",
                    value = 54
                },
                {
                    name = "staff",
                    value = 1250
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.1
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 16
                },
                {
                    name = "scholar",
                    value = 162
                },
                {
                    name = "staff",
                    value = 6250
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.11
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 32
                },
                {
                    name = "scholar",
                    value = 486
                },
                {
                    name = "staff",
                    value = 31250
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.12
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 64
                },
                {
                    name = "scholar",
                    value = 1458
                },
                {
                    name = "staff",
                    value = 156250
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.13
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 128
                },
                {
                    name = "scholar",
                    value = 4374
                },
                {
                    name = "staff",
                    value = 7812500
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.14
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 256
                },
                {
                    name = "scholar",
                    value = 13122
                },
                {
                    name = "staff",
                    value = 3906250
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.15
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 512
                },
                {
                    name = "scholar",
                    value = 39366
                },
                {
                    name = "staff",
                    value = 19531250
                }
            },
            output = {
                {
                    name = "pdtRate0",
                    value = 0.16
                }
            }
        }
    },
    brewery = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 10
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 100
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 50
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 340
                }
            }
        },
        {

            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 250
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 940
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 1250
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 2940
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 6250
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 6440
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 31250
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 13940
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 156250
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 28940
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 781250
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 53940
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 3906250
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 116440
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "labor",
                    value = 19531250
                }
            },
            output = {
                {
                    name = "alcohol",
                    value = 272690
                }
            }
        }
    },
    factory = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 1
                },
                {
                    name = "skilled_worker",
                    value = 100
                },
                {
                    name = "staff",
                    value = 50
                }
            },
            output = {
                {
                    name = "IC",
                    value = 20
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 4
                },
                {
                    name = "skilled_worker",
                    value = 800
                },
                {
                    name = "staff",
                    value = 300
                }
            },
            output = {
                {
                    name = "IC",
                    value = 77
                }
            }
        },
        {

            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 16
                },
                {
                    name = "skilled_worker",
                    value = 6400
                },
                {
                    name = "staff",
                    value = 1800
                }
            },
            output = {
                {
                    name = "IC",
                    value = 293
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 56
                },
                {
                    name = "skilled_worker",
                    value = 44800
                },
                {
                    name = "staff",
                    value = 9450
                }
            },
            output = {
                {
                    name = "IC",
                    value = 973
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 196
                },
                {
                    name = "skilled_worker",
                    value = 313600
                },
                {
                    name = "staff",
                    value = 49613
                }
            },
            output = {
                {
                    name = "IC",
                    value = 2653
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 588
                },
                {
                    name = "skilled_worker",
                    value = 181600
                },
                {
                    name = "staff",
                    value = 223256
                }
            },
            output = {
                {
                    name = "IC",
                    value = 5789
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 1470
                },
                {
                    name = "skilled_worker",
                    value = 9408000
                },
                {
                    name = "staff",
                    value = 837211
                }
            },
            output = {
                {
                    name = "IC",
                    value = 11081
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 2940
                },
                {
                    name = "skilled_worker",
                    value = 37632000
                },
                {
                    name = "staff",
                    value = 2511633
                }
            },
            output = {
                {
                    name = "IC",
                    value = 18431
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 4410
                },
                {
                    name = "skilled_worker",
                    value = 112896000
                },
                {
                    name = "staff",
                    value = 5651174
                }
            },
            output = {
                {
                    name = "IC",
                    value = 25781
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "capitalist",
                    value = 6615
                },
                {
                    name = "skilled_worker",
                    value = 338688000
                },
                {
                    name = "staff",
                    value = 12715141
                }
            },
            output = {
                {
                    name = "IC",
                    value = 36806
                }
            }
        }
    },
    government = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 100
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.0001
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 600
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.00012
                }
            }
        },
        {

            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 3600
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.00014
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 18900
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.00016
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 99225
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.00018
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 446513
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.0002
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 1674422
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.00022
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 5023266
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.00024
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 11302348
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.00026
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "civil_servants",
                    value = 25430282
                }
            },
            output = {
                {
                    name = "cash",
                    value = 0.00028
                }
            }
        }
    },
    handicraft = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 100
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 250
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 600
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 1000
                }
            }
        },
        {

            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 3600
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 3250
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 18900
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 10900
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 99225
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 24956
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 446513
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 51003
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 1674422
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 87840
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 5023266
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 121329
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 11302348
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 152724
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 25430282
                }
            },
            output = {
                {
                    name = "jewelry",
                    value = 188044
                }
            }
        }
    },
    temple = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 100
                }
            },
            output = {
                {
                    name = "RP",
                    value = 500
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 600
                }
            },
            output = {
                {
                    name = "RP",
                    value = 2000
                }
            }
        },
        {

            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 3600
                }
            },
            output = {
                {
                    name = "RP",
                    value = 6500
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 18900
                }
            },
            output = {
                {
                    name = "RP",
                    value = 21800
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 99225
                }
            },
            output = {
                {
                    name = "RP",
                    value = 49913
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 446513
                }
            },
            output = {
                {
                    name = "RP",
                    value = 102006
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 1674422
                }
            },
            output = {
                {
                    name = "RP",
                    value = 175681
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 5023266
                }
            },
            output = {
                {
                    name = "RP",
                    value = 242658
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 11302348
                }
            },
            output = {
                {
                    name = "RP",
                    value = 305449
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "monk",
                    value = 25430282
                }
            },
            output = {
                {
                    name = "RP",
                    value = 376088
                }
            }
        }
    },
    university = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 100
                }
            },
            output = {
                {
                    name = "RP",
                    value = 1000
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 600
                }
            },
            output = {
                {
                    name = "RP",
                    value = 4000
                }
            }
        },
        {

            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 3600
                }
            },
            output = {
                {
                    name = "RP",
                    value = 7000
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 18900
                }
            },
            output = {
                {
                    name = "RP",
                    value = 13120
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 99225
                }
            },
            output = {
                {
                    name = "RP",
                    value = 21152
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 446513
                }
            },
            output = {
                {
                    name = "RP",
                    value = 28098
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 1674422
                }
            },
            output = {
                {
                    name = "RP",
                    value = 35465
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 5023266
                }
            },
            output = {
                {
                    name = "RP",
                    value = 48861
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 11302348
                }
            },
            output = {
                {
                    name = "RP",
                    value = 61419
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "scholar",
                    value = 25430282
                }
            },
            output = {
                {
                    name = "RP",
                    value = 75547
                }
            }
        }
    },
    workshop = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 10
                },
                {
                    name = "labor",
                    value = 100
                }

            },
            output = {
                {
                    name = "IC",
                    value = 20
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 50
                },
                {
                    name = "labor",
                    value = 500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 60
                }
            }
        },
        {

            input = {
                {
                    name = "food",
                    value = 2500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 250
                },
                {
                    name = "labor",
                    value = 2500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 260
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 12500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 1250
                },
                {
                    name = "labor",
                    value = 12500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 660
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 62500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 6250
                },
                {
                    name = "labor",
                    value = 62500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 1660
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 312500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 31250
                },
                {
                    name = "labor",
                    value = 312500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 3660
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 1562500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 156250
                },
                {
                    name = "labor",
                    value = 1562500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 6160
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 7812500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 781250
                },
                {
                    name = "labor",
                    value = 7812500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 11160
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 39062500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 3906250
                },
                {
                    name = "labor",
                    value = 39062500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 18035
                }
            }
        },
        {
            input = {
                {
                    name = "food",
                    value = 195312500
                }
            },
            pop = {
                {
                    name = "handicraftsmen",
                    value = 19531250
                },
                {
                    name = "labor",
                    value = 195312500
                }

            },
            output = {
                {
                    name = "IC",
                    value = 27410
                }
            }
        }
    },
}

jobs = {"farmer","labor","skilled_worker","handicraftsmen","staff","soldier","officer","scholar","civil_servants","noble","capitalist","monk"}
factorys = {"farm","bank","brewery","factory","government","handicraft","temple","university","workshop"}

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
        pdtRate0 = 0,
        alcohol=1000000,
        IC=0,
        cash=0,
        jewelry=1000000,
        RP=0
    }
}

local lastCalTime = os.time()

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)
-- 主要计算逻辑 暂定每3秒执行一次
function MainScene:tick(dt)
    local nowTime = os.time()
    if nowTime - lastCalTime > 3 then
        print(lastCalTime)
        lastCalTime = lastCalTime + 3;
        -- 先计算工厂的产出
        local output = {}
        for _,v in ipairs(factorys) do
            --calOutput 计算工厂的产出
            local o = calOutput(v) 
            for _,vv in ipairs(o) do
                if not output[vv.name] then
                    output[vv.name] = 0
                end
                output[vv.name] = output[vv.name] + vv.value
            end
        end

        --将工厂的产出添加到持有资源data.product
        addOutput(output)

        local outputStr = "total output "
        for k,v in pairs(output) do
            outputStr = outputStr .. " <" .. k .. " = " .. v .. ">"
        end
        print(outputStr)

        -- 再计算食物分配
        local popGens = calRequiredSupply()

        -- 再根据食物的分配计算人口增长
        local popGrowth = calPopGrowth(popGens)

        --对工作人口进行重新分配
        reDistributeWorker()

        -- TODO 最后计算人口之间的转化
        
    end
end

function reDistributeWorker()
    --将所有工厂同种人口相加得到当前工作人群总值,超出当前人口的进行减员,少于当前人口的时候,
    --如果工厂有此类人群职位空缺,则补充此类人群到工厂的此职位中
    --当工厂已经满载,所有工厂同种人群相加后仍未达到人口数的,认为是失业人群
    local totalWorkedPop = {}
    for k,v in pairs(data.factory) do
        for i,vv in ipairs(config[k][v.level].pop) do
            if not totalWorkedPop[vv.name] then
                totalWorkedPop[vv.name] = data.factory[k].pop[i]
            else
                totalWorkedPop[vv.name] = totalWorkedPop[vv.name] + data.factory[k].pop[i]
            end
        end
    end

    --调整工厂人数
    for k,v in pairs(totalWorkedPop) do
        local change =  data.pop[k] - v
        if change < 0 then
            --工厂减人
            for kk,vv in pairs(data.factory) do
                if change == 0 then
                        break
                end
                for i,iv in ipairs(config[kk][vv.level].pop) do
                    if change == 0 then
                        break
                    end
                    if iv.name == k then
                        if vv.pop[i] > 0 then
                            if vv.pop[i] + change > 0 then
                                vv.pop[i] = vv.pop[i] + change
                                print("factory[" .. kk .."] add <" .. k .. "=" .. change .. ">")
                                change = 0
                            else
                                change = change + vv.pop[i]
                                print("factory[" .. kk .."] add <" .. k .. "=" .. -1 * vv.pop[i] .. ">")
                                vv.pop[i] = 0
                            end
                        end
                        break
                    end
                end
            end
        elseif change > 0 then
            --工厂加人
            for kk,vv in pairs(data.factory) do
                if change == 0 then
                    break
                end
                for i,iv in ipairs(config[kk][vv.level].pop) do
                    if change == 0 then
                        break
                    end
                    if iv.name == k then
                        if vv.pop[i] < iv.value then
                            if vv.pop[i] + change <= iv.value then
                                vv.pop[i] = vv.pop[i] + change
                                print("factory[" .. kk .."] add <" .. k .. "=" .. change .. ">")
                                change = 0
                            else
                                change = change - (iv.value - vv.pop[i])
                                print("factory[" .. kk .."] add <" .. k .. "=" .. iv.value - vv.pop[i] .. ">")
                                vv.pop[i] = iv.value
                            end
                        end
                        break
                    end
                end
            end
        end
    end
end

function addOutput(output)
    for k,v in pairs(output) do
        data.product[k] = data.product[k] + v
    end
end

function calPopGrowth(popGens)
    --将所有人口的粮食供应情况一一进行人口增长计算
    local popGrowth = {}
    for k,v in pairs(data.pop) do
        local growth = 0
        --该人口有获得食物分配
        local foodSupply = popGens.food_supply[k]
        if foodSupply then
            local alcoholSupply = popGens.alcohol_supply[k]
            local jewelrySupply = popGens.jewelry_supply[k]
            --当供应率大于0.5时,食物提供的人口是正增长
            --当供应率小于0.5时,食物提供的人口是负增长
            popGrowth[k] = ((foodSupply - 0.5) / 0.5  * config[k].food_growth + 
                    alcoholSupply * config[k].alc_growth + jewelrySupply * config[k].jew_growth) * data.pop[k]
        else
            popGrowth[k] = -1 * data.pop[k]
        end
    end

    --添加/减少人口
    local p = "pop add "
    for k,v in pairs(popGrowth) do
        data.pop[k] = data.pop[k] + v
        p = p .. " <".. k .. "=" .. v .. ">"
    end
    print(p)

    return popGrowth
end

function calRequiredSupply()
    local popWeights = {}   --人群所占资源分配的权重
    local totalWeight = 0   --总权重
    local foodNeedTotal = 0 
    local alcoholNeedTotal = 0
    local jewelryNeedTotal = 0
    local returnResult = {}
    for k,v in pairs(data.pop) do
        if v > 0 then
            popWeights[k] = v * config[k].class
            totalWeight = totalWeight + v * config[k].class
            foodNeedTotal = foodNeedTotal + v * config[k].food_require
            alcoholNeedTotal = alcoholNeedTotal + v * config[k].alcohol_require
            jewelryNeedTotal = jewelryNeedTotal + v * config[k].jewelry_require
        end
    end

    returnResult.food_supply = {}
    --如果食物满足需求,则所有人的食物供应为100%
    if data.product.food >= foodNeedTotal then
        for k,v in pairs(data.pop) do
            returnResult.food_supply[k] = 1
        end
        data.product.food = data.product.food - foodNeedTotal
    else
        --计算food供应
        local avgWeightFood = data.product.food / totalWeight

        for k,v in pairs(popWeights) do
            local genFood = avgWeightFood * v / data.pop[k]  --每个人分到的粮食 = 每份权重分到的粮食 * 权重数 / 人群人口数
            returnResult.food_supply[k] = genFood / config[k].food_require --粮食供应比率 = 每个人分到的粮食 / 每个人需求的粮食
            -- 如果粮食供应比率超过1,则供应比为1
            -- 当粮食不够完全供应所有人群时,较高层次的人群会获得较高的权重分配,有可能会超出自身供应,
            -- 社会地位决定了更高阶层享有更多保障 例如:当有100农民和100资本家时,农民的粮食需求是1,权重是1,
            -- 资本家的粮食需求是2,权重是3,拥有存粮280,不足够给每个人群都满足(都满足时需要100*1 + 100*2 = 300)
            -- 此时,资本家和农民通过权重分配粮食:农民分配到的粮食=100 * 1 / (100 * 1 + 100 * 3) * 280 = 70
            -- 资本家分配到的粮食= 100 * 3 / (100 * 1 + 100 * 3) * 280 = 210.但是100资本家的全部需求粮食仅需要200
            -- 多出的10粮食将不会消耗,也不会流通到农民群体中去,这是地位的占有性。
            if returnResult.food_supply[k] > 1 then
                returnResult.food_supply[k] = 1
            end
            data.product.food = data.product.food - returnResult.food_supply[k] * config[k].food_require * data.pop[k]
        end
    end

    returnResult.alcohol_supply = {}
    --如果酒精满足需求,则所有人的酒精供应为100%
    if data.product.alcohol >= alcoholNeedTotal then
        for k,v in pairs(data.pop) do
            returnResult.alcohol_supply[k] = 1
        end
        data.product.alcohol = data.product.alcohol - alcoholNeedTotal
    else
        --计算alcohol供应
        local avgWeightAlcohol = data.product.alcohol / totalWeight

        for k,v in pairs(popWeights) do
            local genAlcohol = avgWeightAlcohol * v / data.pop[k]  
            returnResult.alcohol_supply[k] = genAlcohol / config[k].alcohol_require 
            if returnResult.alcohol_supply[k] > 1 then
                returnResult.alcohol_supply[k] = 1
            end
            data.product.alcohol = data.product.alcohol - returnResult.alcohol_supply[k] * config[k].alcohol_require * data.pop[k]
        end
    end

    returnResult.jewelry_supply = {}
    --如果珠宝满足需求,则所有人的珠宝供应为100%
    if data.product.jewelry >= jewelryNeedTotal then
        for k,v in pairs(data.pop) do
            returnResult.jewelry_supply[k] = 1
        end
        data.product.jewelry = data.product.jewelry - jewelryNeedTotal
    else
        --计算alcohol供应
        local avgWeightJewelry = data.product.jewelry / totalWeight

        for k,v in pairs(popWeights) do
            local genJewelry = avgWeightJewelry * v / data.pop[k]  
            returnResult.jewelry_supply[k] = genJewelry / config[k].jewelry_require 
            if returnResult.jewelry_supply[k] > 1 then
                returnResult.jewelry_supply[k] = 1
            end
            data.product.jewelry = data.product.jewelry - returnResult.jewelry_supply[k] * config[k].jewelry_require * data.pop[k]
        end
    end

    local x = "food supply "
    for k,v in pairs(returnResult.food_supply) do
        x = x .. "<" .. k .."=" .. v .. ">"
    end
    print(x)

    local y = "alcohol supply "
    for k,v in pairs(returnResult.alcohol_supply) do
        y = y .. "<" .. k .."=" .. v .. ">"
    end
    print(y)

    local z = "jewelry supply "
    for k,v in pairs(returnResult.jewelry_supply) do
        z = z .. "<" .. k .."=" .. v .. ">"
    end
    print(z)

    return returnResult
end

function calOutput(key)
    local rate = 0
    local f = data.factory[key]
    local c = config[key]
    local out = {}
    local rate = 0
    if f and c then 
        for i,v in ipairs(c[f.level].pop) do
            if f.pop[i] > 0 then
                local r = f.pop[i] / v.value
                if r > 1 then 
                    r=1 
                    f.pop[i] = v.value
                end
                
                if rate == 0 then
                    rate = r
                else
                    -- TODO different factory has different cal function
                    rate = math.min(rate, r)
                end
            else 
                return nil
            end 
        end
        for i,v in ipairs(c[f.level].output) do
            out[i] = {}
            out[i].name = v.name
            out[i].value = v.value * rate
        end
    end
    local p = "factory["..key .. "]"
    for i,v in ipairs(out) do
        p = p .. " output <" .. v.name .."=" .. v.value .. ">"
    end
    print(p)
    return out
end

function MainScene:ctor()
	self.uiLayer = display.newLayer()
	self:addChild(self.uiLayer)
	local uiBg = display.newScale9Sprite("menuBg.png")
	uiBg:setContentSize(display.width,display.height)
	uiBg:setAnchorPoint(cc.p(0,0))
	self.uiLayer:addChild(uiBg,-1)
    self:init()
	self:createMenu()
	self:createDetailPanel()


end

function MainScene:init()
    data.farmer = {}
    data.farmer.pop = 1000
    data.farmer.food_supply = 0
    data.farmer.alc_supply = 0
    data.farmer.jew_supply = 0
end

function MainScene:createMenu()
	self.menuBarNode = display.newNode()
	self.menuBarNode:setAnchorPoint(cc.p(0,0))
	self.menuBarNode:setContentSize(750,105)
	self.menuBarNode:pos(0,display.height - 105)
	-- local menuBarBg = display.newScale9Sprite("Button01.png")
	-- menuBarBg:setContentSize(750, 105)
	-- menuBarBg:setAnchorPoint(cc.p(0,0))
	-- self.menuBarNode:addChild(menuBarBg,-1)
	self.uiLayer:addChild(self.menuBarNode)
	self:createPeopleMenu()
	self:createEconomicMenu()
end

function MainScene:createPeopleMenu()
	local peopleMenuIcon = display.newScale9Sprite("peopleIcon.png")
	peopleMenuIcon:setContentSize(25, 25)
	peopleMenuIcon:setAnchorPoint(cc.p(0,0))
	peopleMenuIcon:pos(5,60)
	local peopleMenuBg = display.newScale9Sprite("GreenScale9Block.png")
    peopleMenuBg:setContentSize(180, 85)
    peopleMenuBg:setAnchorPoint(cc.p(0,0))
    local menuNameLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "人口", size = 14})
        :align(display.BOTTOM_LEFT, 30, 65)
    local peopleCountLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "总人口:31.95M", size = 12})
        :align(display.BOTTOM_LEFT, 10, 45)
    local eduRateLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "识字率:30%", size = 12})
        :align(display.BOTTOM_LEFT, 10, 25)
    local fightPointLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "斗争性:0.01", size = 12})
        :align(display.BOTTOM_LEFT, 10, 5)
    local spriteOpenLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "觉醒度:1.01", size = 12})
        :align(display.BOTTOM_LEFT, 100, 5)
	local peopleMenuNode = display.newNode()
	peopleMenuNode:setAnchorPoint(cc.p(0,0))
	peopleMenuNode:setContentSize(180,85)
	peopleMenuNode:pos(10,10)
	peopleMenuNode:addChild(peopleMenuBg, -1)
	peopleMenuNode:addChild(menuNameLabel)
	peopleMenuNode:addChild(peopleCountLabel)
	peopleMenuNode:addChild(eduRateLabel)
	peopleMenuNode:addChild(fightPointLabel)
	peopleMenuNode:addChild(spriteOpenLabel)
	peopleMenuNode:addChild(peopleMenuIcon)
	peopleMenuNode:setTouchEnabled(true)
	peopleMenuNode:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        return self:onMenuTouch("peopleMenu")
    end)
	self.menuBarNode:addChild(peopleMenuNode,999)
end

function MainScene:createEconomicMenu()
	local economicMenuIcon = display.newScale9Sprite("peopleIcon.png")
	economicMenuIcon:setContentSize(25, 25)
	economicMenuIcon:setAnchorPoint(cc.p(0,0))
	economicMenuIcon:pos(5,60)
	local economicMenuBg = display.newScale9Sprite("GreenScale9Block.png")
    economicMenuBg:setContentSize(180, 85)
    economicMenuBg:setAnchorPoint(cc.p(0,0))
    local menuNameLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "经济", size = 14})
        :align(display.BOTTOM_LEFT, 30, 65)
    local mustProductLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "必需品:100", size = 12})
        :align(display.BOTTOM_LEFT, 10, 45)
    local normalProductLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "日用品:100", size = 12})
        :align(display.BOTTOM_LEFT, 100, 45)
    local expansiveProductLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "奢侈品:100", size = 12})
        :align(display.BOTTOM_LEFT, 10, 25)
    local armyProductLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "军需品:100", size = 12})
        :align(display.BOTTOM_LEFT, 10, 5)
	local economicMenuNode = display.newNode()
	economicMenuNode:setAnchorPoint(cc.p(0,0))
	economicMenuNode:setContentSize(180,85)
	economicMenuNode:pos(200,10)
	economicMenuNode:addChild(economicMenuBg, -1)
	economicMenuNode:addChild(menuNameLabel)
	economicMenuNode:addChild(mustProductLabel)
	economicMenuNode:addChild(normalProductLabel)
	economicMenuNode:addChild(expansiveProductLabel)
	economicMenuNode:addChild(armyProductLabel)
	economicMenuNode:addChild(economicMenuIcon)
	economicMenuNode:setTouchEnabled(true)
	economicMenuNode:addNodeEventListener(cc.NODE_TOUCH_EVENT, function(event)
        return self:onMenuTouch("economicMenu")
    end)
	self.menuBarNode:addChild(economicMenuNode,999)
end

function MainScene:createDetailPanel()
	self.menuDetailPanel = display.newNode()
	self.menuDetailPanel:setAnchorPoint(cc.p(0,0))
	self.menuDetailPanel:setContentSize(display.width - 80,display.height - 180)
	self.menuDetailPanel:pos(40,40)
	local menuDetailPanelBg = display.newScale9Sprite("GreenScale9Block.png")
	menuDetailPanelBg:setContentSize(display.width - 80,display.height - 180)
	menuDetailPanelBg:setAnchorPoint(cc.p(0,0))
	self.menuDetailPanel:addChild(menuDetailPanelBg,-1)
	local exitButton = cc.ui.UIPushButton.new({normal = "#ExitButton.png"})
        :onButtonClicked(function()
            self:closeMenu()
        end)
    exitButton:pos(display.width - 80,display.height - 180)
    exitButton:setButtonSize(30,30)
    self.menuDetailPanel:addChild(exitButton)
    self.menuDetailPanel.panelLabel = cc.ui.UILabel.new({
            UILabelType = 2, text = "", size = 36})
        :align(display.BOTTOM_RIGHT, display.width - 120,display.height - 180)
    self.menuDetailPanel:addChild(self.menuDetailPanel.panelLabel)
    self.menuDetailPanel:hide()
	self.uiLayer:addChild(self.menuDetailPanel)
end

function MainScene:createPeopleDetail()
	self.menuDetailPanel.panelLabel:setString("人口")
	self.menuDetailPanel.contentNode = display.newNode()
	self.menuDetailPanel.contentNode:setAnchorPoint(cc.p(0,0))
	local contentWidth = display.width - 100
	local contentHeight = display.height - 200
	self.menuDetailPanel.contentNode:setContentSize(contentWidth,contentHeight)
	self.menuDetailPanel.contentNode:pos(10,10)
	self.menuDetailPanel:addChild(self.menuDetailPanel.contentNode,1,10000)
	local contentBg = display.newScale9Sprite("PinkScale9Block.png")
	contentBg:setContentSize(display.width - 100,display.height - 200)
	contentBg:setAnchorPoint(cc.p(0,0))
	self.menuDetailPanel.contentNode:addChild(contentBg, -1)


	local bWidth = (contentWidth - 20) / 13
	cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="职业",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="人口",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="食物",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 2*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="日用品",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 3*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="奢侈品",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 4*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="增长率",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 5*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="转化率",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 6*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)


    local listView = cc.ui.UIListView.new({
    	direction = cc.ui.UIScrollView.DIRECTION_VERTICAL,
    	-- bg="BlueBlock.png",
    	-- bgScale9=true,
    	viewRect=cc.rect(10, 10, contentWidth - 20, contentHeight - 60)
    	})
    listView:setAnchorPoint(cc.p(0,0))
    self.menuDetailPanel.contentNode:addChild(listView)

    for i=1,10 do
    	local item = listView:newItem()
    	item:setItemSize(contentWidth - 20, 30)
    	local content
    	content = display.newNode()
    	content:setContentSize(contentWidth - 20, 30)
    	content:setAnchorPoint(cc.p(0,0))
    	
    	content:addChild(cc.ui.UILabel.new({text="农民"..i,color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(0, 15))
    	content:addChild(cc.ui.UILabel.new({text="20".. i * 20,color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="0.75(1)",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(2*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="0.75(1)",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(3*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="0.75(1)",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(4*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="2%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(5*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="0.2%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(6*bWidth, 15))
    	
    	item:addContent(content)
    	listView:addItem(item)
    	print("add item")
    end
    listView:reload()
end

function MainScene:createEconomicDetail()
	self.menuDetailPanel.panelLabel:setString("经济")
	self.menuDetailPanel.contentNode = display.newNode()
	self.menuDetailPanel.contentNode:setAnchorPoint(cc.p(0,0))
	local contentWidth = display.width - 100
	local contentHeight = display.height - 200
	self.menuDetailPanel.contentNode:setContentSize(contentWidth,contentHeight)
	self.menuDetailPanel.contentNode:pos(10,10)
	self.menuDetailPanel:addChild(self.menuDetailPanel.contentNode,1,10000)
	local contentBg = display.newScale9Sprite("PinkScale9Block.png")
	contentBg:setContentSize(contentWidth,contentHeight)
	contentBg:setAnchorPoint(cc.p(0,0))
	self.menuDetailPanel.contentNode:addChild(contentBg, -1)

	local lWidth = ((contentWidth) / 2 - 20) / 5

	cc.ui.UILabel.new({text="资源产出",color=display.COLOR_WHITE,size=14,align = cc.ui.TEXT_ALIGN_CENTER}):align(display.CENTER,10 + 2*lWidth + lWidth/2, contentHeight - 15):addTo(self.menuDetailPanel.contentNode)
	
	cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="数量",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(lWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + lWidth / 2, contentHeight - 45)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="名称",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(lWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 1*lWidth + lWidth / 2, contentHeight - 45)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="产出地",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(lWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 2*lWidth + lWidth / 2, contentHeight - 45)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="产出者",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(lWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 3*lWidth + lWidth / 2, contentHeight - 45)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="产出效率",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(lWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 4*lWidth + lWidth / 2, contentHeight - 45)
        :addTo(self.menuDetailPanel.contentNode)


	-- local leftListView = cc.ui.UIListView.new({
 --    	direction = cc.ui.UIScrollView.DIRECTION_VERTICAL,
 --    	-- bg="BlueBlock.png",
 --    	-- bgScale9=true,
 --    	viewRect=cc.rect(10, 10, contentWidth - 20, contentHeight - 60)
 --    	})
 --    listView:setAnchorPoint(cc.p(0,0))
 --    self.menuDetailPanel.contentNode:addChild(listView)

	-- self.menuDetailPanel.contentNode.leftNode = display.newNode()
	-- self.menuDetailPanel.contentNode.leftNode:setAnchorPoint(cc.p(0,0))
	-- local leftWidth = (display.width - 100) / 2
	-- self.menuDetailPanel.contentNode.leftNode:setContentSize(leftWidth,contentHeight)
	-- self.menuDetailPanel.contentNode.leftNode:pos(0,0)
	-- self.menuDetailPanel.contentNode:addChild(self.menuDetailPanel.contentNode.leftNode)

	-- self.menuDetailPanel.contentNode.rightNode = display.newNode()
	-- self.menuDetailPanel.contentNode.rightNode:setAnchorPoint(cc.p(0,0))
	-- local rightWidth = (display.width - 100) / 2
	-- self.menuDetailPanel.contentNode.rightNode:setContentSize(rightWidth,contentHeight)
	-- self.menuDetailPanel.contentNode.rightNode:pos(rightWidth,0)
	-- self.menuDetailPanel.contentNode:addChild(self.menuDetailPanel.contentNode.rightNode)

	-- local lColWidth = leftWidth - 20



end

function MainScene:onMenuTouch(menuName)
	if menuName == "peopleMenu" then
		if not self.currentMenu_ then
			self:showPeopleMenu()
		elseif self.currentMenu_ ~= "peopleMenu" then
			self:clearPanelDetail()
			self:showPeopleMenu()
		else
			self:closeMenu()
		end
	elseif menuName == "economicMenu" then
		if not self.currentMenu_ then
			self:showEconomicMenu()
		elseif self.currentMenu_ ~= "economicMenu" then
			self:clearPanelDetail()
			self:showEconomicMenu()
		else
			self:closeMenu()
		end
	end
end

function MainScene:clearPanelDetail()
	self.menuDetailPanel.contentNode = nil
	self.menuDetailPanel:removeChildByTag(10000, cleanup)
	self.menuDetailPanel.panelLabel:setString("")
end


function MainScene:showPeopleMenu()
	self.currentMenu_ = "peopleMenu"
	self.menuDetailPanel:show()
	self:createPeopleDetail()
end

function MainScene:showEconomicMenu()
	self.currentMenu_ = "economicMenu"
	self.menuDetailPanel:show()
	self:createEconomicDetail()
end

function MainScene:closeMenu()
	self.currentMenu_ = nil
	self.menuDetailPanel:hide()
	-- self.uiBgNode:removeChild("MenuDetail", true)
end

function MainScene:onEnter()
    print("onEnter")
    self:addNodeEventListener(cc.NODE_ENTER_FRAME_EVENT, handler(self, self.tick))
    self:scheduleUpdate()
end

function MainScene:onExit()
end



return MainScene
