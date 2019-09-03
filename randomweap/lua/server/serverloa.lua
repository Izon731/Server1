function plyspawn (ply)
   local colWap = 9
         local ran = math.random( 1, colWap )
         local masWap = {'weapon_357', 'weapon_pistol', 'weapon_crossbow', 'weapon_ar2', 'weapon_crowbar', 'weapon_rpg', 'weapon_shotgun', 'weapon_smg1', 'weapon_stunstick'}
                ply:Give (masWap[ran])
				
	timer.Simple(1, function() ply:GetWeapon('weapon_physgun') 
	
	
	
	
	
	end)
				
end
hook.Add('PlayerSpawn', 'plyspawned', plyspawn)