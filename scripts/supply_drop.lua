function init()
	my_ship = CpuShip():setCommsScript("comms_supply_drop.lua"):setFactionId(faction_id):setPosition(position_x, position_y):setTemplate("Equipment Freighter 2"):setCallSign("SUPPLY SHIP"):setScanned(true):setWarpDrive(true):setWarpSpeed(1000.00):orderFlyTowardsBlind(target_x, target_y)
	state = 0
end

function update(delta)
	if not my_ship:isValid() then
		destroyScript()
		return
	end
	local x, y = my_ship:getPosition()
	if state == 0 then
		if math.abs(x - target_x) < 300 and math.abs(y - target_y) < 300 then
			SupplyDrop():setFactionId(faction_id):setPosition(target_x + random(-300, 300), target_y + random(-300, 300)):setEnergy(1500):setWeaponStorage("Nuke", 1):setWeaponStorage("Homing", 12):setWeaponStorage("Mine", 2):setWeaponStorage("EMP", 8):setWeaponStorage("HVLI", 20)
			my_ship:orderFlyTowardsBlind(position_x, position_y)
			state = 1
		end
	elseif state == 1 then
		if math.abs(x - position_x) < 1500 and math.abs(y - position_y) < 1500 then
			my_ship:destroy()
			destroyScript()
			return
		end
	end
end
