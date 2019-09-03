hook.Add("PlayerFootstep", "PlayerFootstepCP", function(client, position, foot, soundName, volume)
	if (client:Team() == TEAM_RCT or 
        client:Team() == TEAM_PPU3 or 
        client:Team() == TEAM_PPU2 or
        client:Team() == TEAM_PPU1 or 
        client:Team() == TEAM_CPMED or
        client:Team() == TEAM_OFFICER or 
        client:Team() == TEAM_CPMEDOFC or 
        client:Team() == TEAM_GRIDOFC or
        client:Team() == TEAM_GRID or 
        client:Team() == TEAM_SHIELD or 
        client:Team() == TEAM_C14MPFCAP or 
        client:Team() == TEAM_EPU or 
        client:Team() == TEAM_DVL or 
		client:Team() == TEAM_DESERTIR or
		client:Team() == TEAM_DOCTOR or
        client:Team() == TEAM_SEC) then
		client:EmitSound("npc/metropolice/gear"..math.random(1, 6)..".wav", volume * 110)

		return true
	elseif (client:Team() == TEAM_PERECHIP or
	    client:Team() == TEAM_OTASWORD or 
		client:Team() == TEAM_OTASWORDOWC or  
		client:Team() == TEAM_OTAGUARDOWS or 
		client:Team() == TEAM_OTAHEAVY or
		client:Team() == TEAM_OTARANGER or
		client:Team() == TEAM_DESTROER or
		client:Team() == TEAM_OTAKING) then
		client:EmitSound("npc/combine_soldier/gear"..math.random(1, 6)..".wav", volume * 110)

		return true
	end
end)