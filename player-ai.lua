--[[
	太阳神三国杀AI体系·幻想天使版（部分）
	适用版本：
]]--
--[[
	功能：初始化
	参数：
		player（sgs.Player类型）
	结果：
		无
]]--
function AIPlayer:initialize(player)
	assert(player)
	self.source = player
end
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