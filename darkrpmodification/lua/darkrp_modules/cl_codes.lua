--[[
addons/darkrpmod/lua/darkrp_modules/interface/cl_codes.lua
--]]
local function DrawScrollingText(text,	xxx, y, texwide, color)

	surface.SetFont("pd2_assault_text")
	local w, h = surface.GetTextSize(text)
	local x = math.fmod(CurTime() * 125, w) * -1
	color = color or Color(255, 255, 255, 255)
	while (x < texwide) do
		surface.SetTextColor(color)
		surface.SetTextPos(x + xxx, y)
		surface.DrawText(text)
		x = x + w
	end
end

local codeman = {
	["KK_Started"] = {text = "Активный Красный Код. Пройдите домой", icon = "icon16/user.png", color = col.r},
	["YK_Started"] = {text = "Активный Желтый Код. Пройдите домой", icon = "icon16/user.png", color = Color(255,255,0)},
	["DarkRP_LockDown"] = {text = "Активный Комендантский час. Пройдите домой", icon = "icon16/user.png", color = Color(20,20,255)}
}
local moar_w = 230
local size = 230
hook.Add("HUDPaint","Codes.Hud",function()
	local ply = LocalPlayer()
	local active = GetGlobalBool("KK_Started") and "KK_Started" or GetGlobalBool("YK_Started") and "YK_Started" or GetGlobalBool("DarkRP_LockDown") and "DarkRP_LockDown"
	if ply:Alive() and active then
		local height = draw.GetFontHeight("pd2_assault_text")
		local y = height
		local curtime = CurTime()
		local w, h = size*1.5, ScrH()
				moar_w = math.Clamp(moar_w - 7.5, 0, 230)

				surface.SetDrawColor(Color(255, 0, 0, 10 + (math.abs(math.sin(CurTime() * 2)) * 45)))

				surface.DrawRect(w - 310 + moar_w, y + 22, 265 - moar_w, 46)

				surface.SetDrawColor(codeman[active].color)
				surface.DrawRect(w - 310 + moar_w, y + 65, 15, 3)
				surface.DrawRect(w - 310 + moar_w, y + 55, 3, 12)

				surface.DrawRect(w - 310 + moar_w, y + 22, 15, 3)
				surface.DrawRect(w - 310 + moar_w, y + 24, 3, 12)

				surface.DrawRect(w - 60, y + 65, 15, 3)
				surface.DrawRect(w - 48, y + 55, 3, 12)

				surface.DrawRect(w - 60, y + 22, 15, 3)
				surface.DrawRect(w - 48, y + 24, 3, 12)

				surface.DrawRect(12, y + 22, 20, 20)

				surface.SetDrawColor(0, 0, 0, 255)
				surface.SetMaterial(Material(codeman[active].icon))
				surface.DrawTexturedRect(14, y + 24, 16, 16)

				if moar_w <= 0 then
					render.SetScissorRect(w - 310, y + 22, w - 45, y + 68, true)
					DrawScrollingText("///     "..codeman[active].text.."     ", w - 300, y + 30, 300, codeman[active].color)
					render.SetScissorRect(0, 0, 0, 0, false)
				end

				y = y + height + 25
	end
end)

