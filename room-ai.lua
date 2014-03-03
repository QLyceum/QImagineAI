--[[
	太阳神三国杀AI体系·幻想天使版（AIRoom部分）
	适用版本：
]]--
--[[
	功能：初始化
	参数：
		room（sgs.Room类型）
	结果：
		无
]]--
function AIRoom:initialize(room)
	assert(room)
	self.source = room
end
--[[
	参数：
	结果：
	原型：
]]--
function AIRoom:addSocket() return "Error! Dummy Function Here!" end
function AIRoom:getId() return "Error! Dummy Function Here!" end
function AIRoom:isFull() return "Error! Dummy Function Here!" end
function AIRoom:isFinished() return "Error! Dummy Function Here!" end
function AIRoom:canPause() return "Error! Dummy Function Here!" end
function AIRoom:isPaused() return "Error! Dummy Function Here!" end
function AIRoom:getLack() return "Error! Dummy Function Here!" end
function AIRoom:getMode() return "Error! Dummy Function Here!" end
function AIRoom:getScenario() return "Error! Dummy Function Here!" end
function AIRoom:getThread() return "Error! Dummy Function Here!" end
function AIRoom:getCurrent() return "Error! Dummy Function Here!" end
function AIRoom:setCurrent() return "Error! Dummy Function Here!" end
function AIRoom:alivePlayerCount() return "Error! Dummy Function Here!" end
function AIRoom:getOtherPlayers() return "Error! Dummy Function Here!" end
function AIRoom:getPlayers() return "Error! Dummy Function Here!" end
function AIRoom:getAllPlayers() return "Error! Dummy Function Here!" end
function AIRoom:getAlivePlayers() return "Error! Dummy Function Here!" end
function AIRoom:output() return "Error! Dummy Function Here!" end
function AIRoom:outputEventStack() return "Error! Dummy Function Here!" end
function AIRoom:enterDying() return "Error! Dummy Function Here!" end
function AIRoom:getCurrentDyingPlayer() return "Error! Dummy Function Here!" end
function AIRoom:killPlayer() return "Error! Dummy Function Here!" end
function AIRoom:revivePlayer() return "Error! Dummy Function Here!" end
function AIRoom:aliveRoles() return "Error! Dummy Function Here!" end
function AIRoom:gameOver() return "Error! Dummy Function Here!" end
function AIRoom:slashEffect() return "Error! Dummy Function Here!" end
function AIRoom:slashResult() return "Error! Dummy Function Here!" end
function AIRoom:attachSkillToPlayer() return "Error! Dummy Function Here!" end
function AIRoom:detachSkillFromPlayer() return "Error! Dummy Function Here!" end
function AIRoom:handleAcquireDetachSkills() return "Error! Dummy Function Here!" end
function AIRoom:setPlayerFlag() return "Error! Dummy Function Here!" end
function AIRoom:setPlayerProperty() return "Error! Dummy Function Here!" end
function AIRoom:setPlayerMark() return "Error! Dummy Function Here!" end
function AIRoom:addPlayerMark() return "Error! Dummy Function Here!" end
function AIRoom:removePlayerMark() return "Error! Dummy Function Here!" end
function AIRoom:setPlayerCardLimitation() return "Error! Dummy Function Here!" end
function AIRoom:removePlayerCardLimitation() return "Error! Dummy Function Here!" end
function AIRoom:clearPlayerCardLimitation() return "Error! Dummy Function Here!" end
function AIRoom:setCardFlag() return "Error! Dummy Function Here!" end
function AIRoom:clearCardFlag() return "Error! Dummy Function Here!" end
function AIRoom:useCard() return "Error! Dummy Function Here!" end
function AIRoom:damage() return "Error! Dummy Function Here!" end
function AIRoom:sendDamageLog() return "Error! Dummy Function Here!" end
function AIRoom:loseHp() return "Error! Dummy Function Here!" end
function AIRoom:loseMaxHp() return "Error! Dummy Function Here!" end
function AIRoom:changeMaxHpForAwakenSkill() return "Error! Dummy Function Here!" end
function AIRoom:applyDamage() return "Error! Dummy Function Here!" end
function AIRoom:recover() return "Error! Dummy Function Here!" end
function AIRoom:cardEffect() return "Error! Dummy Function Here!" end
function AIRoom:isJinkEffected() return "Error! Dummy Function Here!" end
function AIRoom:judge() return "Error! Dummy Function Here!" end
function AIRoom:sendJudgeResult() return "Error! Dummy Function Here!" end
function AIRoom:getNCards() return "Error! Dummy Function Here!" end
function AIRoom:getLord() return "Error! Dummy Function Here!" end
function AIRoom:askForGuanxing() return "Error! Dummy Function Here!" end
function AIRoom:doGongxin() return "Error! Dummy Function Here!" end
function AIRoom:drawCard() return "Error! Dummy Function Here!" end
function AIRoom:fillAG() return "Error! Dummy Function Here!" end
function AIRoom:takeAG() return "Error! Dummy Function Here!" end
function AIRoom:clearAG() return "Error! Dummy Function Here!" end
function AIRoom:provide() return "Error! Dummy Function Here!" end
function AIRoom:getLieges() return "Error! Dummy Function Here!" end
function AIRoom:sendLog() return "Error! Dummy Function Here!" end
function AIRoom:showCard() return "Error! Dummy Function Here!" end
function AIRoom:showAllCards() return "Error! Dummy Function Here!" end
function AIRoom:retrial() return "Error! Dummy Function Here!" end
function AIRoom:doRequest() return "Error! Dummy Function Here!" end
function AIRoom:doBroadcastRequest() return "Error! Dummy Function Here!" end
function AIRoom:doBroadcastRaceRequest() return "Error! Dummy Function Here!" end
function AIRoom:doNotify() return "Error! Dummy Function Here!" end
function AIRoom:doBroadcastNotify() return "Error! Dummy Function Here!" end
function AIRoom:getResult() return "Error! Dummy Function Here!" end
function AIRoom:getRaceResult() return "Error! Dummy Function Here!" end
function AIRoom:verifyNullificationResponse() return "Error! Dummy Function Here!" end
function AIRoom:notifyMoveFocus() return "Error! Dummy Function Here!" end
function AIRoom:notifyMoveCards() return "Error! Dummy Function Here!" end
function AIRoom:notifyProperty() return "Error! Dummy Function Here!" end
function AIRoom:notifyUpdateCard() return "Error! Dummy Function Here!" end
function AIRoom:broadcastUpdateCard() return "Error! Dummy Function Here!" end
function AIRoom:notifyResetCard() return "Error! Dummy Function Here!" end
function AIRoom:broadcastResetCard() return "Error! Dummy Function Here!" end
function AIRoom:broadcastProperty() return "Error! Dummy Function Here!" end
function AIRoom:notifySkillInvoked() return "Error! Dummy Function Here!" end
function AIRoom:broadcastSkillInvoke() return "Error! Dummy Function Here!" end
function AIRoom:doLightbox() return "Error! Dummy Function Here!" end
function AIRoom:doAnimate() return "Error! Dummy Function Here!" end
function AIRoom:preparePlayers() return "Error! Dummy Function Here!" end
function AIRoom:changePlayerGeneral() return "Error! Dummy Function Here!" end
function AIRoom:changePlayerGeneral2() return "Error! Dummy Function Here!" end
function AIRoom:filterCards() return "Error! Dummy Function Here!" end
function AIRoom:acquireSkill() return "Error! Dummy Function Here!" end
function AIRoom:adjustSeats() return "Error! Dummy Function Here!" end
function AIRoom:swapPile() return "Error! Dummy Function Here!" end
function AIRoom:getDiscardPile() return "Error! Dummy Function Here!" end
function AIRoom:getDrawPile() return "Error! Dummy Function Here!" end
function AIRoom:getCardFromPile() return "Error! Dummy Function Here!" end
function AIRoom:findPlayer() return "Error! Dummy Function Here!" end
function AIRoom:findPlayersBySkillName() return "Error! Dummy Function Here!" end
function AIRoom:findPlayerBySkillName() return "Error! Dummy Function Here!" end
function AIRoom:installEquip() return "Error! Dummy Function Here!" end
function AIRoom:resetAI() return "Error! Dummy Function Here!" end
function AIRoom:changeHero() return "Error! Dummy Function Here!" end
function AIRoom:swapSeat() return "Error! Dummy Function Here!" end
function AIRoom:getLuaState() return "Error! Dummy Function Here!" end
function AIRoom:setFixedDistance() return "Error! Dummy Function Here!" end
function AIRoom:reverseFor3v3() return "Error! Dummy Function Here!" end
function AIRoom:hasWelfare() return "Error! Dummy Function Here!" end
function AIRoom:getFront() return "Error! Dummy Function Here!" end
function AIRoom:signup() return "Error! Dummy Function Here!" end
function AIRoom:getOwner() return "Error! Dummy Function Here!" end
function AIRoom:updateStateItem() return "Error! Dummy Function Here!" end
function AIRoom:reconnect() return "Error! Dummy Function Here!" end
function AIRoom:marshal() return "Error! Dummy Function Here!" end
function AIRoom:sortByActionOrder() return "Error! Dummy Function Here!" end
function AIRoom:isProhibited() return "Error! Dummy Function Here!" end
function AIRoom:setTag() return "Error! Dummy Function Here!" end
function AIRoom:getTag() return "Error! Dummy Function Here!" end
function AIRoom:removeTag() return "Error! Dummy Function Here!" end
function AIRoom:setEmotion() return "Error! Dummy Function Here!" end
function AIRoom:getCardPlace() return "Error! Dummy Function Here!" end
function AIRoom:getCardOwner() return "Error! Dummy Function Here!" end
function AIRoom:setCardMapping() return "Error! Dummy Function Here!" end
function AIRoom:drawCards() return "Error! Dummy Function Here!" end
function AIRoom:obtainCard() return "Error! Dummy Function Here!" end
function AIRoom:throwCard() return "Error! Dummy Function Here!" end
function AIRoom:moveCardTo() return "Error! Dummy Function Here!" end
function AIRoom:moveCardsAtomic() return "Error! Dummy Function Here!" end
function AIRoom:moveCards() return "Error! Dummy Function Here!" end
function AIRoom:_breakDownCardMoves() return "Error! Dummy Function Here!" end
function AIRoom:activate() return "Error! Dummy Function Here!" end
function AIRoom:askForLuckCard() return "Error! Dummy Function Here!" end
function AIRoom:askForSuit() return "Error! Dummy Function Here!" end
function AIRoom:askForKingdom() return "Error! Dummy Function Here!" end
function AIRoom:askForSkillInvoke() return "Error! Dummy Function Here!" end
function AIRoom:askForChoice() return "Error! Dummy Function Here!" end
function AIRoom:askForDiscard() return "Error! Dummy Function Here!" end
function AIRoom:askForExchange() return "Error! Dummy Function Here!" end
function AIRoom:askForNullification() return "Error! Dummy Function Here!" end
function AIRoom:isCanceled() return "Error! Dummy Function Here!" end
function AIRoom:askForCardChosen() return "Error! Dummy Function Here!" end
function AIRoom:askForCard() return "Error! Dummy Function Here!" end
function AIRoom:askForUseCard() return "Error! Dummy Function Here!" end
function AIRoom:askForUseSlashTo() return "Error! Dummy Function Here!" end
function AIRoom:askForAG() return "Error! Dummy Function Here!" end
function AIRoom:askForCardShow() return "Error! Dummy Function Here!" end
function AIRoom:askForYiji() return "Error! Dummy Function Here!" end
function AIRoom:askForPindian() return "Error! Dummy Function Here!" end
function AIRoom:askForPindianRace() return "Error! Dummy Function Here!" end
function AIRoom:askForPlayerChosen() return "Error! Dummy Function Here!" end
function AIRoom:askForGeneral() return "Error! Dummy Function Here!" end
function AIRoom:askForSinglePeach() return "Error! Dummy Function Here!" end
function AIRoom:addPlayerHistory() return "Error! Dummy Function Here!" end
function AIRoom:toggleReadyCommand() return "Error! Dummy Function Here!" end
function AIRoom:speakCommand() return "Error! Dummy Function Here!" end
function AIRoom:trustCommand() return "Error! Dummy Function Here!" end
function AIRoom:pauseCommand() return "Error! Dummy Function Here!" end
function AIRoom:processResponse() return "Error! Dummy Function Here!" end
function AIRoom:addRobotCommand() return "Error! Dummy Function Here!" end
function AIRoom:fillRobotsCommand() return "Error! Dummy Function Here!" end
function AIRoom:broadcastInvoke() return "Error! Dummy Function Here!" end
function AIRoom:networkDelayTestCommand() return "Error! Dummy Function Here!" end
function AIRoom:getRoomState() return "Error! Dummy Function Here!" end
function AIRoom:getCard() return "Error! Dummy Function Here!" end
function AIRoom:resetCard() return "Error! Dummy Function Here!" end
function AIRoom:updateCardsOnLose() return "Error! Dummy Function Here!" end
function AIRoom:updateCardsOnGet() return "Error! Dummy Function Here!" end