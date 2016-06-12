import("..includes.UserDataFunction")
local FactoryShowNode = class("FactoryShowNode", function()
    local node = display.newNode()
    return node
end)

FactoryShowNode.DEFAULT_WIDTH = 400
FactoryShowNode.COLUMN_PADDING = 10
FactoryShowNode.ROW_PADDING = 5

FactoryShowNode.DEFAULT_BUTTON_WIDTH = 60
FactoryShowNode.DEFAULT_BUTTON_HEIGHT = 60
FactoryShowNode.DEFAULT_COLUMN_HEIGHT = 20

FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH = 400
FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT = 100

FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH = FactoryShowNode.DEFAULT_WIDTH - 2 * FactoryShowNode.COLUMN_PADDING
FactoryShowNode.DEFAULT_DETAIL_INFO_HEIGHT = 130

FactoryShowNode.BUTTON_IMAGE = "Button01.png"
FactoryShowNode.BG_IMAGE = "GreenScale9Block.png"
FactoryShowNode.SHOW_DETAIL_BUTTON_IMAGE = "arrow_down.png"
FactoryShowNode.HIDE_DETAIL_BUTTON_IMAGE = "arrow_up.png"

function FactoryShowNode:ctor(params)
	self.params = params
	self.showDetail_ = true
	
	--简述界面
	self.shortInfoNode_ = display.newNode():addTo(self)
	--背景
	self.shortBgImage_ = display.newScale9Sprite(FactoryShowNode.BG_IMAGE):addTo(self.shortInfoNode_,0)

	--降级按钮
	self.downButton_ = cc.ui.UIPushButton.new(FactoryShowNode.BUTTON_IMAGE)
		:setButtonLabel("normal", cc.ui.UILabel.new({text="缩小规模",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}))
		:setButtonSize(FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_BUTTON_HEIGHT)
		:onButtonClicked(function()
            self:downLevel()
        end):addTo(self.shortInfoNode_,1)
    --升级按钮
    self.upButton_ = cc.ui.UIPushButton.new(FactoryShowNode.BUTTON_IMAGE)
		:setButtonLabel("normal", cc.ui.UILabel.new({text="扩大规模",color=display.COLOR_WHITE,size=12,align = display.CENTER}))
		:setButtonSize(FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_BUTTON_HEIGHT)
		:onButtonClicked(function()
            self:upLevel()
        end):addTo(self.shortInfoNode_,1)

	--标题
    self.titleLabel_ = display.newTTFLabel({text = self.params.title, size = 16, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
    --规模
	self.levelLabel_ = display.newTTFLabel({text = "规模:1", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	--产出
	self.outputLabel_ = display.newTTFLabel({text = "产出物:食物", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	--产出效率
	self.outputRateLabel_ = display.newTTFLabel({text = "效率:45%", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	--预计产出
	self.outputEstimateLabel_ = display.newTTFLabel({text = "预计产出:食物(300)", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	--详情展开按钮
	self.showDetailButton_ = cc.ui.UIPushButton.new(FactoryShowNode.SHOW_DETAIL_BUTTON_IMAGE)
		:setButtonSize(60, 20)
		:onButtonClicked(function()
            -- self:downLevel()
        end):addTo(self.shortInfoNode_)

	--详述界面
	self.detailInfoNode_ = display.newNode():addTo(self)
	--背景
	self.detailBgImage_ = display.newScale9Sprite(FactoryShowNode.BG_IMAGE):addTo(self.detailInfoNode_,0)
    --详情隐藏按钮
	self.hideDetailButton_ = cc.ui.UIPushButton.new(FactoryShowNode.HIDE_DETAIL_BUTTON_IMAGE)
		:setButtonSize(60, 20)
		:onButtonClicked(function()
            -- self:downLevel()
        end):addTo(self.detailInfoNode_)

    --实际产出
    self.actualOutputLabel_ = display.newTTFLabel({text = "产出:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口1
    self.pop1Label_ = display.newTTFLabel({text = "--:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口1变化
    self.pop1ChangeLabel_ = display.newTTFLabel({text = "--:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口2
    self.pop2Label_ = display.newTTFLabel({text = "--:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口2变化
    self.pop2ChangeLabel_ = display.newTTFLabel({text = "--:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口3
    self.pop3Label_ = display.newTTFLabel({text = "--:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
    --人口3变化
    self.pop3ChangeLabel_ = display.newTTFLabel({text = "--:--", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.detailInfoNode_)
	self:posInit()
end

function FactoryShowNode:getTitle()
	return self.params.title
end

function FactoryShowNode:posInit()
	local width_ = FactoryShowNode.DEFAULT_WIDTH
	local height_
	local showDetailHeight_
	if self.showDetail_ then
		height_ = FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT + FactoryShowNode.DEFAULT_DETAIL_INFO_HEIGHT
		showDetailHeight_ = FactoryShowNode.DEFAULT_DETAIL_INFO_HEIGHT
	else
		height_ = FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT
		showDetailHeight_ = 0
	end

	--设置content宽高
	self:setContentSize(width_,height_)
	
	--设置背景图
	self.shortBgImage_:setContentSize(width_, FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT)
	self.shortBgImage_:align(display.BOTTOM_LEFT, 0, 0)
    
    --设置简述界面
    self.shortInfoNode_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH,FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT)
    self.shortInfoNode_:align(display.BOTTOM_LEFT, 0 , showDetailHeight_)

    --设置降级按钮
    self.downButton_:size(FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_BUTTON_HEIGHT)
    self.downButton_:align(display.BOTTOM_LEFT, FactoryShowNode.COLUMN_PADDING, (FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT - FactoryShowNode.DEFAULT_BUTTON_HEIGHT) / 2)
    self.downButton_:setButtonLabelOffset(-15,-10)

    --设置升级按钮
    self.upButton_:size(FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_BUTTON_HEIGHT)
    self.upButton_:align(display.BOTTOM_LEFT, FactoryShowNode.DEFAULT_WIDTH - FactoryShowNode.DEFAULT_BUTTON_WIDTH - FactoryShowNode.COLUMN_PADDING, self.downButton_:getPositionY())
    self.upButton_:setButtonLabelOffset(-15,-10)

    --设置标题
	self.titleLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH - 2 * FactoryShowNode.DEFAULT_BUTTON_WIDTH - 4 * FactoryShowNode.COLUMN_PADDING, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.titleLabel_:align(display.CENTER, FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2, FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT - FactoryShowNode.ROW_PADDING - FactoryShowNode.DEFAULT_COLUMN_HEIGHT/2)

	--设置规模
	self.levelLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 2.5 - FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.levelLabel_:align(display.BOTTOM_LEFT,FactoryShowNode.COLUMN_PADDING * 2 + FactoryShowNode.DEFAULT_BUTTON_WIDTH , FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT - FactoryShowNode.ROW_PADDING * 2 - FactoryShowNode.DEFAULT_COLUMN_HEIGHT * 2)

	--设置产出
	self.outputLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 2.5 - FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.outputLabel_:align(display.BOTTOM_LEFT,FactoryShowNode.DEFAULT_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 0.5 , self.levelLabel_:getPositionY())

	--设置预计产出效率
	self.outputRateLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 2.5 - FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.outputRateLabel_:align(display.BOTTOM_LEFT,self.levelLabel_:getPositionX() , self.outputLabel_:getPositionY() - FactoryShowNode.ROW_PADDING - FactoryShowNode.DEFAULT_COLUMN_HEIGHT)

	--设置预计产出值
	self.outputEstimateLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 2.5 - FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.outputEstimateLabel_:align(display.BOTTOM_LEFT,self.outputLabel_:getPositionX() , self.outputRateLabel_:getPositionY())

	--设置详情展示按钮
    self.showDetailButton_:align(display.CENTER,FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2, self.outputEstimateLabel_:getPositionY() - FactoryShowNode.ROW_PADDING - FactoryShowNode.DEFAULT_COLUMN_HEIGHT / 2)

    --设置详述界面
    self.detailInfoNode_:size(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH,FactoryShowNode.DEFAULT_DETAIL_INFO_HEIGHT)
    self.detailInfoNode_:align(display.BOTTOM_LEFT, FactoryShowNode.COLUMN_PADDING , 0)

    --设置背景图
	self.detailBgImage_:setContentSize(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH, showDetailHeight_)
	self.detailBgImage_:align(display.BOTTOM_LEFT, 0, 0)

	--设置隐藏按钮
	self.hideDetailButton_:align(display.CENTER,FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2, FactoryShowNode.DEFAULT_DETAIL_INFO_HEIGHT - FactoryShowNode.DEFAULT_COLUMN_HEIGHT / 2)

	--设置实际产出
    self.actualOutputLabel_:size(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH - FactoryShowNode.COLUMN_PADDING * 4, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    self.actualOutputLabel_:align(display.BOTTOM_LEFT,FactoryShowNode.COLUMN_PADDING * 2 , FactoryShowNode.DEFAULT_DETAIL_INFO_HEIGHT - FactoryShowNode.ROW_PADDING - FactoryShowNode.DEFAULT_COLUMN_HEIGHT * 2)
    --设置人口1
    self.pop1Label_:size(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 4, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop1Label_:align(display.BOTTOM_LEFT,FactoryShowNode.COLUMN_PADDING * 2 , self.actualOutputLabel_:getPositionY() - FactoryShowNode.ROW_PADDING - FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    --设置人口1变化
    self.pop1ChangeLabel_:size(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 4, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop1ChangeLabel_:align(display.BOTTOM_LEFT,FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 + FactoryShowNode.COLUMN_PADDING * 2 , self.pop1Label_:getPositionY())
    --设置人口2
    self.pop2Label_:size(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 4, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop2Label_:align(display.BOTTOM_LEFT,self.pop1Label_:getPositionX() , self.pop1ChangeLabel_:getPositionY() - FactoryShowNode.ROW_PADDING - FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    --设置人口2变化
    self.pop2ChangeLabel_:size(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 4, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop2ChangeLabel_:align(display.BOTTOM_LEFT,self.pop1ChangeLabel_:getPositionX() , self.pop2Label_:getPositionY())
    --设置人口3
    self.pop3Label_:size(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 4, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop3Label_:align(display.BOTTOM_LEFT,self.pop1Label_:getPositionX() , self.pop2ChangeLabel_:getPositionY() - FactoryShowNode.ROW_PADDING - FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    --设置人口3变化
    self.pop3ChangeLabel_:size(FactoryShowNode.DEFAULT_DETAIL_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 4, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
    self.pop3ChangeLabel_:align(display.BOTTOM_LEFT,self.pop1ChangeLabel_:getPositionX() , self.pop3Label_:getPositionY())

    if self.showDetail_ then
    	self.detailInfoNode_:show()
    	self.showDetailButton_:hide()
    else
    	self.detailInfoNode_:hide()
    	self.showDetailButton_:show()
    end
end

function FactoryShowNode:refresh(key,refreshData,his)
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

function FactoryShowNode:upLevel()
	data.factory[self.params.title].level = data.factory[self.params.title].level + 1
	self:refresh(self.params.title,data.factory[self.params.title],data.history[1])
end

function FactoryShowNode:downLevel()
	data.factory[self.params.title].level = data.factory[self.params.title].level - 1
	self:refresh(self.params.title,data.factory[self.params.title],data.history[1])
end

return FactoryShowNode