--[[
	太阳神三国杀AI体系·幻想天使版（规则触发部分）
	适用版本：
]]--
--[[
	判定阶段
]]--
local AIRule_JudgePhase = {
	name = "gamerule:judge phase",
	signal = sgs.EventPhaseProceeding,
	priority = 0,
	can_trigger = function(SKILL, target)
		return target:getPhase() == sgs.Player_Judge
	end,
	on_trigger = function(SKILL, room, player, DATA)
		local tricks = player:getJudgingArea()
		if type(tricks) == "userdata" then
			tricks = sgs.QList2Table(tricks)
		end
		while #tricks > 0 and player:isAlive() do
			local trick = tricks[#tricks]
			table.remove(tricks, #tricks)
			local on_effect = room:cardEffect(trick, nil, player)
			if not on_effect then
				trick:onNullified(player)
			end
		end
	end,
}
table.insert(sgs.triggers, AIRule_JudgePhase)
table.insert(sgs.matches[sgs.EventPhaseProceeding], #sgs.triggers)
--[[
	摸牌阶段
]]--
local AIRule_DrawPhase = {
	name = "gamerule:draw phase",
	signal = sgs.EventPhaseProceeding,
	priority = 0,
	can_trigger = function(SKILL, target)
		return target:getPhase() == sgs.Player_Draw
	end,
	on_trigger = function(SKILL, room, player, DATA)
		local num = 2
		local data = sgs.QVariant(num)
		EmitSignal(DrawNCards, player, data)
		num = data:toInt()
		if num > 0 then
			player:drawCards(num)
		end
		EmitSignal(AfterDrawNCards, player, data)
	end,
}
table.insert(sgs.triggers, AIRule_DrawPhase)
table.insert(sgs.matches[sgs.EventPhaseProceeding], #sgs.triggers)
--[[
	弃牌阶段
]]--
local AIRule_DiscardPhase = {
	name = "gamerule:discard phase",
	signal = sgs.EventPhaseProceeding,
	priority = 0,
	can_trigger = function(SKILL, target)
		return target:getPhase() == sgs.Player_Discard
	end,
	on_trigger = function(SKILL, room, player, DATA)
		local discard_num = 0
		repeat
			discard_num = player:getHandcardNum() - player:getMaxCards()
			if discard_num > 0 then
				if not room:askForDiscard(player, "gamerule", discard_num, 1) then
					break
				end
			end
		until discard <= 0
	end,
}
table.insert(sgs.triggers, AIRule_DiscardPhase)
table.insert(sgs.matches[sgs.EventPhaseProceeding], #sgs.triggers)
--[[
	回合开始前
]]--
local AIRule_TurnStart = {
	name = "gamerule:turn start",
	signal = sgs.TurnStart,
	priority = 0,
	can_trigger = function(SKILL, target)
		return target:isAlive()
	end,
	on_trigger = function(SKILL, room, player, DATA)
		if not player:faceUp() then
			player:turnOver()
		end
	end,
}
table.insert(sgs.triggers, AIRule_TurnStart)
table.insert(sgs.matches[sgs.TurnStart], #sgs.triggers)
--[[
	阶段结束时
]]--
local AIRule_PhaseEnd = {
	name = "gamerule:phase end",
	signal = sgs.EventPhaseEnd,
	priority = 0,
	can_trigger = function(SKILL, target)
		return true
	end,
	on_trigger = function(SKILL, room, player, DATA)
		local players = room:getAllPlayers()
		for _,p in sgs.qlist(players) do
			if p:getMark("drank") > 0 then
				room:setPlayerMark(p, "drank", 0)
			end
		end
		if player:getPhase() == sgs.Player_Play then
			room:addPlayerHistory(player, ".")
		end
	end,
}
table.insert(sgs.triggers, AIRule_PhaseEnd)
table.insert(sgs.matches[sgs.EventPhaseEnd], #sgs.triggers)
--[[
	阶段交替时
]]--
local AIRule_PhaseChange = {
	name = "gamerule:phase change",
	signal = sgs.EventPhaseChanging,
	priority = 0,
	can_trigger = function(SKILL, target)
		return true
	end,
	on_trigger = function(SKILL, room, player, data)
		local change = data:toPhaseChange()
		if change.to == sgs.Player_NotActive then
			room:setPlayerFlag(player, ".")
			room:clearPlayerCardLimitation(player, true)
		elseif change.to == sgs.Player_Play then
			room:addPlayerHistory(player, ".")
		end
	end,
}
table.insert(sgs.triggers, AIRule_PhaseChange)
table.insert(sgs.matches[sgs.EventPhaseChanging], #sgs.triggers)