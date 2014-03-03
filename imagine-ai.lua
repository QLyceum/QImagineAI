--[[
	太阳神三国杀AI体系·幻想天使版（部分）
	适用版本：
]]--
--[[****************************************************************
	模拟控制
]]--****************************************************************
--[[
	功能：子类化
]]--
function CreateAIClass(name, parent)
	local AIClass = {}
	AIClass.__index = AIClass
	AIClass.AIClassName = name
	function AIClass:new()
		local self = {}
		if parent then
			self = parent:new()
			self.super = parent
		else
			setmetatable(self, AIClass)
		end
		return self
	end
	return AIClass
end
--[[
	功能：实例化并初始化
]]--
function NewItem(typeClass, source)
	local item = typeClass:new()
	if source and item.initialize then
		item:initialize(source)
	end
	return item
end
--[[****************************************************************
	预定义
]]--****************************************************************
--[[
	sgs.Engine
]]--
AIEngine = CreateAIClass("AIEngine")
function AIEngine:addTranslationEntry() return "Error! Dummy Function Here!" end
function AIEngine:translate() return "Error! Dummy Function Here!" end
function AIEngine:getLuaState() return "Error! Dummy Function Here!" end
function AIEngine:getMiniSceneCounts() return "Error! Dummy Function Here!" end
function AIEngine:addPackage() return "Error! Dummy Function Here!" end
function AIEngine:addBanPackage() return "Error! Dummy Function Here!" end
function AIEngine:getBanPackages() return "Error! Dummy Function Here!" end
function AIEngine:cloneCard() return "Error! Dummy Function Here!" end
function AIEngine:cloneSkillCard() return "Error! Dummy Function Here!" end
function AIEngine:getVersionNumber() return "Error! Dummy Function Here!" end
function AIEngine:getVersion() return "Error! Dummy Function Here!" end
function AIEngine:getVersionName() return "Error! Dummy Function Here!" end
function AIEngine:getMODName() return "Error! Dummy Function Here!" end
function AIEngine:getExtensions() return "Error! Dummy Function Here!" end
function AIEngine:getKingdoms() return "Error! Dummy Function Here!" end
function AIEngine:getKingdomColor() return "Error! Dummy Function Here!" end
function AIEngine:getChattingEasyTexts() return "Error! Dummy Function Here!" end
function AIEngine:getSetupString() return "Error! Dummy Function Here!" end
function AIEngine:getAvailableModes() return "Error! Dummy Function Here!" end
function AIEngine:getModeName() return "Error! Dummy Function Here!" end
function AIEngine:getPlayerCount() return "Error! Dummy Function Here!" end
function AIEngine:getRoles() return "Error! Dummy Function Here!" end
function AIEngine:getRoleList() return "Error! Dummy Function Here!" end
function AIEngine:getRoleIndex() return "Error! Dummy Function Here!" end
function AIEngine:getPattern() return "Error! Dummy Function Here!" end
function AIEngine:matchExpPattern() return "Error! Dummy Function Here!" end
function AIEngine:getCardHandlingMethod() return "Error! Dummy Function Here!" end
function AIEngine:getRelatedSkills() return "Error! Dummy Function Here!" end
function AIEngine:getMainSkill() return "Error! Dummy Function Here!" end
function AIEngine:getModScenarioNames() return "Error! Dummy Function Here!" end
function AIEngine:addScenario() return "Error! Dummy Function Here!" end
function AIEngine:getScenario() return "Error! Dummy Function Here!" end
function AIEngine:addPackage() return "Error! Dummy Function Here!" end
function AIEngine:getGeneral() return "Error! Dummy Function Here!" end
function AIEngine:getGeneralCount() return "Error! Dummy Function Here!" end
function AIEngine:getSkill() return "Error! Dummy Function Here!" end
function AIEngine:getSkillNames() return "Error! Dummy Function Here!" end
function AIEngine:getTriggerSkill() return "Error! Dummy Function Here!" end
function AIEngine:getViewAsSkill() return "Error! Dummy Function Here!" end
function AIEngine:getDistanceSkills() return "Error! Dummy Function Here!" end
function AIEngine:getMaxCardsSkills() return "Error! Dummy Function Here!" end
function AIEngine:getTargetModSkills() return "Error! Dummy Function Here!" end
function AIEngine:getGlobalTriggerSkills() return "Error! Dummy Function Here!" end
function AIEngine:addSkills() return "Error! Dummy Function Here!" end
function AIEngine:getCardCount() return "Error! Dummy Function Here!" end
function AIEngine:getEngineCard() return "Error! Dummy Function Here!" end
function AIEngine:getCard() return "Error! Dummy Function Here!" end
function AIEngine:getWrappedCard() return "Error! Dummy Function Here!" end
function AIEngine:getLords() return "Error! Dummy Function Here!" end
function AIEngine:getRandomLords() return "Error! Dummy Function Here!" end
function AIEngine:getRandomGenerals() return "Error! Dummy Function Here!" end
function AIEngine:getRandomCards() return "Error! Dummy Function Here!" end
function AIEngine:getRandomGeneralName() return "Error! Dummy Function Here!" end
function AIEngine:getLimitedGeneralNames() return "Error! Dummy Function Here!" end
function AIEngine:playSystemAudioEffect() return "Error! Dummy Function Here!" end
function AIEngine:playAudioEffect() return "Error! Dummy Function Here!" end
function AIEngine:playSkillAudioEffect() return "Error! Dummy Function Here!" end
function AIEngine:isProhibited() return "Error! Dummy Function Here!" end
function AIEngine:correctDistance() return "Error! Dummy Function Here!" end
function AIEngine:correctMaxCards() return "Error! Dummy Function Here!" end
function AIEngine:correctCardTarget() return "Error! Dummy Function Here!" end
function AIEngine:registerRoom() return "Error! Dummy Function Here!" end
function AIEngine:unregisterRoom() return "Error! Dummy Function Here!" end
function AIEngine:currentRoomObject() return "Error! Dummy Function Here!" end
function AIEngine:currentRoom() return "Error! Dummy Function Here!" end
function AIEngine:currentRoomState() return "Error! Dummy Function Here!" end
function AIEngine:getCurrentCardUsePattern() return "Error! Dummy Function Here!" end
function AIEngine:getCurrentCardUseReason() return "Error! Dummy Function Here!" end
function AIEngine:findConvertFrom() return "Error! Dummy Function Here!" end
function AIEngine:isGeneralHidden() return "Error! Dummy Function Here!" end
--[[
	sgs.General
]]--
AIGeneral = CreateAIClass("AIGeneral")
function AIGeneral:getMaxHp() return "Error! Dummy Function Here!" end
function AIGeneral:getKingdom() return "Error! Dummy Function Here!" end
function AIGeneral:isMale() return "Error! Dummy Function Here!" end
function AIGeneral:isFemale() return "Error! Dummy Function Here!" end
function AIGeneral:isNeuter() return "Error! Dummy Function Here!" end
function AIGeneral:isLord() return "Error! Dummy Function Here!" end
function AIGeneral:isHidden() return "Error! Dummy Function Here!" end
function AIGeneral:isTotallyHidden() return "Error! Dummy Function Here!" end
function AIGeneral:getGender() return "Error! Dummy Function Here!" end
function AIGeneral:setGender() return "Error! Dummy Function Here!" end
function AIGeneral:addSkill() return "Error! Dummy Function Here!" end
function AIGeneral:hasSkill() return "Error! Dummy Function Here!" end
function AIGeneral:getSkillList() return "Error! Dummy Function Here!" end
function AIGeneral:getVisibleSkillList() return "Error! Dummy Function Here!" end
function AIGeneral:getVisibleSkills() return "Error! Dummy Function Here!" end
function AIGeneral:getTriggerSkills() return "Error! Dummy Function Here!" end
function AIGeneral:addRelateSkill() return "Error! Dummy Function Here!" end
function AIGeneral:getRelatedSkillNames() return "Error! Dummy Function Here!" end
function AIGeneral:getPackage() return "Error! Dummy Function Here!" end
function AIGeneral:getSkillDescription() return "Error! Dummy Function Here!" end
function AIGeneral:getExtraSkillSet() return "Error! Dummy Function Here!" end
--[[
	sgs.Player
]]--
AIPlayer = CreateAIClass("AIPlayer")
function AIPlayer:objectName() return "Error! Dummy Function Here!" end
function AIPlayer:setScreenName() return "Error! Dummy Function Here!" end
function AIPlayer:screenName() return "Error! Dummy Function Here!" end
function AIPlayer:getHp() return "Error! Dummy Function Here!" end
function AIPlayer:setHp() return "Error! Dummy Function Here!" end
function AIPlayer:getMaxHp() return "Error! Dummy Function Here!" end
function AIPlayer:setMaxHp() return "Error! Dummy Function Here!" end
function AIPlayer:getLostHp() return "Error! Dummy Function Here!" end
function AIPlayer:isWounded() return "Error! Dummy Function Here!" end
function AIPlayer:getGender() return "Error! Dummy Function Here!" end
function AIPlayer:setGender() return "Error! Dummy Function Here!" end
function AIPlayer:isMale() return "Error! Dummy Function Here!" end
function AIPlayer:isFemale() return "Error! Dummy Function Here!" end
function AIPlayer:isNeuter() return "Error! Dummy Function Here!" end
function AIPlayer:isOwner() return "Error! Dummy Function Here!" end
function AIPlayer:setOwner() return "Error! Dummy Function Here!" end
function AIPlayer:hasShownRole() return "Error! Dummy Function Here!" end
function AIPlayer:setShownRole() return "Error! Dummy Function Here!" end
function AIPlayer:getMaxCards() return "Error! Dummy Function Here!" end
function AIPlayer:getKingdom() return "Error! Dummy Function Here!" end
function AIPlayer:setKingdom() return "Error! Dummy Function Here!" end
function AIPlayer:setRole() return "Error! Dummy Function Here!" end
function AIPlayer:getRole() return "Error! Dummy Function Here!" end
function AIPlayer:getRoleEnum() return "Error! Dummy Function Here!" end
function AIPlayer:setGeneral() return "Error! Dummy Function Here!" end
function AIPlayer:setGeneralName() return "Error! Dummy Function Here!" end
function AIPlayer:getGeneralName() return "Error! Dummy Function Here!" end
function AIPlayer:setGeneral2Name() return "Error! Dummy Function Here!" end
function AIPlayer:getGeneral2Name() return "Error! Dummy Function Here!" end
function AIPlayer:getGeneral2() return "Error! Dummy Function Here!" end
function AIPlayer:setState() return "Error! Dummy Function Here!" end
function AIPlayer:getState() return "Error! Dummy Function Here!" end
function AIPlayer:getSeat() return "Error! Dummy Function Here!" end
function AIPlayer:setSeat() return "Error! Dummy Function Here!" end
function AIPlayer:isAdjacentTo() return "Error! Dummy Function Here!" end
function AIPlayer:getPhaseString() return "Error! Dummy Function Here!" end
function AIPlayer:setPhaseString() return "Error! Dummy Function Here!" end
function AIPlayer:getPhase() return "Error! Dummy Function Here!" end
function AIPlayer:setPhase() return "Error! Dummy Function Here!" end
function AIPlayer:getAttackRange() return "Error! Dummy Function Here!" end
function AIPlayer:inMyAttackRange() return "Error! Dummy Function Here!" end
function AIPlayer:isAlive() return "Error! Dummy Function Here!" end
function AIPlayer:isDead() return "Error! Dummy Function Here!" end
function AIPlayer:setAlive() return "Error! Dummy Function Here!" end
function AIPlayer:getFlags() return "Error! Dummy Function Here!" end
function AIPlayer:getFlagList() return "Error! Dummy Function Here!" end
function AIPlayer:setFlags() return "Error! Dummy Function Here!" end
function AIPlayer:hasFlag() return "Error! Dummy Function Here!" end
function AIPlayer:clearFlags() return "Error! Dummy Function Here!" end
function AIPlayer:faceUp() return "Error! Dummy Function Here!" end
function AIPlayer:setFaceUp() return "Error! Dummy Function Here!" end
function AIPlayer:aliveCount() return "Error! Dummy Function Here!" end
function AIPlayer:setFixedDistance() return "Error! Dummy Function Here!" end
function AIPlayer:distanceTo() return "Error! Dummy Function Here!" end
function AIPlayer:getAvatarGeneral() return "Error! Dummy Function Here!" end
function AIPlayer:getGeneral() return "Error! Dummy Function Here!" end
function AIPlayer:isLord() return "Error! Dummy Function Here!" end
function AIPlayer:acquireSkill() return "Error! Dummy Function Here!" end
function AIPlayer:detachSkill() return "Error! Dummy Function Here!" end
function AIPlayer:detachAllSkills() return "Error! Dummy Function Here!" end
function AIPlayer:addSkill() return "Error! Dummy Function Here!" end
function AIPlayer:loseSkill() return "Error! Dummy Function Here!" end
function AIPlayer:hasSkill() return "Error! Dummy Function Here!" end
function AIPlayer:hasSkills() return "Error! Dummy Function Here!" end
function AIPlayer:hasInnateSkill() return "Error! Dummy Function Here!" end
function AIPlayer:hasLordSkill() return "Error! Dummy Function Here!" end
function AIPlayer:getGameMode() return "Error! Dummy Function Here!" end
function AIPlayer:setEquip() return "Error! Dummy Function Here!" end
function AIPlayer:removeEquip() return "Error! Dummy Function Here!" end
function AIPlayer:hasEquip() return "Error! Dummy Function Here!" end
function AIPlayer:getJudgingArea() return "Error! Dummy Function Here!" end
function AIPlayer:getJudgingAreaID() return "Error! Dummy Function Here!" end
function AIPlayer:addDelayedTrick() return "Error! Dummy Function Here!" end
function AIPlayer:removeDelayedTrick() return "Error! Dummy Function Here!" end
function AIPlayer:containsTrick() return "Error! Dummy Function Here!" end
function AIPlayer:getHandcardNum() return "Error! Dummy Function Here!" end
function AIPlayer:removeCard() return "Error! Dummy Function Here!" end
function AIPlayer:addCard() return "Error! Dummy Function Here!" end
function AIPlayer:getHandcards() return "Error! Dummy Function Here!" end
function AIPlayer:getWeapon() return "Error! Dummy Function Here!" end
function AIPlayer:getArmor() return "Error! Dummy Function Here!" end
function AIPlayer:getDefensiveHorse() return "Error! Dummy Function Here!" end
function AIPlayer:getOffensiveHorse() return "Error! Dummy Function Here!" end
function AIPlayer:getEquips() return "Error! Dummy Function Here!" end
function AIPlayer:getEquip() return "Error! Dummy Function Here!" end
function AIPlayer:hasWeapon() return "Error! Dummy Function Here!" end
function AIPlayer:hasArmorEffect() return "Error! Dummy Function Here!" end
function AIPlayer:isKongcheng() return "Error! Dummy Function Here!" end
function AIPlayer:isNude() return "Error! Dummy Function Here!" end
function AIPlayer:isAllNude() return "Error! Dummy Function Here!" end
function AIPlayer:canDiscard() return "Error! Dummy Function Here!" end
function AIPlayer:addMark() return "Error! Dummy Function Here!" end
function AIPlayer:removeMark() return "Error! Dummy Function Here!" end
function AIPlayer:setMark() return "Error! Dummy Function Here!" end
function AIPlayer:getMark() return "Error! Dummy Function Here!" end
function AIPlayer:setChained() return "Error! Dummy Function Here!" end
function AIPlayer:isChained() return "Error! Dummy Function Here!" end
function AIPlayer:canSlash() return "Error! Dummy Function Here!" end
function AIPlayer:getCardCount() return "Error! Dummy Function Here!" end
function AIPlayer:getPile() return "Error! Dummy Function Here!" end
function AIPlayer:getPileNames() return "Error! Dummy Function Here!" end
function AIPlayer:getPileName() return "Error! Dummy Function Here!" end
function AIPlayer:pileOpen() return "Error! Dummy Function Here!" end
function AIPlayer:setPileOpen() return "Error! Dummy Function Here!" end
function AIPlayer:addHistory() return "Error! Dummy Function Here!" end
function AIPlayer:clearHistory() return "Error! Dummy Function Here!" end
function AIPlayer:hasUsed() return "Error! Dummy Function Here!" end
function AIPlayer:usedTimes() return "Error! Dummy Function Here!" end
function AIPlayer:getSlashCount() return "Error! Dummy Function Here!" end
function AIPlayer:hasEquipSkill() return "Error! Dummy Function Here!" end
function AIPlayer:getTriggerSkills() return "Error! Dummy Function Here!" end
function AIPlayer:getSkills() return "Error! Dummy Function Here!" end
function AIPlayer:getSkillList() return "Error! Dummy Function Here!" end
function AIPlayer:getVisibleSkills() return "Error! Dummy Function Here!" end
function AIPlayer:getVisibleSkillList() return "Error! Dummy Function Here!" end
function AIPlayer:getAcquiredSkills() return "Error! Dummy Function Here!" end
function AIPlayer:getSkillDescription() return "Error! Dummy Function Here!" end
function AIPlayer:isProhibited() return "Error! Dummy Function Here!" end
function AIPlayer:canSlashWithoutCrossbow() return "Error! Dummy Function Here!" end
function AIPlayer:isLastHandCard() return "Error! Dummy Function Here!" end
function AIPlayer:isJilei() return "Error! Dummy Function Here!" end
function AIPlayer:isLocked() return "Error! Dummy Function Here!" end
function AIPlayer:setCardLimitation() return "Error! Dummy Function Here!" end
function AIPlayer:removeCardLimitation() return "Error! Dummy Function Here!" end
function AIPlayer:clearCardLimitation() return "Error! Dummy Function Here!" end
function AIPlayer:isCardLimited() return "Error! Dummy Function Here!" end
function AIPlayer:addQinggangTag() return "Error! Dummy Function Here!" end
function AIPlayer:removeQinggangTag() return "Error! Dummy Function Here!" end
function AIPlayer:copyFrom() return "Error! Dummy Function Here!" end
function AIPlayer:getSiblings() return "Error! Dummy Function Here!" end
function AIPlayer:getAliveSiblings() return "Error! Dummy Function Here!" end
--[[
	sgs.ServerPlayer
]]--
AIServerPlayer = CreateAIClass("AIServerPlayer", AIPlayer)
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
--[[
	sgs.ClientPlayer
]]--
AIClientPlayer = CreateAIClass("AIClientPlayer", AIPlayer)
function AIClientPlayer:getHandcards() return "Error! Dummy Function Here!" end
function AIClientPlayer:setCards() return "Error! Dummy Function Here!" end
function AIClientPlayer:getMarkDoc() return "Error! Dummy Function Here!" end
function AIClientPlayer:changePile() return "Error! Dummy Function Here!" end
function AIClientPlayer:getDeathPixmapPath() return "Error! Dummy Function Here!" end
function AIClientPlayer:setHandcardNum() return "Error! Dummy Function Here!" end
function AIClientPlayer:getGameMode() return "Error! Dummy Function Here!" end
function AIClientPlayer:setFlags() return "Error! Dummy Function Here!" end
function AIClientPlayer:aliveCount() return "Error! Dummy Function Here!" end
function AIClientPlayer:getHandcardNum() return "Error! Dummy Function Here!" end
function AIClientPlayer:removeCard() return "Error! Dummy Function Here!" end
function AIClientPlayer:addCard() return "Error! Dummy Function Here!" end
function AIClientPlayer:addKnownHandCard() return "Error! Dummy Function Here!" end
function AIClientPlayer:isLastHandCard() return "Error! Dummy Function Here!" end
function AIClientPlayer:setMark() return "Error! Dummy Function Here!" end
--[[
	sgs.Room
]]--
AIRoom = CreateAIClass("AIRoom")
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
--[[****************************************************************
	载入定义文件
]]--****************************************************************
dofile "lua/ai/engine-ai.lua"
dofile "lua/ai/general-ai.lua"
dofile "lua/ai/player-ai.lua"
dofile "lua/ai/serverplayer-ai.lua"
dofile "lua/ai/clientplayer-ai.lua"
dofile "lua/ai/room-ai.lua"