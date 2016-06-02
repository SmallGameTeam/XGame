function reDistributeWorker(data,config)
    --将所有工厂同种人口相加得到当前工作人群总值,超出当前人口的进行减员,少于当前人口的时候,
    --如果工厂有此类人群职位空缺,则补充此类人群到工厂的此职位中
    --当工厂已经满载,所有工厂同种人群相加后仍未达到人口数的,认为是失业人群
    local totalWorkedPop = {}
    for k,v in pairs(data.factory) do
        for i,vv in ipairs(config[k][v.level].pop) do
            if not totalWorkedPop[vv.name] then
                totalWorkedPop[vv.name] = data.factory[k].pop[i]
            else
                totalWorkedPop[vv.name] = totalWorkedPop[vv.name] + data.factory[k].pop[i]
            end
        end
    end

    --调整工厂人数
    for k,v in pairs(totalWorkedPop) do
        local change =  data.pop[k] - v
        if change < 0 then
            --工厂减人
            for kk,vv in pairs(data.factory) do
                if change == 0 then
                        break
                end
                for i,iv in ipairs(config[kk][vv.level].pop) do
                    if change == 0 then
                        break
                    end
                    if iv.name == k then
                        if vv.pop[i] > 0 then
                            if vv.pop[i] + change > 0 then
                                vv.pop[i] = vv.pop[i] + change
                                print("factory[" .. kk .."] add <" .. k .. "=" .. change .. ">")
                                change = 0
                            else
                                change = change + vv.pop[i]
                                print("factory[" .. kk .."] add <" .. k .. "=" .. -1 * vv.pop[i] .. ">")
                                vv.pop[i] = 0
                            end
                        end
                        break
                    end
                end
            end
        elseif change > 0 then
            --工厂加人
            for kk,vv in pairs(data.factory) do
                if change == 0 then
                    break
                end
                for i,iv in ipairs(config[kk][vv.level].pop) do
                    if change == 0 then
                        break
                    end
                    if iv.name == k then
                        if vv.pop[i] < iv.value then
                            if vv.pop[i] + change <= iv.value then
                                vv.pop[i] = vv.pop[i] + change
                                print("factory[" .. kk .."] add <" .. k .. "=" .. change .. ">")
                                change = 0
                            else
                                change = change - (iv.value - vv.pop[i])
                                print("factory[" .. kk .."] add <" .. k .. "=" .. iv.value - vv.pop[i] .. ">")
                                vv.pop[i] = iv.value
                            end
                        end
                        break
                    end
                end
            end
        end
    end
end

function addOutput(output,data)
    for k,v in pairs(output) do
        data.product[k] = data.product[k] + v
    end
end

function calPopGrowth(popGens,data,config)
    --将所有人口的粮食供应情况一一进行人口增长计算
    local popGrowth = {}
    for k,v in pairs(data.pop) do
        local growth = 0
        --该人口有获得食物分配
        local foodSupply = popGens.food_supply[k]
        if foodSupply then
            local alcoholSupply = popGens.alcohol_supply[k]
            local jewelrySupply = popGens.jewelry_supply[k]
            --当供应率大于0.5时,食物提供的人口是正增长
            --当供应率小于0.5时,食物提供的人口是负增长
            popGrowth[k] = ((foodSupply - 0.5) / 0.5  * config[k].food_growth + 
                    alcoholSupply * config[k].alc_growth + jewelrySupply * config[k].jew_growth) * data.pop[k]
        else
            popGrowth[k] = -1 * data.pop[k]
        end
    end

    --添加/减少人口
    local p = "pop add "
    for k,v in pairs(popGrowth) do
        data.pop[k] = data.pop[k] + v
        p = p .. " <".. k .. "=" .. v .. ">"
    end
    print(p)

    return popGrowth
end

function calRequiredSupply(data,config)
    local popWeights = {}   --人群所占资源分配的权重
    local totalWeight = 0   --总权重
    local foodNeedTotal = 0 
    local alcoholNeedTotal = 0
    local jewelryNeedTotal = 0
    local returnResult = {}
    for k,v in pairs(data.pop) do
        if v > 0 then
            popWeights[k] = v * config[k].class
            totalWeight = totalWeight + v * config[k].class
            foodNeedTotal = foodNeedTotal + v * config[k].food_require
            alcoholNeedTotal = alcoholNeedTotal + v * config[k].alcohol_require
            jewelryNeedTotal = jewelryNeedTotal + v * config[k].jewelry_require
        end
    end

    returnResult.food_supply = {}
    --如果食物满足需求,则所有人的食物供应为100%
    if data.product.food >= foodNeedTotal then
        for k,v in pairs(data.pop) do
            returnResult.food_supply[k] = 1
        end
        data.product.food = data.product.food - foodNeedTotal
    else
        --计算food供应
        local avgWeightFood = data.product.food / totalWeight

        for k,v in pairs(popWeights) do
            local genFood = avgWeightFood * v / data.pop[k]  --每个人分到的粮食 = 每份权重分到的粮食 * 权重数 / 人群人口数
            returnResult.food_supply[k] = genFood / config[k].food_require --粮食供应比率 = 每个人分到的粮食 / 每个人需求的粮食
            -- 如果粮食供应比率超过1,则供应比为1
            -- 当粮食不够完全供应所有人群时,较高层次的人群会获得较高的权重分配,有可能会超出自身供应,
            -- 社会地位决定了更高阶层享有更多保障 例如:当有100农民和100资本家时,农民的粮食需求是1,权重是1,
            -- 资本家的粮食需求是2,权重是3,拥有存粮280,不足够给每个人群都满足(都满足时需要100*1 + 100*2 = 300)
            -- 此时,资本家和农民通过权重分配粮食:农民分配到的粮食=100 * 1 / (100 * 1 + 100 * 3) * 280 = 70
            -- 资本家分配到的粮食= 100 * 3 / (100 * 1 + 100 * 3) * 280 = 210.但是100资本家的全部需求粮食仅需要200
            -- 多出的10粮食将不会消耗,也不会流通到农民群体中去,这是地位的占有性。
            if returnResult.food_supply[k] > 1 then
                returnResult.food_supply[k] = 1
            end
            data.product.food = data.product.food - returnResult.food_supply[k] * config[k].food_require * data.pop[k]
        end
    end

    returnResult.alcohol_supply = {}
    --如果酒精满足需求,则所有人的酒精供应为100%
    if data.product.alcohol >= alcoholNeedTotal then
        for k,v in pairs(data.pop) do
            returnResult.alcohol_supply[k] = 1
        end
        data.product.alcohol = data.product.alcohol - alcoholNeedTotal
    else
        --计算alcohol供应
        local avgWeightAlcohol = data.product.alcohol / totalWeight

        for k,v in pairs(popWeights) do
            local genAlcohol = avgWeightAlcohol * v / data.pop[k]  
            returnResult.alcohol_supply[k] = genAlcohol / config[k].alcohol_require 
            if returnResult.alcohol_supply[k] > 1 then
                returnResult.alcohol_supply[k] = 1
            end
            data.product.alcohol = data.product.alcohol - returnResult.alcohol_supply[k] * config[k].alcohol_require * data.pop[k]
        end
    end

    returnResult.jewelry_supply = {}
    --如果珠宝满足需求,则所有人的珠宝供应为100%
    if data.product.jewelry >= jewelryNeedTotal then
        for k,v in pairs(data.pop) do
            returnResult.jewelry_supply[k] = 1
        end
        data.product.jewelry = data.product.jewelry - jewelryNeedTotal
    else
        --计算alcohol供应
        local avgWeightJewelry = data.product.jewelry / totalWeight

        for k,v in pairs(popWeights) do
            local genJewelry = avgWeightJewelry * v / data.pop[k]  
            returnResult.jewelry_supply[k] = genJewelry / config[k].jewelry_require 
            if returnResult.jewelry_supply[k] > 1 then
                returnResult.jewelry_supply[k] = 1
            end
            data.product.jewelry = data.product.jewelry - returnResult.jewelry_supply[k] * config[k].jewelry_require * data.pop[k]
        end
    end

    local x = "food supply "
    for k,v in pairs(returnResult.food_supply) do
        x = x .. "<" .. k .."=" .. v .. ">"
    end
    print(x)

    local y = "alcohol supply "
    for k,v in pairs(returnResult.alcohol_supply) do
        y = y .. "<" .. k .."=" .. v .. ">"
    end
    print(y)

    local z = "jewelry supply "
    for k,v in pairs(returnResult.jewelry_supply) do
        z = z .. "<" .. k .."=" .. v .. ">"
    end
    print(z)

    return returnResult
end

function calOutput(key,data,config)
    local rate = 0
    local f = data.factory[key]
    local c = config[key]
    local out = {}
    local rate = 0
    if f and c then 
        for i,v in ipairs(c[f.level].pop) do
            if f.pop[i] > 0 then
                local r = f.pop[i] / v.value
                if r > 1 then 
                    r=1 
                    f.pop[i] = v.value
                end
                
                if rate == 0 then
                    rate = r
                else
                    -- TODO different factory has different cal function
                    rate = math.min(rate, r)
                end
            else 
                return nil
            end 
        end
        for i,v in ipairs(c[f.level].output) do
            out[i] = {}
            out[i].name = v.name
            out[i].value = v.value * rate
        end
    end
    local p = "factory["..key .. "]"
    for i,v in ipairs(out) do
        p = p .. " output <" .. v.name .."=" .. v.value .. ">"
    end
    print(p)
    return out
end