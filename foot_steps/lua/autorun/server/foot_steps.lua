
local painSoundsCP = {
	"npc/metropolice/pain1.wav",
	"npc/metropolice/pain2.wav",
	"npc/metropolice/pain3.wav",
	"npc/metropolice/pain4.wav"
}
local painSoundsOTA = {
	"npc/combine_soldier/pain1.wav",
	"npc/combine_soldier/pain2.wav",
	"npc/combine_soldier/pain3.wav"
}

hook.Add("PlayerHurt", "PlayerHurtCP", function(client, attacker, health, damage)
		local painSound = hook.Run("GetPlayerPainSound", client)
		if painSound != nil then
		client:EmitSound(painSound)
		end
end)

hook.Add("GetPlayerPainSound", "GetPlayerPainSoundCP", function(client)
	if (client:Team() == TEAM_RCT or 
		client:Team() == TEAM_PPU3 or 
		client:Team() == TEAM_DESERTIR or
		client:Team() == TEAM_PPU2 or
	    client:Team() == TEAM_PPU1 or 
		client:Team() == TEAM_CPMED or
		client:Team() == TEAM_OFFICER or 
		client:Team() == TEAM_CPMEDOFC or 
		client:Team() == TEAM_GRIDOFC or              
		client:Team() == TEAM_GRID or 
		client:Team() == TEAM_MACE or 
		client:Team() == TEAM_SHIELD or 
		client:Team() == TEAM_C14MPFCAP or 
		client:Team() == TEAM_EPU or 
		client:Team() == TEAM_DVL or 
		client:Team() == TEAM_SEC) then
		
		local sounds = painSoundsCP
		return table.Random(sounds)
		
	elseif (
	    client:Team() == TEAM_OTASWORD or 
		client:Team() == TEAM_OTASWORDOWC or  
		client:Team() == TEAM_OTAGUARDOWS or 
		client:Team() == TEAM_NOVA or
		client:Team() == TEAM_OTAHEAVY or
		client:Team() == TEAM_ASSASSIN or
		client:Team() == TEAM_OTARANGER or
		client:Team() == TEAM_DESTROER or
		client:Team() == TEAM_OTAKING or
		client:Team() == TEAM_DISPATCH) then
		local sounds = painSoundsOTA
		return table.Random(sounds)
		
	end
end)
