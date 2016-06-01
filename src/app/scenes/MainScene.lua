local UILayer = require("app.layers.UILayer")
import("..includes.functions")

config = {
    farmer = {
        name = "农民",
        class = 1,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,

    },
    labor = {
        name = "劳工",
        class = 1,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    skilled_worker = {
        name = "技工",
        class = 1,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    handicraftsmen = {
        name = "手工业者",
        class = 2,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    staff = {
        name = "职员",
        class = 1,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    soldier = {
        name = "士兵",
        class = 1,
        food_require = 1,
        alcohol_require = 2,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    officer = {
        name = "军官",
        class = 2,
        food_require = 1,
        alcohol_require = 2,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    scholar = {
        name = "学者",
        class = 2,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    civil_servants = {
        name = "公务员",
        class = 2,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },      
    noble = {
        name = "贵族",
        class = 3,
        food_require = 2,
        alcohol_require = 2,
        jewelry_require = 2,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    capitalist = {
        name = "资本家",
        class = 3,
        food_require = 2,
        alcohol_require = 2,
        jewelry_require = 2,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    monk = {
        name = "僧侣",
        class = 2,
        food_require = 1,
        alcohol_require = 1,
        jewelry_require = 1,
        food_growth = 1.01,
        alc_growth = 0.02,
        jew_groth = 0.01,
    },
    farm = {
        {
            input = {
                {
                    name = "food",
                    value = 100
                }
            },
            pop = {
                {
                    name = "farmer",
                    value = 100
                }
            },
            output = {
                {
                    name = "food",
                    value = 150
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
                {
                    name = "capitalist",
                    value = 1
                },
                {
                    name = "scholar",
                    value = 2
                },
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
}

jobs = {"farmer","labor","skilled_worker","handicraftsmen","staff","soldier","officer","scholar","civil_servants","noble","capitalist","monk"}
factorys = {"farm","bank","brewery","factory","government","handicraft","temple","university","workshop"}


data = {
    pop={
        farmer = 100,
        labor = 100,
        skilled_worker = 100,
        handicraftsmen = 100,
        staff = 100,
        soldier = 100,
        officer = 100,
        scholar = 100,
        civil_servants = 100,
        noble = 100,
        capitalist = 100,
        monk = 100
    },
    factory = {
        farm = {
            level = 1,
            pop = {100,0,0}
        },
        bank = {
            level = 1,
            pop = {1,2,10}
        },
        brewery = {
            level = 1,
            pop = {1,2,10}
        },
        factory = {
            level = 1,
            pop = {1,2,10}
        },
        government = {
            level = 1,
            pop = {1,2,10}
        },
        handicraft = {
            level = 1,
            pop = {1,2,10}
        },
        temple = {
            level = 1,
            pop = {1,2,10}
        },
        university = {
            level = 1,
            pop = {1,2,10}
        },
        workshop = {
            level = 1,
            pop = {1,2,10}
        }
    },
    product = {
        food=400,
        pdtRate0 = 0,
        alcohol=0,
        IC=0,
        cash=0,
        jewelry=0,
        rp=0
    }
}

local lastCalTime = os.time()

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:tick(dt)
    local nowTime = os.time()
    if nowTime - lastCalTime > 3 then
        print(lastCalTime)
        lastCalTime = lastCalTime + 3;
        -- 先计算工厂的产出
        local output = {}
        for _,v in ipairs(factorys) do
            local o = calOutput(v) 
            for _,vv in ipairs(o) do
                if not output[vv.name] then
                    output[vv.name] = 0
                end
                output[vv.name] = output[vv.name] + vv.value
            end
        end

        addOutput(output)

        local outputStr = "total output"
        for k,v in pairs(output) do
            outputStr = outputStr .. " " .. k .. " " .. v
        end
        print(outputStr)

        -- TODO 再计算食物分配







        -- TODO 再根据食物的分配计算人口增长

        -- TODO 最后计算人口之间的转化
        
    end
end

function addOutput(output)
    for k,v in pairs(output) do
        data.product[key] = data.product[key] + v
    end
end

function calRequiredSupply()
    local popWeights = {}   --人群所占资源分配的权重
    local totalWeight = 0   --总权重
    local foodNeedTotal = 0 
    local returnResult = {}
    for k,v in pairs(data.pop) do
        if v > 0 then
            popWeights[k] = v * config[k].class
            totalWeight = totalWeight + v * config[k].class
            foodNeedTotal = foodNeedTotal + v * config[k].food_require
        end
    end

    returnResult.food_supply = {}
    --如果食物满足需求,则所有人的食物供应为100%
    if data.product.food >= foodNeedTotal then
        for k,v in pairs(data.pop) do
            returnResult.food_supply[k] = 1
        end
    else


    end


    


    --计算food供应
    local avgWeightFood = data.product.food / totalWeight

    local popFoodAvgSupplys = {}
    for k,v in pairs(popWeights) do
        popFoodAvgSupplys[k] = avgWeightFood * v / data.pop[k]


    end

    --计算alcohol供应


    --计算珠宝供应



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
                return 0
            end 
        end
        for i,v in ipairs(c[f.level].output) do
            out[i] = {}
            out[i].name = v.name
            out[i].value = v.value * rate
        end
    end
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
