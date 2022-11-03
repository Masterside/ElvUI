local E, L, V, P, G = unpack(ElvUI)
local DB = E:GetModule('DataBars')

local _G = _G
local format = format
local IsAddOnLoaded = IsAddOnLoaded
local IsParty, IsRaid, HasPet = IsInGroup(), IsInRaid(), UnitExists('pet')
local IsDetailsEnabled = IsAddOnLoaded('Details')

local function formatValue(number)
	if (number >= 1000000.0) then 
	   return string.format('%.1fM', number / 1000000.0)
	elseif (number >= 1000.0) then
		return string.format('%.1fK', number / 1000.0)
	else
		return string.format('%.0f', number)
	end
 end

function DB:DamageBar_Update(event, unit)
	local bar = DB.StatusBars.DamageBar
	DB:SetVisibility(bar)

	if not DB.db.damageBar.enable then return end

	local displayString, textFormat = '', DB.db.damageBar.textFormat

	local combat = Details:GetCurrentCombat()
	local playerActor = combat:GetActor(DETAILS_ATTRIBUTE_DAMAGE, Details.playername)
	local damageContainer = combat:GetContainer(DETAILS_ATTRIBUTE_DAMAGE)
	damageContainer:SortByKey('total')
	local maxDamage = 0
	local ranking = 0
	for i, actor in damageContainer:ListActors() do
		if (not actor:IsNeutralOrEnemy()) then
			if maxDamage == 0 then
				maxDamage = actor.total
			end
			ranking = ranking + 1
			if actor:name() == Details.playername then
				bar:SetStatusBarColor(actor:GetBarColor())
				break
			end
		end
	end

	if playerActor then
		local dps = playerActor.total / combat:GetCombatTime()
		-- print(playerActor.total / playerActor:Tempo())
		-- print(playerActor.total / combat:GetCombatTime())
		bar:SetMinMaxValues(0, maxDamage)
		bar:SetValue(playerActor.total)
		bar.text:SetFormattedText('%u. %s   Total: %s   DPS: %s', ranking, Details.playername, formatValue(playerActor.total), formatValue(dps))
	end
end

function DB:DamageBar_OnEnter()
	if self.db.mouseover then
		E:UIFrameFadeIn(self, .4, self:GetAlpha(), 1)
	end

	if _G.GameTooltip:IsForbidden() then return end

	_G.GameTooltip:ClearLines()
	_G.GameTooltip:SetOwner(self, 'ANCHOR_CURSOR')

	local combat = Details:GetCurrentCombat()
	local damageContainer = combat:GetContainer(DETAILS_ATTRIBUTE_DAMAGE)
	damageContainer:SortByKey('total')
	ranking = 0
	for i, actor in damageContainer:ListActors() do
		if (not actor:IsNeutralOrEnemy()) then
			ranking = ranking + 1
			local dps = actor.total / combat:GetCombatTime()
			local r, g, b = actor:GetBarColor()
			GameTooltip:AddDoubleLine(string.format('%u. %s', ranking, actor:name()), string.format('Total: %s   DPS: %s', formatValue(actor.total), formatValue(dps)), r, g, b, r, g, b);
		end
	end

	_G.GameTooltip:Show()
end

function DB:DamageBar_OnClick()
	-- TogglePVPUI()
end

function DB:DamageBar_Toggle()
	local bar = DB.StatusBars.DamageBar
	bar.db = DB.db.damageBar

	if bar.db.enable then
		E:EnableMover(bar.holder.mover.name)

		DB:RegisterEvent('PLAYER_REGEN_ENABLED', 'DamageBar_Update')
		DB:RegisterEvent('PLAYER_REGEN_DISABLED', 'DamageBar_Update')
		DB:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED', 'DamageBar_Update')

		DB:DamageBar_Update()
	else
		E:DisableMover(bar.holder.mover.name)

		DB:UnregisterEvent('PLAYER_REGEN_ENABLED')
		DB:UnregisterEvent('PLAYER_REGEN_DISABLED')
		DB:UnregisterEvent('COMBAT_LOG_EVENT_UNFILTERED')
	end
end

function DB:DamageBar()
	local DamageBar = DB:CreateBar('ElvUI_DamageBar', 'DamageBar', DB.DamageBar_Update, DB.DamageBar_OnEnter, DB.DamageBar_OnClick, {'TOPRIGHT', E.UIParent, 'TOPRIGHT', -3, -255})
	DB:CreateBarBubbles(DamageBar)

	DamageBar.ShouldHide = function()
		return ((IsDetailsEnabled) and ((InCombatLockdown()) or (IsParty or IsRaid or HasPet))) == false
	end

	E:CreateMover(DamageBar.holder, 'DamageBarMover', L["Damage Bar"], nil, nil, nil, nil, nil, 'databars,damagebar')

	DB:DamageBar_Toggle()
end
