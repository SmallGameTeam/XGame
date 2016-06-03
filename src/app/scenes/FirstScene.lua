import("..includes.UserDataFunction")
import("..config.Config")
import("..config.InitData")
local TopShowNode = require("app.ui.TopShowNode")

local lastCalTime = os.time()

local FirstScene = class("FirstScene", function()
    return display.newScene("FirstScene")
end)
-- 主要计算逻辑 暂定每3秒执行一次
function FirstScene:tick(dt)
    local nowTime = os.time()
    if nowTime - lastCalTime > 3 then
        lastCalTime = lastCalTime + 3;
        -- 先计算工厂的产出
        local output = {}
        for k,_ in pairs(data.factory) do
            --calOutput 计算工厂的产出
            local o = calOutput(k,data,config) 
            for _,vv in ipairs(o) do
                if not output[vv.name] then
                    output[vv.name] = 0
                end
                output[vv.name] = output[vv.name] + vv.value
            end
        end

        --将工厂的产出添加到持有资源data.product
        addOutput(output,data)

        -- TODO remove log
        local outputStr = "total output "
        for k,v in pairs(output) do
            outputStr = outputStr .. " <" .. k .. " = " .. v .. ">"
        end
        print(outputStr)
        -- TODO remove log

        -- 再计算食物分配
        local popGens = calRequiredSupply(data,config)

        -- 再根据食物的分配计算人口增长
        local popGrowth = calPopGrowth(popGens,data,config)

        --对工作人口进行重新分配
        reDistributeWorker(data,config)

        -- TODO 最后计算人口之间的转化
        
    end
end

function FirstScene:ctor()
	self.uiLayer = display.newLayer()
	self:addChild(self.uiLayer)
	local uiBg = display.newScale9Sprite("BlueBlock.png")
	uiBg:setContentSize(display.width,display.height)
	uiBg:setAnchorPoint(cc.p(0,0))
	self.uiLayer:addChild(uiBg,-1)
end

function FirstScene:onEnter()
    --self:addNodeEventListener(cc.NODE_ENTER_FRAME_EVENT, handler(self, self.tick))
    --self:scheduleUpdate()
    local tags = {}
    for k,v in pairs(data.product) do
        table.insert(tags, k)
    end
    table.insert(tags, 1, "pop")

    for i,v in ipairs(tags) do
        local nod = TopShowNode.new({title=v}):addTo(self.uiLayer)
        nod:pos(TopShowNode.COLUMN_PADDING * i + (i - 1) * TopShowNode.DEFAULT_WIDTH, display.top - 10 - TopShowNode.DEFAULT_HEIGHT)
        nod:refresh({amount=1000,amountChange=-1000})
    end
    --self.popShowArea_ = TopShowNode.new({title="pop"}):addTo(self.uiLayer)
    --self.popShowArea_:pos(10, display.top - 10 - TopShowNode.DEFAULT_HEIGHT)
end

function FirstScene:showPop()

end

function FirstScene:showFactory()

end

function FirstScene:onExit()
end



return FirstScene
