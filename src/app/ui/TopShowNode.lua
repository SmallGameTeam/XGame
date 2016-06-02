local TopShowNode = class("TopShowNode", function()
    local node = display.newNode()
    return node
end)

function TopShowNode:ctor()
end

function TopShowNode:onEnter()
	self.iconImage_ = display.newSprite()
end

function TopShowNode:refresh(refreshData)
	self.icon_ = refreshData.icon
	self.name_ = refreshData.name
	self.amount_ = refreshData.amount
	self.amountChange_ = refreshData.amountChange


	
end

return TopShowNode