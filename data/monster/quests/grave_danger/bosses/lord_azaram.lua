local mType = Game.createMonsterType("Lord Azaram")
local monster = {}

monster.description = "a Lord Azaram"
monster.experience = 41950
monster.outfit = {
	lookType = 1223,
	lookHead = 0,
	lookBody = 38,
	lookLegs = 94,
	lookFeet = 82,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "venom"
monster.corpse = 36434
monster.speed = 250
monster.summonCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "Condensed Sins", chance = 50, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "Platinum Coin", minCount = 1, maxCount = 5, chance = 100000},--comum
	{id = "Crystal Coin", minCount = 0, maxCount = 2, chance = 50000},--comum
	{id = "Supreme Health Potion", minCount = 0, maxCount = 6, chance = 35000},--comum
	{id = "Ultimate Mana Potion", minCount = 0, maxCount = 20, chance = 32000},--comum
	{id = "Ultimate Spirit Potion", minCount = 0, maxCount = 20, chance = 32000},--comum
	{id = "Bullseye Potion", minCount = 0, maxCount = 10, chance = 12000},--comum
	{id = "Berserk Potion", minCount = 0, maxCount = 10, chance = 12000},--comum
	{id = "Piece of hell steel", minCount = 0, maxCount = 4, chance = 9000},--comum
	{id = "Red Gem", minCount = 0, maxCount = 2, chance = 12000},--comum
	{id = "Blue Gem", minCount = 0, maxCount = 2, chance = 12000},--comum
	{id = "Silver Token", minCount = 0, maxCount = 2, chance = 9500},--semiraro
	{id = "Ancient liche bone", chance = 5200},--semiraro
	{id = "Collar of blue plasma", chance = 5200},--semiraro
	{id = "Collar of red plasma", chance = 5200},--semiraro
	{id = "Collar of green plasma", chance = 5200},--semiraro
	{id = "Giant Sapphire", chance = 7000},--semiraro
	{id = "Haunted Blade", chance = 9000},--semiraro
	{id = "Huge Chunk of Crude Iron", chance = 4500},--semiraro
	{id = "Knight Armor", chance = 15000},--semiraro
	{id = "Violet Gem", minCount = 0, maxCount = 1, chance = 10000},--semiraro
	{id = "Yellow Gem", minCount = 0, maxCount = 1, chance = 10000},--semiraro
	{id = "Ring of green plasma", chance = 5000},--semiraro
	{id = "Ring of red plasma", chance = 5000},--semiraro
	{id = "Young Lich Worm", chance = 5800},--semiraro
	{id = "Bear Skin", chance = 1600},--raro
	{id = "Noble Cape", chance = 1500},--raro
	{id = "Terra helmet", chance = 720},--raro
	{id = "Final Judgement", chance = 410},--muitoraro
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -600},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -1000, length = 7, spread = 3, effect = CONST_ME_STONES, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -1000, length = 7, spread = 3, effect = CONST_ME_POISONAREA, target = false}
}

monster.defenses = {
	defense = 25,
	armor = 78,
	{name ="combat", interval = 2000, chance = 50, type = COMBAT_HEALING, minDamage = 150, maxDamage = 550, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
