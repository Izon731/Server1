--[[---------------------------------------------------------------------------
This is an example of a custom entity.
---------------------------------------------------------------------------]]
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()

    self:SetModel("models/props_combine/combine_interface002.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)
    local phys = self:GetPhysicsObject()
    phys:Wake()

end

function ENT:Use(ply)

	hook.Call( "CPTerminalOpen" )
	
end

function myMenu()

	local menu = vgui.Create("MPanel")
	menu:SetSize(500,100)
	menu:Center()
	menu:SetVisible(true)
	menu:MakePopup()
	
	local menu_close = vgui.Create("MButton", menu)
	menu_close:SetPos(475,0)
	menu_close:SetText("X")
	menu_close:OnClick(function() 
		menu:Remove()
	end)
	

end
hook.Add("CPTerminalOpen",myMenu)

