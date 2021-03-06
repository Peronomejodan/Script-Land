--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function DrakkariShaman_OnCombat(Unit, Event)
	Unit:RegisterEvent("DrakkariShaman_LightningBolt", 7000, 0)
	Unit:RegisterEvent("DrakkariShaman_MasteredElements", 10000, 0)
end

function DrakkariShaman_LightningBolt(Unit, Event) 
	Unit:FullCastSpellOnTarget(9532, Unit:GetMainTank()) 
end

function DrakkariShaman_MasteredElements(Unit, Event) 
	Unit:CastSpell(52290) 
end

function DrakkariShaman_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function DrakkariShaman_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(26447, 1, "DrakkariShaman_OnCombat")
RegisterUnitEvent(26447, 2, "DrakkariShaman_OnLeaveCombat")
RegisterUnitEvent(26447, 4, "DrakkariShaman_OnDied")