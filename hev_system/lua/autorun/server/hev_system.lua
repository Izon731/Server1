
--[[local hevgordon = {

}


hook.Add("PlayerHurt", "PlayerHurtCP", function(client, attacker, health, damage)
		local painSound = hook.Run("GetPlayerPainSound", client)
		if painSound != nil then
		client:EmitSound(painSound)
		end
end)

hook.Add("GetPlayerPainSound", "", function(client)
	if (client:Team() == TEAM_PMAFIA) then
		local ply = LocalPlayer()
		local sounds = hevgordon
		return table.Random(sounds)
				
	end
end)

]]--
