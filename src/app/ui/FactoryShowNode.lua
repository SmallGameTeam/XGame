local FactoryShowNode = class("FactoryShowNode", function()
    local node = display.newNode()
    return node
end)

FactoryShowNode.DEFAULT_WIDTH = 110
FactoryShowNode.DEFAULT_HEIGHT = 80
FactoryShowNode.COLUMN_PADDING = 5
FactoryShowNode.ROW_PADDING = 5

FactoryShowNode.TITLE_IMAGE_WIDTH = 20
FactoryShowNode.TITLE_IMAGE_HEIGHT = 20
FactoryShowNode.DEFAULT_COLUMN_HEIGHT = 20

FactoryShowNode.TITLE_IMAGE_HEADER = "title_header_"
FactoryShowNode.BG_IMAGE = "PinkScale9Block.png"
FactoryShowNode.ARROW_UP = "arrow_up.png"
FactoryShowNode.ARROW_NO_CHANGE = "arrow_no_change.png"
FactoryShowNode.ARROW_DOWN = "arrow_down.png"

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

	self.titleImage_ = display.newSprite(FactoryShowNode.TITLE_IMAGE_HEADER .. self.params.title .. ".png"):addTo(self,1)
	self.titleImage_:setAnchorPoint(cc.p(0,0))
	self.titleImage_:setContentSize(FactoryShowNode.TITLE_IMAGE_WIDTH, FactoryShowNode.TITLE_IMAGE_HEIGHT)
	self.titleImage_:pos(FactoryShowNode.COLUMN_PADDING, (FactoryShowNode.DEFAULT_HEIGHT - self.titleImage_:getContentSize().height) / 2)
	self.titleImage_:setScale(self.titleImage_:getContentSize().width/64,self.titleImage_:getContentSize().height / 64)

	self.titleLabel_ = cc.ui.UILabel.new({text = "", size = 16, color = display.COLOR_WHITE,align=display.RIGHT_TO_LEFT}):addTo(self,1)
	self.titleLabel_:setAnchorPoint(cc.p(0,0))
	self.titleLabel_:setString(self.params.title)
	self.titleLabel_:size(FactoryShowNode.DEFAULT_WIDTH - self.titleImage_:getContentSize().width - 3 * FactoryShowNode.COLUMN_PADDING, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.titleLabel_:pos(self.titleImage_:getPositionX() + self.titleImage_:getContentSize().width + FactoryShowNode.COLUMN_PADDING, FactoryShowNode.DEFAULT_HEIGHT - FactoryShowNode.DEFAULT_COLUMN_HEIGHT - FactoryShowNode.ROW_PADDING)

	self.amountLabel_ = cc.ui.UILabel.new({text = "", size = 16, color = display.COLOR_GREEN,align=display.RIGHT_TO_LEFT}):addTo(self,1)
	self.amountLabel_:setAnchorPoint(cc.p(0,0))
	self.amountLabel_:pos(self.titleLabel_:getPositionX() , FactoryShowNode.DEFAULT_HEIGHT - 2 * FactoryShowNode.DEFAULT_COLUMN_HEIGHT  -  2 * FactoryShowNode.ROW_PADDING)
	self.amountLabel_:size(FactoryShowNode.DEFAULT_WIDTH - self.titleImage_:getContentSize().width - 3 * FactoryShowNode.COLUMN_PADDING, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)

	self.amountChangeArrow_ = display.newSprite(FactoryShowNode.ARROW_UP):addTo(self,1)
	self.amountChangeArrow_:setAnchorPoint(cc.p(0,0))
	self.amountChangeArrow_:setContentSize(FactoryShowNode.DEFAULT_COLUMN_HEIGHT, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.amountChangeArrow_:pos(self.titleLabel_:getPositionX() , FactoryShowNode.ROW_PADDING)
	self.amountChangeArrow_:setScale(self.amountChangeArrow_:getContentSize().width/32,self.amountChangeArrow_:getContentSize().height /32)

	self.amountChangeLabel_ = cc.ui.UILabel.new({text = "", size = 16, color = display.COLOR_GREEN,align=display.RIGHT_TO_LEFT}):addTo(self,1)
	self.amountChangeLabel_:setAnchorPoint(cc.p(0,0))
	self.amountChangeLabel_:size(FactoryShowNode.DEFAULT_WIDTH - self.amountChangeArrow_:getPositionX() - FactoryShowNode.DEFAULT_COLUMN_HEIGHT - FactoryShowNode.COLUMN_PADDING, FactoryShowNode.DEFAULT_COLUMN_HEIGHT)
	self.amountChangeLabel_:pos(self.amountChangeArrow_:getPositionX() + FactoryShowNode.DEFAULT_COLUMN_HEIGHT + FactoryShowNode.COLUMN_PADDING , self.amountChangeArrow_:getPositionY())
end

function FactoryShowNode:refresh(refreshData)
	self:setAmountLabel_(refreshData.amount,refreshData.amountChange)
end

function FactoryShowNode:setAmountLabel_(amount,amountChange)
	self.amountLabel_:setString(amount)
	self.amountChangeLabel_:setString(amountChange)
	if amountChange < 0 then
		self.amountLabel_:setColor(display.COLOR_RED)
		self.amountChangeLabel_:setColor(display.COLOR_RED)
		self.amountChangeArrow_:setTexture(FactoryShowNode.ARROW_DOWN)
	elseif  amountChange == 0 then
		self.amountLabel_:setColor(display.COLOR_WHITE)
		self.amountChangeLabel_:setColor(display.COLOR_WHITE)
		self.amountChangeArrow_:setTexture(FactoryShowNode.ARROW_NO_CHANGE)
	else
		self.amountLabel_:setColor(display.COLOR_GREEN)
		self.amountChangeLabel_:setColor(display.COLOR_GREEN)
		self.amountChangeArrow_:setTexture(FactoryShowNode.ARROW_UP)
	end
end

return FactoryShowNode