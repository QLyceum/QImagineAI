--[[
	太阳神三国杀AI体系·幻想天使版（部分）
	适用版本：
]]--
--[[
	功能：初始化
	参数：
		player（sgs.ServerPlayer类型）
	结果：
		无
]]--
function AIServerPlayer:initialize(player)
	assert(player)
	self.source = player
end
function AIServerPlayer:setSocket() return "Error! Dummy Function Here!" end
function AIServerPlayer:invoke() return "Error! Dummy Function Here!" end
function AIServerPlayer:reportHeader() return "Error! Dummy Function Here!" end
function AIServerPlayer:unicast() return "Error! Dummy Function Here!" end
function AIServerPlayer:drawCard() return "Error! Dummy Function Here!" end
function AIServerPlayer:getRoom() return "Error! Dummy Function Here!" end
function AIServerPlayer:broadcastSkillInvoke() return "Error! Dummy Function Here!" end
function AIServerPlayer:getRandomHandCardId() return "Error! Dummy Function Here!" end
function AIServerPlayer:getRandomHandCard() return "Error! Dummy Function Here!" end
function AIServerPlayer:obtainCard() return "Error! Dummy Function Here!" end
function AIServerPlayer:throwAllEquips() return "Error! Dummy Function Here!" end
function AIServerPlayer:throwAllHandCards() return "Error! Dummy Function Here!" end
function AIServerPlayer:throwAllHandCardsAndEquips() return "Error! Dummy Function Here!" end
function AIServerPlayer:throwAllCards() return "Error! Dummy Function Here!" end
function AIServerPlayer:bury() return "Error! Dummy Function Here!" end
function AIServerPlayer:throwAllMarks() return "Error! Dummy Function Here!" end
function AIServerPlayer:clearOnePrivatePile() return "Error! Dummy Function Here!" end
function AIServerPlayer:clearPrivatePiles() return "Error! Dummy Function Here!" end
function AIServerPlayer:drawCards() return "Error! Dummy Function Here!" end
function AIServerPlayer:askForSkillInvoke() return "Error! Dummy Function Here!" end
function AIServerPlayer:forceToDiscard() return "Error! Dummy Function Here!" end
function AIServerPlayer:handCards() return "Error! Dummy Function Here!" end
function AIServerPlayer:getHandcards() return "Error! Dummy Function Here!" end
function AIServerPlayer:getCards() return "Error! Dummy Function Here!" end
function AIServerPlayer:wholeHandCards() return "Error! Dummy Function Here!" end
function AIServerPlayer:hasNullification() return "Error! Dummy Function Here!" end
function AIServerPlayer:pindian() return "Error! Dummy Function Here!" end
function AIServerPlayer:turnOver() return "Error! Dummy Function Here!" end
function AIServerPlayer:play() return "Error! Dummy Function Here!" end
function AIServerPlayer:changePhase() return "Error! Dummy Function Here!" end
function AIServerPlayer:getPhases() return "Error! Dummy Function Here!" end
function AIServerPlayer:skip() return "Error! Dummy Function Here!" end
function AIServerPlayer:insertPhase() return "Error! Dummy Function Here!" end
function AIServerPlayer:isSkipped() return "Error! Dummy Function Here!" end
function AIServerPlayer:gainMark() return "Error! Dummy Function Here!" end
function AIServerPlayer:loseMark() return "Error! Dummy Function Here!" end
function AIServerPlayer:loseAllMarks() return "Error! Dummy Function Here!" end
function AIServerPlayer:addSkill() return "Error! Dummy Function Here!" end
function AIServerPlayer:loseSkill() return "Error! Dummy Function Here!" end
function AIServerPlayer:setGender() return "Error! Dummy Function Here!" end
function AIServerPlayer:setAI() return "Error! Dummy Function Here!" end
function AIServerPlayer:getAI() return "Error! Dummy Function Here!" end
function AIServerPlayer:getSmartAI() return "Error! Dummy Function Here!" end
function AIServerPlayer:isOnline() return "Error! Dummy Function Here!" end
function AIServerPlayer:isOffline() return "Error! Dummy Function Here!" end
function AIServerPlayer:aliveCount() return "Error! Dummy Function Here!" end
function AIServerPlayer:getHandcardNum() return "Error! Dummy Function Here!" end
function AIServerPlayer:removeCard() return "Error! Dummy Function Here!" end
function AIServerPlayer:addCard() return "Error! Dummy Function Here!" end
function AIServerPlayer:isLastHandCard() return "Error! Dummy Function Here!" end
function AIServerPlayer:addVictim() return "Error! Dummy Function Here!" end
function AIServerPlayer:getVictims() return "Error! Dummy Function Here!" end
function AIServerPlayer:startRecord() return "Error! Dummy Function Here!" end
function AIServerPlayer:saveRecord() return "Error! Dummy Function Here!" end
function AIServerPlayer:setNext() return "Error! Dummy Function Here!" end
function AIServerPlayer:getNext() return "Error! Dummy Function Here!" end
function AIServerPlayer:getNextAlive() return "Error! Dummy Function Here!" end
function AIServerPlayer:addToSelected() return "Error! Dummy Function Here!" end
function AIServerPlayer:getSelected() return "Error! Dummy Function Here!" end
function AIServerPlayer:findReasonable() return "Error! Dummy Function Here!" end
function AIServerPlayer:clearSelected() return "Error! Dummy Function Here!" end
function AIServerPlayer:getGeneralMaxHp() return "Error! Dummy Function Here!" end
function AIServerPlayer:getGameMode() return "Error! Dummy Function Here!" end
function AIServerPlayer:getIp() return "Error! Dummy Function Here!" end
function AIServerPlayer:introduceTo() return "Error! Dummy Function Here!" end
function AIServerPlayer:marshal() return "Error! Dummy Function Here!" end
function AIServerPlayer:addToPile() return "Error! Dummy Function Here!" end
function AIServerPlayer:exchangeFreelyFromPrivatePile() return "Error! Dummy Function Here!" end
function AIServerPlayer:gainAnExtraTurn() return "Error! Dummy Function Here!" end
function AIServerPlayer:copyFrom() return "Error! Dummy Function Here!" end
function AIServerPlayer:startNetworkDelayTest() return "Error! Dummy Function Here!" end
function AIServerPlayer:endNetworkDelayTest() return "Error! Dummy Function Here!" end
function AIServerPlayer:getSemaphore() return "Error! Dummy Function Here!" end
function AIServerPlayer:acquireLock() return "Error! Dummy Function Here!" end
function AIServerPlayer:tryAcquireLock() return "Error! Dummy Function Here!" end
function AIServerPlayer:releaseLock() return "Error! Dummy Function Here!" end
function AIServerPlayer:drainLock() return "Error! Dummy Function Here!" end
function AIServerPlayer:drainAllLocks() return "Error! Dummy Function Here!" end
function AIServerPlayer:getClientReplyString() return "Error! Dummy Function Here!" end
function AIServerPlayer:setClientReplyString() return "Error! Dummy Function Here!" end
function AIServerPlayer:getClientReply() return "Error! Dummy Function Here!" end
function AIServerPlayer:setClientReply() return "Error! Dummy Function Here!" end
function AIServerPlayer:CompareByActionOrder() return "Error! Dummy Function Here!" end
function AIServerPlayer:removePileByName() return "Error! Dummy Function Here!" end