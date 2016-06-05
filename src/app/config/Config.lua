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
                    value = 10
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
                    value = 20
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
                    value = 50
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
                    value = 100
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
                    value = 150
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
                    value = 250
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
                    value = 800
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
                    value = 1000
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
                    value = 2000
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
                    value = 5000
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