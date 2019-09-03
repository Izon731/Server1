--[[
addons/hl2rp_weapons_base/lua/weapons/swb_base/sh_ammotypes.lua
--]]

-----------------------------------------------------
function SWB_AddAmmoType(name)
	game.AddAmmoType({name = name,
	dmgtype = DMG_BULLET})
	
	if CLIENT then
		language.Add(name .. "_ammo", name .. " Ammo")
	end
end

SWB_AddAmmoType("Rifle")
SWB_AddAmmoType("Sniper Rifle")

