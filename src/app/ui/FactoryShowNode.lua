local TopShowNode = class("TopShowNode", function()
    local node = display.newNode()
    return node
end)

TopShowNode.DEFAULT_WIDTH = 110
TopShowNode.DEFAULT_HEIGHT = 80
TopShowNode.COLUMN_PADDING = 5
TopShowNode.ROW_PADDING = 5

TopShowNode.TITLE_IMAGE_WIDTH = 20
TopShowNode.TITLE_IMAGE_HEIGHT = 20
TopShowNode.DEFAULT_COLUMN_HEIGHT = 20

TopShowNode.TITLE_IMAGE_HEADER = "title_header_"
TopShowNode.BG_IMAGE = "PinkScale9Block.png"
TopShowNode.ARROW_UP = "arrow_up.png"
TopShowNode.ARROW_NO_CHANGE = "arrow_no_change.png"
TopShowNode.ARROW_DOWN = "arrow_down.png"

function TopShowNode:ctor(params)
	self.params = params
	self:posInit()
end

function TopShowNode:posInit()
	self:setContentSize(TopShowNode.DEFAULT_WIDTH,TopShowNode.DEFAULT_HEIGHT)
	self.bgImage_ = display.newScale9Sprite(TopShowNode.BG_IMAGE):addTo(self,0)
	self.bgImage_:setContentSize(TopShowNode.DEFAULT_WIDTH, TopShowNode.DEFAULT_HEIGHT)
	self.bgImage_:setAnchorPoint(cc.p(0,0))
	self.bgImage_:pos(0, 0)

	self.titleImage_ = display.newSprite(TopShowNode.TITLE_IMAGE_HEADER .. self.params.title .. ".png"):addTo(self,1)
	self.titleImage_:setAnchorPoint(cc.p(0,0))
	self.titleImage_:setContentSize(TopShowNode.TITLE_IMAGE_WIDTH, TopShowNode.TITLE_IMAGE_HEIGHT)
	self.titleImage_:pos(TopShowNode.COLUMN_PADDING, (TopShowNode.DEFAULT_HEIGHT - self.titleImage_:getContentSize().height) / 2)
	self.titleImage_:setScale(self.titleImage_:getContentSize().width/64,self.titleImage_:getContentSize().height / 64)

	self.titleLabel_ = cc.ui.UILabel.new({text = "", size = 16, color = display.COLOR_WHITE,align=display.RIGHT_TO_LEFT}):addTo(self,1)
	self.titleLabel_:setAnchorPoint(cc.p(0,0))
	self.titleLabel_:setString(self.params.title)
	self.titleLabel_:size(TopShowNode.DEFAULT_WIDTH - self.titleImage_:getContentSize().width - 3 * TopShowNode.COLUMN_PADDING, TopShowNode.DEFAULT_COLUMN_HEIGHT)
	self.titleLabel_:pos(self.titleImage_:getPositionX() + self.titleImage_:getContentSize().width + TopShowNode.COLUMN_PADDING, TopShowNode.DEFAULT_HEIGHT - TopShowNode.DEFAULT_COLUMN_HEIGHT - TopShowNode.ROW_PADDING)

	self.amountLabel_ = cc.ui.UILabel.new({text = "", size = 16, color = display.COLOR_GREEN,align=display.RIGHT_TO_LEFT}):addTo(self,1)
	self.amountLabel_:setAnchorPoint(cc.p(0,0))
	self.amountLabel_:pos(self.titleLabel_:getPositionX() , TopShowNode.DEFAULT_HEIGHT - 2 * TopShowNode.DEFAULT_COLUMN_HEIGHT  -  2 * TopShowNode.ROW_PADDING)
	self.amountLabel_:size(TopShowNode.DEFAULT_WIDTH - self.titleImage_:getContentSize().width - 3 * TopShowNode.COLUMN_PADDING, TopShowNode.DEFAULT_COLUMN_HEIGHT)

	self.amountChangeArrow_ = display.newSprite(TopShowNode.ARROW_UP):addTo(self,1)
	self.amountChangeArrow_:setAnchorPoint(cc.p(0,0))
	self.amountChangeArrow_:setContentSize(TopShowNode.DEFAULT_COLUMN_HEIGHT, TopShowNode.DEFAULT_COLUMN_HEIGHT)
	self.amountChangeArrow_:pos(self.titleLabel_:getPositionX() , TopShowNode.ROW_PADDING)
	self.amountChangeArrow_:setScale(self.amountChangeArrow_:getContentSize().width/32,self.amountChangeArrow_:getContentSize().height /32)

	self.amountChangeLabel_ = cc.ui.UILabel.new({text = "", size = 16, color = display.COLOR_GREEN,align=display.RIGHT_TO_LEFT}):addTo(self,1)
	self.amountChangeLabel_:setAnchorPoint(cc.p(0,0))
	self.amountChangeLabel_:size(TopShowNode.DEFAULT_WIDTH - self.amountChangeArrow_:getPositionX() - TopShowNode.DEFAULT_COLUMN_HEIGHT - TopShowNode.COLUMN_PADDING, TopShowNode.DEFAULT_COLUMN_HEIGHT)
	self.amountChangeLabel_:pos(self.amountChangeArrow_:getPositionX() + TopShowNode.DEFAULT_COLUMN_HEIGHT + TopShowNode.COLUMN_PADDING , self.amountChangeArrow_:getPositionY())
end

function TopShowNode:refresh(refreshData)
	self:setAmountLabel_(refreshData.amount,refreshData.amountChange)
end

function TopShowNode:setAmountLabel_(amount,amountChange)
	self.amountLabel_:setString(amount)
	self.amountChangeLabel_:setString(amountChange)
	if amountChange < 0 then
		self.amountLabel_:setColor(display.COLOR_RED)
		self.amountChangeLabel_:setColor(display.COLOR_RED)
		self.amountChangeArrow_:setTexture(TopShowNode.ARROW_DOWN)
	elseif  amountChange == 0 then
		self.amountLabel_:setColor(display.COLOR_WHITE)
		self.amountChangeLabel_:setColor(display.COLOR_WHITE)
		self.amountChangeArrow_:setTexture(TopShowNode.ARROW_NO_CHANGE)
	else
		self.amountLabel_:setColor(display.COLOR_GREEN)
		self.amountChangeLabel_:setColor(display.COLOR_GREEN)
		self.amountChangeArrow_:setTexture(TopShowNode.ARROW_UP)
	end
end

return TopShowNode