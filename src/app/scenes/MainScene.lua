local UILayer = require("app.layers.UILayer")

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
	self.uiLayer = display.newLayer()
	self:addChild(self.uiLayer)
	local uiBg = display.newScale9Sprite("menuBg.png")
	uiBg:setContentSize(display.width,display.height)
	uiBg:setAnchorPoint(cc.p(0,0))
	self.uiLayer:addChild(uiBg,-1)
	self:createMenu()
	self:createDetailPanel()
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
	local economicMenuNode = display.newNode()
	economicMenuNode:setAnchorPoint(cc.p(0,0))
	economicMenuNode:setContentSize(180,85)
	economicMenuNode:pos(200,10)
	economicMenuNode:addChild(economicMenuBg, -1)
	economicMenuNode:addChild(menuNameLabel)
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
		:setButtonLabel("normal", cc.ui.UILabel.new({text="人口",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="职业",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="斗争性",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 2*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="觉醒度",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 3*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="失业率",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 4*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="必需品",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 5*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="日用品",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 6*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="奢侈品",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 7*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="人口变化",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 8*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="识字率",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 9*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="名人生成率",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 10*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="生产效率",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 11*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    cc.ui.UIPushButton.new("GreenScale9Block.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="权利值",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER}))
		:setButtonSize(bWidth, 30)
		:onButtonClicked(function()
            -- self:closeMenu()
        end)
        :pos(10 + 12*bWidth + bWidth / 2, contentHeight - 25)
        :addTo(self.menuDetailPanel.contentNode)

    local listView = cc.ui.UIListView.new({
    	direction = cc.ui.UIScrollView.DIRECTION_VERTICAL,
    	-- bg="BlueBlock.png",
    	-- bgScale9=true,
    	viewRect=cc.rect(10, 10, contentWidth - 20, contentHeight - 60)
    	})
    listView:setAnchorPoint(cc.p(0,0))
    self.menuDetailPanel.contentNode:addChild(listView)

    for i=1,20 do
    	local item = listView:newItem()
    	item:setItemSize(contentWidth - 20, 30)
    	local content
    	content = display.newNode()
    	content:setContentSize(contentWidth - 20, 30)
    	content:setAnchorPoint(cc.p(0,0))
    	
    	content:addChild(cc.ui.UILabel.new({text="20".. i * 20,color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(0, 15))
    	content:addChild(cc.ui.UILabel.new({text="农民"..i,color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="0.01",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(2*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="1.01",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(3*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="3%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(4*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="100%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(5*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="90%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(6*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="10%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(7*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="1",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(8*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="10%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(9*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="1%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(10*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="85%",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(11*bWidth, 15))
    	content:addChild(cc.ui.UILabel.new({text="1",color=display.COLOR_WHITE,size=12,align = cc.ui.TEXT_ALIGN_CENTER,dimensions = cc.size(bWidth, 30)}):pos(12*bWidth, 15))

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
	contentBg:setContentSize(display.width - 100,display.height - 200)
	contentBg:setAnchorPoint(cc.p(0,0))
	self.menuDetailPanel.contentNode:addChild(contentBg, -1)

	self.menuDetailPanel.contentNode.leftNode = display.newNode()
	self.menuDetailPanel.contentNode.leftNode:setAnchorPoint(cc.p(0,0))
	local leftWidth = (display.width - 100) / 2
	self.menuDetailPanel.contentNode.leftNode:setContentSize(leftWidth,contentHeight)
	self.menuDetailPanel.contentNode.leftNode:pos(0,0)
	self.menuDetailPanel.contentNode:addChild(self.menuDetailPanel.contentNode.leftNode)



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
end

function MainScene:onExit()
end

return MainScene
