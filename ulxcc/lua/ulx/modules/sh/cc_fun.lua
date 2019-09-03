function ulx.model( calling_ply, target_plys, model )
	
	for k,v in pairs( target_plys ) do 
	
		if ( not v:Alive() ) then
		
			ULib.tsayError( calling_ply, v:Nick() .. " is dead", true )
		
		else
		
			v:SetModel( model )

		end
		
	end
	
	ulx.fancyLogAdmin( calling_ply, "#A set the model for #T to #s", target_plys, model )
	
end
local model = ulx.command( "Fun", "ulx model", ulx.model, "!model" )
model:addParam{ type=ULib.cmds.PlayersArg }
model:addParam{ type=ULib.cmds.StringArg, hint="model" }
model:defaultAccess( ULib.ACCESS_ADMIN )
model:help( "Set a player's model." )