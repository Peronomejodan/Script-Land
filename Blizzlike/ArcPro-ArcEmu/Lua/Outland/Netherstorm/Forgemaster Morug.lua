--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: BlackHer0; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Morug_OnEnterCombat(Unit, Event)
    Unit:RegisterEvent("Morug_Blade", 1500, 0)
    Unit:RegisterEvent("Morug_Spray", 1000, 0)
end

function Morug_Blade(Unit, Event)
    Unit:FullCastSpellOnTarget(36228, Unit:ClosestPlayer())
end

function Morug_Spray(Unit, Event)
    Unit:FullCastSpellOnTarget(34261, Unit:ClosestPlayer())
end

function Morug_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Morug_OnDied(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20800, 1, "Morug_OnEnterCombat")
RegisterUnitEvent(20800, 2, "Morug_OnLeaveCombat")
RegisterUnitEvent(20800, 4, "Morug_OnDied")