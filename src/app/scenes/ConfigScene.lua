
local ConfigScene = class("ConfigScene", function()
    return display.newScene("ConfigScene")
end)

function ConfigScene:ctor()
	self.uiLayer = display.newLayer()
	self:addChild(self.uiLayer)
	local uiBg = display.newScale9Sprite("BlueBlock.png")
	uiBg:setContentSize(display.width,display.height)
	uiBg:setAnchorPoint(cc.p(0,0))
	self.uiLayer:addChild(uiBg,-1)
end

function ConfigScene:onEnter()
	self.configLabel = display.newTTFLabel({text = "Config", size = 20, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.uiLayer)
	self.initDataLabel = display.newTTFLabel({text = "InitData", size = 20, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(self.uiLayer)

	self.saveButton = cc.ui.UIPushButton.new("Button01.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="Save",color=display.COLOR_WHITE,size=16,align = cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}))
		:setButtonSize(80, 40)
		:onButtonClicked(function ( event )
			-- get all data change
			ConfigMgr.saveConfigToFile()
			InitDataMgr.saveInitDataToFile()
		end)
		:addTo(self.uiLayer)
	self.returnButton = cc.ui.UIPushButton.new("Button01.png")
		:setButtonLabel("normal", cc.ui.UILabel.new({text="Return",color=display.COLOR_WHITE,size=16,align = cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}))
		:setButtonSize(80, 40)
		:onButtonClicked(function ( event )
			app:enterScene("FirstScene")
		end)
		:addTo(self.uiLayer)

	self.configList = cc.ui.UIListView.new({
			direction = cc.ui.UIScrollView.DIRECTION_VERTICAL,
	        -- bg="BlueBlock.png",
	        -- bgScale9=true,
	        viewRect=cc.rect(20, 80, display.cx - 40, display.top - 160)
		}):addTo(self.uiLayer)
	self.configList:setAnchorPoint(cc.p(0,0))

	self.initDataList = cc.ui.UIListView.new({
			direction = cc.ui.UIScrollView.DIRECTION_VERTICAL,
	        -- bg="BlueBlock.png",
	        -- bgScale9=true,
	        viewRect=cc.rect(display.cx + 20, 80, display.cx - 40, display.top - 160)
		}):addTo(self.uiLayer)
	self.initDataList:setAnchorPoint(cc.p(0,0))

	self:postInit()
	self:fillContent()
end

function ConfigScene:postInit()
	self.configLabel:size(display.cx - 40,40)
	self.configLabel:align(display.CENTER, display.cx / 2, display.top - 30)

	self.initDataLabel:size(display.cx - 40,40)
	self.initDataLabel:align(display.CENTER, display.cx + display.cx / 2, display.top - 30)

	self.saveButton:setButtonLabelOffset(-5,-20)
	self.saveButton:align(display.BOTTOM_LEFT, display.cx - 100, 20)

	self.returnButton:setButtonLabelOffset(-5,-20)
	self.returnButton:align(display.BOTTOM_LEFT, display.cx + 20, 20)

end

function ConfigScene:fillContent()
	local initData = InitDataMgr.getFullInitDataOrigin()

	-- init pop content
	local popItem = self.initDataList:newItem()
    local popContent = display.newNode()
    popContent:setContentSize(display.cx - 40, 120)
    popItem:setItemSize(popContent:getContentSize().width, popContent:getContentSize().height)
    popItem:addContent(popContent)
    self.initDataList:addItem(popItem)
    local popEditBoxes = {}
    local popIndex = 1
    for k,v in pairs(initData.pop) do
    	local l = display.newTTFLabel({text = k .. ":", size = 20, color = display.COLOR_WHITE,align=cc.ui.TEXT_ALIGN_CENTER,valign=cc.ui.TEXT_VALIGN_CENTER}):addTo(popContent)
    	local h = (popIndex - 1) * 20
    	l:align(display.BOTTOM_LEFT, 10, h)
    	local editbox = cc.ui.UIInput.new({
	        image = display.newScale9Sprite("EditBoxBg.png"),
	        size = cc.size(200, 20),
	        x = 220,
	        y = h,
	        -- listener = function(event, editbox)
		       --      if event == "began" then
		       --          self:onEditBoxBegan(editbox)
		       --      elseif event == "ended" then
		       --          self:onEditBoxEnded(editbox)
		       --      elseif event == "return" then
		       --          self:onEditBoxReturn(editbox)
		       --      elseif event == "changed" then
		       --          self:onEditBoxChanged(editbox)
		       --      else
		       --          printf("EditBox event %s", tostring(event))
		       --      end
		       --  end
	    }):addTo(popContent)
	    popIndex = popIndex + 1
    end

    self.initDataList:reload()

end

function ConfigScene:onExit()

end

return ConfigScene
