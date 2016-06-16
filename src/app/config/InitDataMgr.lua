
local InitDataMgr = {}

local initData
local path
function loadInitData()
	path = cc.FileUtils:getInstance():fullPathForFilename("app/config/initdata.json")
	local file = io.open(path,"r")
	local str = file:read("*a")
	file:close()
	initData = json.decode(str)
end

loadInitData()

function InitDataMgr.getFactoryInitData(key)
	if initData.factory[key] then
		return clone(initData.factory[key])
	end
	return nil
end

function InitDataMgr.setFactoryInitData(key,value)
	initData.factory[key] = value
end

function InitDataMgr.getPopInitData(key)
	if initData.pop[key] then
		return initData.pop[key]
	end
	return 0
end

function InitDataMgr.setPopInitData(key,value)
	initData.pop[key] = value
end

function InitDataMgr.getProductInitData(key)
	if initData.product[key] then
		return initData.product[key]
	end
	return 0
end

function InitDataMgr.setProductInitData(key,value)
	initData.product[key] = value
end

function InitDataMgr.getFullInitDataCopy()
	return clone(initData)
end

function InitDataMgr.getFullInitDataOrigin()
	return initData
end

function InitDataMgr.saveInitDataToFile()
	local file = io.open(path,"w")
	file:write(json.encode(initData))
	file:close()
end

return InitDataMgr