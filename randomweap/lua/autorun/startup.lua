
if SERVER then

include("server/serverloa.lua")

AddCSLuaFile("client/clientloa.lua")

end

if CLIENT then

include("client/clientloa.lua")



end