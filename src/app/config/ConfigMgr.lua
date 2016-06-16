
local ConfigMgr = {}

local config
local path
function loadConfig()
	path = cc.FileUtils:getInstance():fullPathForFilename("app/config/config.json")
	local file = io.open(path,"r")
	local str = file:read("*a")
	file:close()
	config = json.decode(str)
end

loadConfig()

function ConfigMgr.getConfig(key)
	if config[key] then
		return clone(config[key])
	end
	return nil
end

function ConfigMgr.setConfig(key,value)
	config[key] = value
end

function ConfigMgr.getFullConfigCopy()
	return clone(config)
end

function ConfigMgr.getFullConfigOrigin()
	return config
end

function ConfigMgr.saveConfigToFile()
	local file = io.open(path,"w")
	file:write(json.encode(config))
	file:close()
end

return ConfigMgr