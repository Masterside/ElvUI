local LSM = LibStub("LibSharedMedia-3.0")

LSM:Register("background","ElvUI Blank", [[Interface\BUTTONS\WHITE8X8]])
LSM:Register("border", "ElvUI GlowBorder", [[Interface\AddOns\ElvUI\media\textures\glowTex.tga]])
LSM:Register("font", "ElvUI Alt-Font", [[Interface\AddOns\ElvUI\media\fonts\Continuum_Medium.ttf]])
LSM:Register("font","ElvUI Alt-Combat", [[Interface\AddOns\ElvUI\media\fonts\DieDieDie.ttf]])
LSM:Register("font","ElvUI Combat", [[Interface\AddOns\ElvUI\media\fonts\Action_Man.ttf]])
LSM:Register("font","ElvUI Font", [[Interface\AddOns\ElvUI\media\fonts\PT_Sans_Narrow.ttf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
LSM:Register("sound", "Awww Crap", [[Interface\AddOns\ElvUI\media\sounds\awwcrap.mp3]])
LSM:Register("sound", "BBQ Ass", [[Interface\AddOns\ElvUI\media\sounds\bbqass.mp3]])
LSM:Register("sound", "Big Yankie Devil", [[Interface\AddOns\ElvUI\media\sounds\yankiebangbang.mp3]])
LSM:Register("sound", "Dumb Shit", [[Interface\AddOns\ElvUI\media\sounds\dumbshit.mp3]])
LSM:Register("sound", "Mama Weekends", [[Interface\AddOns\ElvUI\media\sounds\mamaweekends.mp3]])
LSM:Register("sound", "Runaway Fast", [[Interface\AddOns\ElvUI\media\sounds\runfast.mp3]])
LSM:Register("sound", "Stop Running", [[Interface\AddOns\ElvUI\media\sounds\stoprunningslimball.mp3]])
LSM:Register("sound","Warning", [[Interface\AddOns\ElvUI\media\sounds\warning.mp3]])
LSM:Register("sound","Whisper Alert", [[Interface\AddOns\ElvUI\media\sounds\whisper.mp3]])
LSM:Register("statusbar","ElvUI Gloss", [[Interface\AddOns\ElvUI\media\textures\normTex.tga]])
LSM:Register("statusbar","ElvUI Norm", [[Interface\AddOns\ElvUI\media\textures\normTex2.tga]])
LSM:Register("statusbar","Minimalist", [[Interface\AddOns\ElvUI\media\textures\Minimalist.tga]])

if GetLocale() == 'ruRU' then
	LSM:Register("font", "ElvUI Pixel", [[Interface\AddOns\ElvUI\media\fonts\Visitor_Rus.ttf]],LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
else
	LSM:Register("font", "ElvUI Pixel", [[Interface\AddOns\ElvUI\media\fonts\Homespun.ttf]])
end
