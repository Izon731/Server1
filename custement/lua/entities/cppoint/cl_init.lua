include("shared.lua")


local font1 = "Roboto"
surface.CreateFont( "LolKekFont", {
	font = "Roboto", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	size = 50,
	weight = 500,
	extended = true
} )


	



function ENT:Draw()
	self:DrawModel()
    local Pos = self:GetPos()
	local Ang = self:GetAngles()

	Ang:RotateAroundAxis(Ang:Forward(), 90)
	Ang:RotateAroundAxis(Ang:Right(), -90)

	if LocalPlayer():GetPos():Distance(self:GetPos()) < 200 then
	cam.Start3D2D(Pos + Ang:Up() * 5, Ang, 0.11)
		draw.WordBox(5, -150, -500, "Активация Кодов", "LolKekFont", Color(0, 95, 95, 255), Color(255,255,255,255))
		
	cam.End3D2D()
	end
end
