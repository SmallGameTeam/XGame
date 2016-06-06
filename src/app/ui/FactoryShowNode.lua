import("..includes.UserDataFunction")
local FactoryShowNode = class("FactoryShowNode", function()
    local node = display.newNode()
    return node
end)

FactoryShowNode.DEFAULT_WIDTH = 400
FactoryShowNode.DEFAULT_HEIGHT = 100
FactoryShowNode.COLUMN_PADDING = 5
FactoryShowNode.ROW_PADDING = 5

FactoryShowNode.DEFAULT_BUTTON_WIDTH = 60
FactoryShowNode.DEFAULT_BUTTON_HEIGHT = 60
FactoryShowNode.DEFAULT_COLUMN_HEIGHT = 20

FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH = 240
FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT = 100

FactoryShowNode.BUTTON_IMAGE = "Button01.png"
FactoryShowNode.BG_IMAGE = "GreenScale9Block.png"
FactoryShowNode.ARROW_UP = "arrow_up.png"
FactoryShowNode.ARROW_NO_CHANGE = "arrow_no_change.png"
FactoryShowNode.ARROW_DOWN = "arrow_down.png"
FactoryShowNode.DETAIL_BUTTON_IMAGE = "arrow_down.png"
FactoryShowNode.CLOSE_BUTTON_IMAGE = "arrow_up.png"

function FactoryShowNode:ctor(params)
	self.params = params
	self:posInit()
end

function FactoryShowNode:posInit()
	self:setContentSize(FactoryShowNode.DEFAULT_WIDTH,FactoryShowNode.DEFAULT_HEIGHT)
	self.bgImage_ = display.newScale9Sprite(FactoryShowNode.BG_IMAGE):addTo(self,0)
	self.bgImage_:setContentSize(FactoryShowNode.DEFAULT_WIDTH, FactoryShowNode.DEFAULT_HEIGHT)
	self.bgImage_:setAnchorPoint(cc.p(0,0))
	self.bgImage_:pos(0, 0)

	self.downButton_ = cc.ui.UIPushButton.new(FactoryShowNode.BUTTON_IMAGE)
		:setButtonLabel("normal", cc.ui.UILabel.new({text="缩小规模",color=display.COLOR_WHITE,size=12,align = display.CENTER}))
		:setButtonSize(FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_BUTTON_HEIGHT)
		:onButtonClicked(function()
            self:downLevel()
        end):addTo(self,1)
    self.downButton_:size(FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_BUTTON_HEIGHT)
    self.downButton_:setAnchorPoint(cc.p(0,0))
    self.downButton_:align(display.BOTTOM_LEFT, FactoryShowNode.COLUMN_PADDING, (FactoryShowNode.DEFAULT_HEIGHT - FactoryShowNode.DEFAULT_BUTTON_HEIGHT) / 2)
    self.downButton_:setButtonLabelOffset(-15,-10)


   	self.upButton_ = cc.ui.UIPushButton.new(FactoryShowNode.BUTTON_IMAGE)
		:setButtonLabel("normal", cc.ui.UILabel.new({text="扩大规模",color=display.COLOR_WHITE,size=12,align = display.CENTER}))
		:setButtonSize(FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_BUTTON_HEIGHT)
		:onButtonClicked(function()
            self:upLevel()
        end):addTo(self,1)
    self.upButton_:size(FactoryShowNode.DEFAULT_BUTTON_WIDTH, FactoryShowNode.DEFAULT_BUTTON_HEIGHT)
    self.upButton_:align(display.BOTTOM_LEFT, FactoryShowNode.DEFAULT_WIDTH - FactoryShowNode.DEFAULT_BUTTON_WIDTH - FactoryShowNode.COLUMN_PADDING, (FactoryShowNode.DEFAULT_HEIGHT - FactoryShowNode.DEFAULT_BUTTON_HEIGHT) / 2)
    self.upButton_:setButtonLabelOffset(-15,-10)

    self.shortInfoNode_ = display.newNode()
    self.shortInfoNode_:addTo(self)
    self.shortInfoNode_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH,FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT)
    self.shortInfoNode_:align(display.BOTTOM_LEFT, (FactoryShowNode.DEFAULT_WIDTH - FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH) / 2 , 0)



    self.detailInfoNode_ = display.newNode()
    self.detailInfoNode_:addTo(self)
    self.detailInfoNode_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH,FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT)
    self.detailInfoNode_:align(display.LEFT_TOP, (FactoryShowNode.DEFAULT_WIDTH - FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH) / 2 , 0)


	self.titleLabel_ = display.newTTFLabel({text = self.params.title, size = 16, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	self.titleLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.titleLabel_:align(display.CENTER, FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2, FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT - FactoryShowNode.ROW_PADDING - FactoryShowNode.DEFAULT_COLUMN_HEIGHT/2)

	self.levelLabel_ = display.newTTFLabel({text = "规模:1", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	self.levelLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 2, FactoryShowNode.DEFAULT_COLUMN_HEIGHT / 2)
	self.levelLabel_:align(display.BOTTOM_LEFT,FactoryShowNode.COLUMN_PADDING , FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT - FactoryShowNode.ROW_PADDING * 2 - FactoryShowNode.DEFAULT_COLUMN_HEIGHT * 2)

	self.outputLabel_ = display.newTTFLabel({text = "产出物:食物", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	self.outputLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 2, FactoryShowNode.DEFAULT_COLUMN_HEIGHT / 2)
	self.outputLabel_:align(display.BOTTOM_LEFT,FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 + FactoryShowNode.COLUMN_PADDING , FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT - FactoryShowNode.ROW_PADDING * 2 - FactoryShowNode.DEFAULT_COLUMN_HEIGHT * 2)
	
	self.outputRateLabel_ = display.newTTFLabel({text = "效率:45%", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	self.outputRateLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 2, FactoryShowNode.DEFAULT_COLUMN_HEIGHT / 2)
	self.outputRateLabel_:align(display.BOTTOM_LEFT,FactoryShowNode.COLUMN_PADDING , FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT - FactoryShowNode.ROW_PADDING * 3 - FactoryShowNode.DEFAULT_COLUMN_HEIGHT * 3)

	self.outputEstimateLabel_ = display.newTTFLabel({text = "预计产出:食物(300)", size = 12, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_LEFT,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.shortInfoNode_)
	self.outputEstimateLabel_:size(FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 - FactoryShowNode.COLUMN_PADDING * 2, FactoryShowNode.DEFAULT_COLUMN_HEIGHT / 2)
	self.outputEstimateLabel_:align(display.BOTTOM_LEFT,FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2 + FactoryShowNode.COLUMN_PADDING , FactoryShowNode.DEFAULT_SHORT_INFO_HEIGHT - FactoryShowNode.ROW_PADDING * 3 - FactoryShowNode.DEFAULT_COLUMN_HEIGHT * 3)
	
	self.detailButton_ = cc.ui.UIPushButton.new(FactoryShowNode.DETAIL_BUTTON_IMAGE)
		:setButtonSize(60, 20)
		:onButtonClicked(function()
            -- self:downLevel()
        end):addTo(self.shortInfoNode_)
    self.detailButton_:align(display.CENTER,FactoryShowNode.DEFAULT_SHORT_INFO_WIDTH / 2, 15)
end

function FactoryShowNode:refresh(key,refreshData)
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

	if refreshData.level <= 1 then
		self.downButton_:setButtonEnabled(false)
	else
		self.downButton_:setButtonEnabled(true)
	end

	if refreshData.level >= 10 then
		self.upButton_:setButtonEnabled(false)
	else
		self.upButton_:setButtonEnabled(true)
	end
end

function FactoryShowNode:upLevel()
	data.factory[self.params.title].level = data.factory[self.params.title].level + 1
	self:refresh(self.params.title,data.factory[self.params.title])
end

function FactoryShowNode:downLevel()
	data.factory[self.params.title].level = data.factory[self.params.title].level - 1
	self:refresh(self.params.title,data.factory[self.params.title])
end

return FactoryShowNode