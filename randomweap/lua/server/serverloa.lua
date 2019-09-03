function plyspawn (ply)

 local colWap = 36
        local ran = math.random( 1, colWap )
        local masWap = {
		'weapon_pistol',
		'weapon_pistol', 
		'weapon_q4_hyperblaster_bounce', 
		'weapon_q4_grenadelauncher', 
		'weapon_q4_rocketlauncher', 
		'weapon_q4_railgun',
		'weapon_q4_machinegun_mag',
		'weapon_q4_darkmatter',
		'weapon_doom3_rocketlauncher',
		'weapon_crowbar',
		'weapon_doom3_chaingun',
		'weapon_doom3_machinegun',
		'weapon_doom3_doublebarrel',
		'weapon_doom3_plasmagun',
		'weapon_doom3_chainsaw',
		'tf_weapon_flamethrower',
		'weapon_frag',
		'tf_weapon_club',
		'tf_weapon_syringegun_medic',
		'tf_weapon_sniperrifle',
		'tf_weapon_minigun',
		'weapon_q4_shotgun_clip',
		'weapon_q4_gauntlet',
		'tf_weapon_bat',
		'tf_weapon_smg',
		'tf_weapon_rocketlauncher',
		'tf_weapon_pistol_scout',
		'weapon_q4_blaster',
		'weapon_q4_napalmlauncher',
		'weapon_doom3_pistol',
		'weapon_crossbow',
		'weapon_ar2',
		'weapon_smg1',
		'tf_weapon_revolver',
		'tf_weapon_bonesaw',
		'weapon_q4_lightning'

		}
        local ammor = {
		'AR2', 
		'AR2AltFire', 
		'Pistol', 
		'SMG1', 
		'357',
		'XBowBolt',
		'Buckshot',
		'RPG_Round',
		'AlyxGun',
		'SniperRound',
		'9mmRound',
		'StriderMinigun',
		'AirboatGun',
		'item_ammo_crossbow',
		'item_healthkit',
		'item_healthvial',
		'item_ammo_pistol_large',
		'item_rpg_round',
		'item_box_buckshot',
		'item_ammo_smg1_large',
		'item_ammo_smg1_grenade',
		'item_battery'
		}

		timer.Simple( 0.1, function () for i=1, 22 do
			ply:GiveAmmo(200,ammor[i],true)	
		end  end ) 
		
		 timer.Simple( 0.1, function () ply:Give (masWap[ran]) end ) 
			timer.Simple( 0.1, function () ply:StripWeapon ('weapon_physgun') ply:StripWeapon ('gmod_tool') ply:StripWeapon ('gmod_camera') end )	
			
		
		
		
	
			
			
			
				
end
hook.Add('PlayerSpawn', 'plyspawned', plyspawn)