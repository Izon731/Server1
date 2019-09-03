--[[
addons/darkrpmod/lua/entities/base_cpoints/shared.lua
--]]
ENT.Base = "base_ai" 
ENT.Type = "ai"
ENT.PrintName = "NPC декорация (Повст)"
ENT.Instructions = "Base entity"
ENT.Author = "Thomas Iceman"
ENT.Category = "ALXRPbyThomas"
ENT.Spawnable = true

function ENT:SetAutomaticFrameAdvance( bUsingAnim )
	self.AutomaticFrameAdvance = bUsingAnim
end