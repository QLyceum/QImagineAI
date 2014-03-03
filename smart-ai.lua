--[[
	太阳神三国杀AI体系·幻想天使版（部分）
	适用版本：
]]--
require "middleclass"
math.randomseed(os.time())
SmartAI = class "SmartAI"
version = "QSanguosha AI 20141231 (Imagine V1.00 Alpha)"
dofile "lua/ai/tables-ai.lua"
--[[****************************************************************
	游戏功能接口
]]--****************************************************************
--[[
	参数：
		player（sgs.ServerPlayer）
	结果：
		sgs.AI
	原型：
		AI *Room::cloneAI(ServerPlayer *player)
]]--
function CloneAI(player)
	return SmartAI(player).lua_ai
end
--[[
	参数：
		player（sgs.ServerPlayer）
	结果：
		无
	原型：
]]--
function SmartAI:initialize(player)
	self.player = player
	self.room = player:getRoom()
	self.role = player:getRole()
	self.lua_ai = sgs.LuaAI(player)
	self.lua_ai.callback = function(full_method_name, ...)
		--The __FUNCTION__ macro is defined as CLASS_NAME::SUBCLASS_NAME::FUNCTION_NAME 
		--in MSVC, while in gcc only FUNCTION_NAME is in place.
		local method_name_start = 1
		while true do			
			local found = string.find(full_method_name, "::", method_name_start)
			if found ~= nil then				
				method_name_start = found + 2
			else				
				break
			end				 
		end
		local method_name = string.sub(full_method_name, method_name_start)
		local method = self[method_name]
		if method then
			local success, result1, result2
			success, result1, result2 = pcall(method, self, ...)
			if not success then
				self.room:writeToConsole(result1)
				self.room:writeToConsole(method_name)
				self.room:writeToConsole(debug.traceback())
				self.room:outputEventStack()
			else
				return result1, result2
			end
		end
	end
	if not sgs.initialized then
		sgs.initialized = true
		sgs.ais = {}
		sgs.turncount = 0
		sgs.debugmode = false
		global_room = self.room
		global_room:writeToConsole(version .. ", Powered by " .. _VERSION)
	end
end
--[[
	参数：
		requestor（sgs.ServerPlayer）
		reason（string）
	结果：
		sgs.Card
	原型：
		const Card *askForCardShow(ServerPlayer *requestor, const char *reason)
]]--
function SmartAI:askForCardShow(self, requestor, reason)
end
--[[
	参数：
		skill_name（string）
		data（sgs.QVariant）
	结果：
		boolean
	原型：
		bool askForSkillInvoke(const char *skill_name, const QVariant &data)
]]--
function SmartAI:askForSkillInvoke(self, skill_name, data)
end
--[[
	参数：
		card_use（sgs.CardUseStruct）
	结果：
		无
	原型：
		void activate(CardUseStruct &card_use)
]]--
function SmartAI:activate(card_use)
end
--[[
	参数：
		reason（string）
		discard_num（number）
		min_nim（number）
		optional（boolean）
		include_equip（boolean）
	结果：
		table{number}
	原型：
		QList<int> askForDiscard(const char *reason, int discard_num, int min_num, bool optional, bool include_equip)
]]--
function SmartAI:askForDiscard(self, reason, discard_num, min_num, optional, include_equip)
end
--[[
	参数：
		skill_name（string）
		choices（string）
		data（sgs.QVariant）
	结果：
		string
	原型：
		QString askForChoice(const char *skill_name, const char *choices, const QVariant &data)
]]--
function SmartAI:askForChoice(self, skill_name, choices, data)
end
--[[
	参数：
		who（sgs.ServerPlayer）
		flags（string）
		reason（string）
		method（sgs.Card_HandlingMethod）
	结果：
		number
	原型：
		int askForCardChosen(ServerPlayer *who, const char *flags, const char *reason, Card::HandlingMethod method)
]]--
function SmartAI:askForCardChosen(self, who, flags, reason, method)
end
--[[
	参数：
		targets（sgs.QList<sgs.ServerPlayer>）
		reason（string）
	结果：
		sgs.ServerPlayer
	原型：
		ServerPlayer *askForPlayerChosen(const QList<ServerPlayer *> &targets, const char *reason)
]]--
function SmartAI:askForPlayerChosen(self, targets, reason)
end
--[[
	参数：
		pattern（string）
		prompt（string）
		data（sgs.QVariant）
	结果：
		sgs.Card
	原型：
		const Card *askForCard(const char *pattern, const char *prompt, const QVariant &data)
]]--
function SmartAI:askForCard(self, pattern, prompt, data)
end
--[[
	参数：
		card_ids（sgs.QList<number>）
		refusable（boolean）
		reason（string）
	结果：
		number
	原型：
		int askForAG(const QList<int> &card_ids, bool refusable, const char *reason)
]]--
function SmartAI:askForAG(self, card_ids, refusable, reason)
end
--[[
	参数：
		dying（sgs.ServerPlayer）
	结果：
		sgs.Card
	原型：
		const Card *askForSinglePeach(ServerPlayer *dying)
]]--
function SmartAI:askForSinglePeach(self, dying)
end
--[[
	参数：
		requestor（sgs.ServerPlayer）
		reason（string）
	结果：
		sgs.Card
	原型：
		const Card *askForPindian(ServerPlayer *requestor, const char *reanson)
]]--
function SmartAI:askForPindian(self, requestor, reason)
end
--[[
	参数：
		reason（string）
	结果：
		sgs.Card_Suit
	原型：
		Card::Suit askForSuit(const QString&)
]]--
function SmartAI:askForSuit(self, reason)
end
--[[
	参数：
		cards（sgs.QList<number>）
		reason（string）
		card_id（number）
	结果：
		sgs.ServerPlayer
		number
	原型：
		ServerPlayer *LuaAI::askForYiji(const QList<int> &cards, const QString &reason, int &card_id)
]]--
function SmartAI:askForYiji(self, cards, reason, card_id)
end
--[[
	参数：
		event（sgs.TriggerEvent）
		player（sgs.ServerPlayer）
		data（sgs.QVariant）
	结果：
		无
	原型：
		void LuaAI::filterEvent(TriggerEvent event, ServerPlayer *player, const QVariant &data)
]]--
function SmartAI:filterEvent(self, event, player, data)
end
--[[
	参数：
		trick（sgs.Card）
		from（sgs.ServerPlayer）
		to（sgs.ServerPlayer）
		positive（boolean）
	结果：
		sgs.Card
	原型：
		const Card *LuaAI::askForNullification(const Card *trick, ServerPlayer *from, ServerPlayer *to, bool positive)
]]--
function SmartAI:askForNullification(self, trick, from, to, positive)
end
--[[****************************************************************
	载入其它文件
]]--****************************************************************
dofile "lua/ai/global-ai.lua"
dofile "lua/ai/tools-ai.lua"
dofile "lua/ai/imagine-ai.lua"
dofile "lua/ai/series-ai.lua"
dofile "lua/ai/rules-ai.lua"