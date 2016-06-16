
require("config")
require("cocos.init")
require("framework.init")
ConfigMgr = require("app.config.ConfigMgr")
InitDataMgr = require("app.config.InitDataMgr")

local MyApp = class("MyApp", cc.mvc.AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    cc.FileUtils:getInstance():addSearchPath("res/")
    display.addSpriteFrames("AllSprites.plist", "AllSprites.png")
    self:enterScene("FirstScene")
end

return MyApp
