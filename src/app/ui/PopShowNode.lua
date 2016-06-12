import("..includes.UserDataFunction")
local PopShowNode = class("PopShowNode", function()
    local node = display.newNode()
    return node
end)

PopShowNode.DEFAULT_WIDTH = 400
PopShowNode.COLUMN_PADDING = 10
PopShowNode.ROW_PADDING = 5

PopShowNode.DEFAULT_COLUMN_HEIGHT = 20

PopShowNode.DEFAULT_SHORT_INFO_WIDTH = 400
PopShowNode.DEFAULT_SHORT_INFO_HEIGHT = 100

PopShowNode.DEFAULT_DETAIL_INFO_WIDTH = PopShowNode.DEFAULT_WIDTH - 2 * PopShowNode.COLUMN_PADDING
PopShowNode.DEFAULT_DETAIL_INFO_HEIGHT = 150

PopShowNode.BG_IMAGE = "GreenScale9Block.png"
PopShowNode.SHOW_DETAIL_BUTTON_IMAGE = "arrow_down.png"
PopShowNode.HIDE_DETAIL_BUTTON_IMAGE = "arrow_up.png"

function PopShowNode:ctor(params)
	self.params = params
	self.showDetail_ = true
	
	--简述界面
	self.shortInfoNode_ = display.newNode():addTo(self)
	--背景
	self.shortBgImage_ = display.newScale9Sprite(PopShowNode.BG_IMAGE):addTo(self.shortInfoNode_,0)

	--标题
    self.titleLabel_ = display.newTTFLabel({text = self.params.title, size = 16, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
    --人口总数
	self.totalLabel_ = display.newTTFLabel({text = "人口总数:1", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	--人口增长
	self.addLabel_ = display.newTTFLabel({text = "人口增长:1", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	--增长率
	self.addRateLabel_ = display.newTTFLabel({text = "增长率:1%", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	--详情展开按钮
	self.showDetailButton_ = cc.ui.UIPushButton.new(PopShowNode.SHOW_DETAIL_BUTTON_IMAGE)
		:setButtonSize(60, 20)
		:onButtonClicked(function()
            -- self:downLevel()
        end):addTo(self.shortInfoNode_)

	--详述界面
	self.detailInfoNode_ = display.newNode():addTo(self)
	--背景
	self.detailBgImage_ = display.newScale9Sprite(PopShowNode.BG_IMAGE):addTo(self.detailInfoNode_,0)
    --详情隐藏按钮
	self.hideDetailButton_ = cc.ui.UIPushButton.new(PopShowNode.HIDE_DETAIL_BUTTON_IMAGE)
		:setButtonSize(60, 20)
		:onButtonClicked(function()
            -- self:downLevel()
        end):addTo(self.detailInfoNode_)

    --食物供给总量
    self.foodSupplyLabel_ = display.newTTFLabel({text = "食物供给总量:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --食物人均供给
    self.foodSupplyAvgLabel_ = display.newTTFLabel({text = "食物人均供给:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --酒精供给总量
    self.alcSupplyLabel_ = display.newTTFLabel({text = "酒精供给总量:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --酒精人均供给
    self.alcSupplyAvgLabel_ = display.newTTFLabel({text = "酒精人均供给:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --珠宝供给总量
    self.jewSupplyLabel_ = display.newTTFLabel({text = "珠宝供给总量:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --珠宝人均供给
    self.jewSupplyAvgLabel_ = display.newTTFLabel({text = "珠宝人均供给:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口分配1
    self.pop1Label_ = display.newTTFLabel({text = "", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口分配2
    self.pop2Label_ = display.newTTFLabel({text = "", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口分配3
    self.pop3Label_ = display.newTTFLabel({text = "", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口分配4
    self.pop4Label_ = display.newTTFLabel({text = "", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
	self:posInit()
end

function PopShowNode:getTitle()
	return self.params.title
end

function PopShowNode:posInit()
	local width_ = PopShowNode.DEFAULT_WIDTH
	local height_
	local showDetailHeight_
	if self.showDetail_ then
		height_ = PopShowNode.DEFAULT_SHORT_INFO_HEIGHT + PopShowNode.DEFAULT_DETAIL_INFO_HEIGHT
		showDetailHeight_ = PopShowNode.DEFAULT_DETAIL_INFO_HEIGHT
	else
		height_ = PopShowNode.DEFAULT_SHORT_INFO_HEIGHT
		showDetailHeight_ = 0
	end

	--设置content宽高
	self:setContentSize(width_,height_)
	
	--设置背景图
	self.shortBgImage_:setContentSize(width_, PopShowNode.DEFAULT_SHORT_INFO_HEIGHT)
	self.shortBgImage_:align(display.BOTTOM_LEFT, 0, 0)
    
    --设置简述界面
    self.shortInfoNode_:size(PopShowNode.DEFAULT_SHORT_INFO_WIDTH,PopShowNode.DEFAULT_SHORT_INFO_HEIGHT)
    self.shortInfoNode_:align(display.BOTTOM_LEFT, 0 , showDetailHeight_)

    --设置标题
	self.titleLabel_:size(PopShowNode.DEFAULT_SHORT_INFO_WIDTH - 2 * PopShowNode.COLUMN_PADDING, PopShowNode.DEFAULT_COLUMN_HEIGHT)
	self.titleLabel_:align(display.CENTER, PopShowNode.DEFAULT_SHORT_INFO_WIDTH / 2, PopShowNode.DEFAULT_SHORT_INFO_HEIGHT - PopShowNode.ROW_PADDING - PopShowNode.DEFAULT_COLUMN_HEIGHT/2)

	--设置人口总数
	self.totalLabel_:size(PopShowNode.DEFAULT_SHORT_INFO_WIDTH - PopShowNode.COLUMN_PADDING * 4, PopShowNode.DEFAULT_COLUMN_HEIGHT)
	self.totalLabel_:align(display.BOTTOM_LEFT,PopShowNode.COLUMN_PADDING * 2 , PopShowNode.DEFAULT_SHORT_INFO_HEIGHT - PopShowNode.ROW_PADDING * 2 - PopShowNode.DEFAULT_COLUMN_HEIGHT * 2)

	--设置人口增长
	self.addLabel_:size(PopShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
	self.addLabel_:align(display.BOTTOM_LEFT,PopShowNode.COLUMN_PADDING , PopShowNode.DEFAULT_SHORT_INFO_HEIGHT - PopShowNode.ROW_PADDING * 3 - PopShowNode.DEFAULT_COLUMN_HEIGHT * 3)

	--设置人口增长率
	self.addRateLabel_:size(PopShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
	self.addRateLabel_:align(display.BOTTOM_LEFT,PopShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING, self.addLabel_:getPositionY())

	--设置详情展示按钮
    self.showDetailButton_:align(display.CENTER,PopShowNode.DEFAULT_SHORT_INFO_WIDTH / 2, self.outputEstimateLabel_:getPositionY() - PopShowNode.ROW_PADDING - PopShowNode.DEFAULT_COLUMN_HEIGHT / 2)

    --设置详述界面
    self.detailInfoNode_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH,PopShowNode.DEFAULT_DETAIL_INFO_HEIGHT)
    self.detailInfoNode_:align(display.BOTTOM_LEFT, PopShowNode.COLUMN_PADDING , 0)

    --设置背景图
	self.detailBgImage_:setContentSize(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH, showDetailHeight_)
	self.detailBgImage_:align(display.BOTTOM_LEFT, 0, 0)

	--设置隐藏按钮
	self.hideDetailButton_:align(display.CENTER,PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2, PopShowNode.DEFAULT_DETAIL_INFO_HEIGHT - PopShowNode.DEFAULT_COLUMN_HEIGHT / 2)

	--设置食物供给总量
    self.foodSupplyLabel_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.foodSupplyLabel_:align(display.BOTTOM_LEFT,PopShowNode.COLUMN_PADDING , PopShowNode.DEFAULT_DETAIL_INFO_HEIGHT - PopShowNode.ROW_PADDING - PopShowNode.DEFAULT_COLUMN_HEIGHT * 2)
    --设置食物平均供给
    self.foodSupplyAvgLabel_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.foodSupplyAvgLabel_:align(display.BOTTOM_LEFT,PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING , self.foodSupplyLabel_:getPositionY())
    --设置酒精供给总量
    self.alcSupplyLabel_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.alcSupplyLabel_:align(display.BOTTOM_LEFT,self.foodSupplyLabel_:getPositionX() , self.foodSupplyLabel_:getPositionY() - PopShowNode.ROW_PADDING - PopShowNode.DEFAULT_COLUMN_HEIGHT)
    --设置酒精平均供给
    self.alcSupplyAvgLabel_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.alcSupplyAvgLabel_:align(display.BOTTOM_LEFT,self.foodSupplyAvgLabel_:getPositionX() , self.alcSupplyLabel_:getPositionY())
    --设置珠宝供给总量
    self.jewSupplyLabel_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.jewSupplyLabel_:align(display.BOTTOM_LEFT,self.foodSupplyLabel_:getPositionX() , self.alcSupplyLabel_:getPositionY() - PopShowNode.ROW_PADDING - PopShowNode.DEFAULT_COLUMN_HEIGHT)
    --设置珠宝平均供给
    self.jewSupplyAvgLabel_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.jewSupplyAvgLabel_:align(display.BOTTOM_LEFT,self.foodSupplyAvgLabel_:getPositionX() , self.jewSupplyLabel_:getPositionY())
    --设置人口分配1
    self.pop1Label_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop1Label_:align(display.BOTTOM_LEFT,self.foodSupplyLabel_:getPositionX() , self.jewSupplyLabel_:getPositionY() - PopShowNode.ROW_PADDING - PopShowNode.DEFAULT_COLUMN_HEIGHT)
    --设置人口分配2
    self.pop2Label_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop2Label_:align(display.BOTTOM_LEFT,self.foodSupplyAvgLabel_:getPositionX() , self.pop1Label_:getPositionY())
    --设置人口分配3
    self.pop3Label_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop3Label_:align(display.BOTTOM_LEFT,self.foodSupplyLabel_:getPositionX() , self.pop1Label_:getPositionY() - PopShowNode.ROW_PADDING - PopShowNode.DEFAULT_COLUMN_HEIGHT)
    --设置人口分配2
    self.pop4Label_:size(PopShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - PopShowNode.COLUMN_PADDING * 2, PopShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop4Label_:align(display.BOTTOM_LEFT,self.foodSupplyAvgLabel_:getPositionX() , self.pop3Label_:getPositionY())

    if self.showDetail_ then
    	self.detailInfoNode_:show()
    	self.showDetailButton_:hide()
    else
    	self.detailInfoNode_:hide()
    	self.showDetailButton_:show()
    end
end

function PopShowNode:refresh(key,refreshData,his)
	self.level_ = refreshData.level
	-- 显示当前工厂等级
	self.levelLabel_:setString("规模:" .. refreshData.level)
	

	-- 计算效率
	local rate = calOutputRate(config[key], data.factory[key])
	local showRate = string.format("%.2f", rate) * 100
	self.outputRateLabel_:setString("效率:" .. showRate .. "%")

	-- 计算预计效率

	local outputString = "产出物:"
	local outputEstimateString = "预计产出:"
	for _,v in ipairs(config[key][refreshData.level].output) do
		outputString = outputString .. v.name .. ","
		outputEstimateString = outputEstimateString .. v.name .. "(" .. getIntPart(v.value * rate) .. "),"
	end
	self.outputLabel_:setString(string.sub(outputString, 1, -2))
	self.outputEstimateLabel_:setString(string.sub(outputEstimateString, 1, -2))

	if refreshData.level < 1 then
		self.downButton_:setButtonEnabled(false)
	else
		self.downButton_:setButtonEnabled(true)
	end

	if refreshData.level >= 10 then
		self.upButton_:setButtonEnabled(false)
	else
		self.upButton_:setButtonEnabled(true)
	end

	local outputActualString = "产出:--"
	local pop1LabelString = "--:--"
	local pop1LabelChangeString = "--:--"
	local pop2LabelString = "--:--"
	local pop2LabelChangeString = "--:--"
	local pop3LabelString = "--:--"
	local pop3LabelChangeString = "--:--"
	if his then
		if his.factory and his.factory[self.params.title] and his.factory[self.params.title].output then
			outputActualString = "实际产出:"
			for _,v in ipairs(his.factory[self.params.title].output) do
				outputActualString = outputActualString .. v.name .. "(" .. v.value .. "),"
			end
			outputActualString = string.sub(outputActualString, 1, -2)
		end


		if his.factory and his.factory[self.params.title] and his.factory[self.params.title].pop then
			if config[key][refreshData.level] and config[key][refreshData.level].pop[1] then
				pop1LabelString = config[key][refreshData.level].pop[1].name .. ":" .. refreshData.pop[1] .. "/" .. config[key][refreshData.level].pop[1].value
				pop1LabelChangeString = "变化:"
				local changeVal = 0
				for _,v in ipairs(his.factory[self.params.title].pop) do
					if v.name == config[key][refreshData.level].pop[1].name then
						changeVal = v.value
						
						break
					end
				end
				pop1LabelChangeString = pop1LabelChangeString .. changeVal
			end

			if config[key][refreshData.level] and config[key][refreshData.level].pop[2] then
				pop2LabelString = config[key][refreshData.level].pop[2].name .. ":" .. refreshData.pop[2] .. "/" .. config[key][refreshData.level].pop[2].value
				pop2LabelChangeString = "变化:"
				local changeVal = 0
				for _,v in ipairs(his.factory[self.params.title].pop) do
					if v.name == config[key][refreshData.level].pop[2].name then
						changeVal = v.value
						break
					end
				end
				pop2LabelChangeString = pop2LabelChangeString .. changeVal
			end

			if config[key][refreshData.level] and config[key][refreshData.level].pop[3] then
				pop3LabelString = config[key][refreshData.level].pop[3].name .. ":" .. refreshData.pop[3] .. "/" .. config[key][refreshData.level].pop[3].value
				pop3LabelChangeString = "变化:"
				local changeVal = 0
				for _,v in ipairs(his.factory[self.params.title].pop) do
					if v.name == config[key][refreshData.level].pop[3].name then
						changeVal = v.value
						break
					end
				end
				pop3LabelChangeString = pop3LabelChangeString .. changeVal
			end
		end
	end
	self.actualOutputLabel_:setString(outputActualString)
	self.pop1Label_:setString(pop1LabelString)
	self.pop2Label_:setString(pop2LabelString)
	self.pop3Label_:setString(pop3LabelString)
	self.pop1ChangeLabel_:setString(pop1LabelChangeString)
	self.pop2ChangeLabel_:setString(pop2LabelChangeString)
	self.pop3ChangeLabel_:setString(pop3LabelChangeString)

end

function PopShowNode:upLevel()
	data.factory[self.params.title].level = data.factory[self.params.title].level + 1
	self:refresh(self.params.title,data.factory[self.params.title],data.history[1])
end

function PopShowNode:downLevel()
	data.factory[self.params.title].level = data.factory[self.params.title].level - 1
	self:refresh(self.params.title,data.factory[self.params.title],data.history[1])
end

return PopShowNode