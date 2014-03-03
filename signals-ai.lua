--[[
	太阳神三国杀AI体系·幻想天使版（信号处理部分）
	适用版本：
]]--
--[[
	功能：注册信号
	参数：
		signal（任意可作表键类型，表示待注册的信号内容）
	结果：
		无
]]--
function RegistSignal(signal)
	table.insert(sgs.signals, signal)
	sgs.matches[signal] = {}
end
--注册触发时机信号
for signal=sgs.NonTrigger, sgs.NumOfEvents, 1 do
	RegistSignal(signal)
end
--[[
	功能：发射信号
	参数：
		signal（任意可作表键类型，表示信号）
		source（AIPlayer类型，表示相关角色）
		data（sgs.QVariant类型，表示相关数据）
	结果：
		无
]]--
function EmitSignal(signal, source, data)
end
--[[
	功能：获取信号相关触发记录表
	参数：
		signal（任意可做表键类型，表示信号）
	结果：
		table{number}类型（表示相关触发记录表）
]]--
function AcquireMatches(signal)
	assert(signal)
	return sgs.matches[signal] or {}
end
--[[
	功能：获取信号相关触发表
	参数：
		signal（任意可做表键类型，表示信号）
	结果：
		table{table}类型（表示相关触发表）
]]--
function AcquireTriggers(signal)
	local result = {}
	local matches = AcquireMatches(signal)
	for _, index in ipairs(matches) do
		local trigger = sgs.triggers[index]
		if trigger then
			table.insert(result, trigger)
		end
	end
	return result
end
--[[
	功能：对指定触发表按优先级从高到低排序
	参数：
		triggers（table{function}类型，表示触发表）
		reverse（boolean类型，表示是否逆序）
	结果：
		table{table}类型（表示排序后的触发表）
]]--
function SortTriggersByPriority(triggers, reverse)
	assert( type(triggers) == "table" )
	local compare_func = function(a, b)
		local priorityA = a["priority"] or 0
		local priorityB = b["priority"] or 0
		return priorityA > priorityB
	end
	if reverse then
		compare_func = function(a, b)
			local priorityA = a["priority"] or 0
			local priorityB = b["priority"] or 0
			return priorityA < priorityB
		end
	end
	table.sort(triggers, compare_func)
	return triggers
end
--[[
	功能：获取信号相关有序触发表
	参数：
		signal（任意可作表键类型，表示信号）
	结果：
		table{table}类型（表示触发表）
]]--
function AcquireSortedTriggers(signal)
	local triggers = AcquireTriggers(signal)
	return SortTriggersByPriority(triggers)
end