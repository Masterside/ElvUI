local E, L, V, P, G = unpack(select(2, ...)); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local mod = E:GetModule('DataBars')
local LSM = E.Libs.LSM

local _G = _G
local format = format

local UnitHonor = UnitHonor
local UnitHonorLevel = UnitHonorLevel
local UnitHonorMax = UnitHonorMax
local UnitIsPVP = UnitIsPVP
local CreateFrame = CreateFrame
local InCombatLockdown = InCombatLockdown
local TogglePVPUI = TogglePVPUI
local MAX_PLAYER_LEVEL = MAX_PLAYER_LEVEL
local HONOR = HONOR

function mod:UpdateHonor(event, unit)
	if not mod.db.honor.enable then return end
	if event == "PLAYER_FLAGS_CHANGED" and unit ~= "player" then return end

	local bar = self.honorBar

	if (self.db.honor.hideInCombat and (event == "PLAYER_REGEN_DISABLED" or InCombatLockdown())) or
		(self.db.honor.hideOutsidePvP and not UnitIsPVP("player")) or (self.db.honor.hideBelowMaxLevel and E.mylevel < MAX_PLAYER_LEVEL) then
		bar:Hide()
	else
		bar:Show()

		if self.db.honor.hideInVehicle then
			E:RegisterObjectForVehicleLock(bar, E.UIParent)
		else
			E:UnregisterObjectForVehicleLock(bar)
		end

		local cur = UnitHonor("player")
		local max = UnitHonorMax("player")

		--Guard against division by zero, which appears to be an issue when zoning in/out of dungeons
		if max == 0 then max = 1 end

		bar.statusBar:SetMinMaxValues(0, max)
		bar.statusBar:SetValue(cur)

		local text = ''
		local textFormat = self.db.honor.textFormat

		if textFormat == 'PERCENT' then
			text = format('%d%%', cur / max * 100)
		elseif textFormat == 'CURMAX' then
			text = format('%s - %s', E:ShortValue(cur), E:ShortValue(max))
		elseif textFormat == 'CURPERC' then
			text = format('%s - %d%%', E:ShortValue(cur), cur / max * 100)
		elseif textFormat == 'CUR' then
			text = format('%s', E:ShortValue(cur))
		elseif textFormat == 'REM' then
			text = format('%s', E:ShortValue(max - cur))
		elseif textFormat == 'CURREM' then
			text = format('%s - %s', E:ShortValue(cur), E:ShortValue(max - cur))
		elseif textFormat == 'CURPERCREM' then
			text = format('%s - %d%% (%s)', E:ShortValue(cur), cur / max * 100, E:ShortValue(max - cur))
		end

		bar.text:SetText(text)
	end
end

function mod:HonorBar_OnEnter()
	local GameTooltip = _G.GameTooltip
	if mod.db.honor.mouseover then
		E:UIFrameFadeIn(self, 0.4, self:GetAlpha(), 1)
	end

	GameTooltip:ClearLines()
	GameTooltip:SetOwner(self, 'ANCHOR_CURSOR', 0, -4)

	local cur = UnitHonor("player")
	local max = UnitHonorMax("player")
	local level = UnitHonorLevel("player")

	GameTooltip:AddLine(HONOR)

	GameTooltip:AddDoubleLine(L["Current Level:"], level, 1, 1, 1)
	GameTooltip:AddLine(' ')

	GameTooltip:AddDoubleLine(L["Honor XP:"], format(' %d / %d (%d%%)', cur, max, cur/max * 100), 1, 1, 1)
	GameTooltip:AddDoubleLine(L["Honor Remaining:"], format(' %d (%d%% - %d '..L["Bars"]..')', max - cur, (max - cur) / max * 100, 20 * (max - cur) / max), 1, 1, 1)

	GameTooltip:Show()
end

function mod:HonorBar_OnClick()
	TogglePVPUI()
end

function mod:UpdateHonorDimensions()
	self.honorBar:Width(self.db.honor.width)
	self.honorBar:Height(self.db.honor.height)
	self.honorBar.statusBar:SetOrientation(self.db.honor.orientation)
	self.honorBar.statusBar:SetReverseFill(self.db.honor.reverseFill)
	self.honorBar.text:FontTemplate(LSM:Fetch("font", self.db.honor.font), self.db.honor.textSize, self.db.honor.fontOutline)

	if self.db.honor.orientation == "HORIZONTAL" then
		self.honorBar.statusBar:SetRotatesTexture(false)
	else
		self.honorBar.statusBar:SetRotatesTexture(true)
	end

	if self.db.honor.mouseover then
		self.honorBar:SetAlpha(0)
	else
		self.honorBar:SetAlpha(1)
	end
end

function mod:EnableDisable_HonorBar()
	if self.db.honor.enable then
		self:RegisterEvent("HONOR_XP_UPDATE", "UpdateHonor")
		self:UpdateHonor()
		E:EnableMover(self.honorBar.mover:GetName())
	else
		self:UnregisterEvent("HONOR_XP_UPDATE")
		self.honorBar:Hide()
		E:DisableMover(self.honorBar.mover:GetName())
	end
end

function mod:LoadHonorBar()
	self.honorBar = self:CreateBar('ElvUI_HonorBar', self.HonorBar_OnEnter, self.HonorBar_OnClick, 'RIGHT', _G.RightChatPanel, 'LEFT', E.Border - E.Spacing*3, 0)
	self.honorBar.statusBar:SetStatusBarColor(240/255, 114/255, 65/255)
	self.honorBar.statusBar:SetMinMaxValues(0, 325)

	self.honorBar.eventFrame = CreateFrame("Frame")
	self.honorBar.eventFrame:Hide()
	self.honorBar.eventFrame:RegisterEvent("PLAYER_REGEN_DISABLED")
	self.honorBar.eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
	self.honorBar.eventFrame:RegisterEvent("PLAYER_FLAGS_CHANGED")
	self.honorBar.eventFrame:SetScript("OnEvent", function(self, event, unit) mod:UpdateHonor(event, unit) end)

	self:UpdateHonorDimensions()
	E:CreateMover(self.honorBar, "HonorBarMover", L["Honor Bar"], nil, nil, nil, nil, nil, 'databars,honor')

	self:EnableDisable_HonorBar()
end
