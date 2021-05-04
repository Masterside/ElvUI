-- Traditional Chinese localization file for zhTW.
local E = unpack(select(2, ...)); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local L = E.Libs.ACL:NewLocale("ElvUI", "zhTW")

L["BoP"] = true
L["BoE"] = true
L["BoU"] = true
L[" |cff00ff00bound to |r"] = " |cff00ff00綁定到 |r"
L["(Hold Shift) Memory Usage"] = "(按住 Shift) 記憶體使用量"
L["(Modifer Click) Collect Garbage"] = "(按住修飾鍵) 垃圾收集"
L["%s frame has a conflicting anchor point. Forcing the Buffs to be attached to the main unitframe."] = "%s 框架存在一個衝突錨點，將強制將Buff附加到主單位框架之上。"
L["%s is attempting to share his filters with you. Would you like to accept the request?"] = "%s 試圖與你分享過濾器設定. 你是否接受?"
L["%s is attempting to share the profile %s with you. Would you like to accept the request?"] = "%s 試圖與你分享設定檔 %s. 你是否接受?"
L["%s: %s tried to call the protected function '%s'."] = "%s: %s 嘗試調用保護函數'%s'."
L["|cFFE30000Lua error recieved. You can view the error message when you exit combat."] = "|cFFE30000接收到了Lua錯誤, 你可以在脫離戰鬥後檢查.|r"
L["|cffFFFFFFLeft Click:|r Change Talent Specialization"] = "|cffFFFFFF左鍵:|r 變更目前職業專精"
L["|cffFFFFFFRight Click:|r Change Loot Specialization"] = "|cffFFFFFF右鍵:|r 變更目前拾取專精"
L["|cffFFFFFFShift + Left Click:|r Show Talent Specialization UI"] = "|cffFFFFFFShift + 左鍵:|r 顯示天賦專精介面"
L["A raid marker feature is available by pressing Escape -> Keybinds. Scroll to the bottom -> ElvUI -> Raid Marker."] = true
L["A setting you have changed will change an option for this character only. This setting that you have changed will be uneffected by changing user profiles. Changing this setting requires that you reload your User Interface."] = "你所做的改動只會影響到使用這個插件的本角色, 你需要重新加載介面才能使改動生效."
L["ABOVE_THREAT_FORMAT"] = "%s: %.0f%% [%.0f%% 以上 |cff%02x%02x%02x%s|r]"
L["Accepting this will reset the UnitFrame settings for %s. Are you sure?"] = "接受將會重置 %s 的單位框架設定. 你確定嗎?"
L["Accepting this will reset your Filter Priority lists for all auras on NamePlates. Are you sure?"] = "接受將會重置所有姓名板(血條)的過濾器優先度列表. 你確定嗎?"
L["Accepting this will reset your Filter Priority lists for all auras on UnitFrames. Are you sure?"] = "接受將會重置所有單位框架的過濾器優先度列表. 你確定嗎?"
L["Additive Blend"] = "覆蓋混合"
L["Adjust the UI Scale to fit your screen."] = true
L["AFK"] = "暫離"
L["AFK Mode"] = "離開模式"
L["All keybindings cleared for |cff00ff00%s|r."] = "取消|cff00ff00%s|r 所有綁定的快捷鍵."
L["Alliance: "] = "聯盟: "
L["Alpha Key"] = "單位元 Alpha 通道混合"
L["Already Running.. Bailing Out!"] = "正在運行"
L["Alternative Power"] = "特殊能量條框架"
L["AP:"] = "神兵之力:"
L["AP"] = "攻擊強度"
L["Archeology Progress Bar"] = "考古進度條"
L["Are you sure you want to apply this font to all ElvUI elements?"] = "你確定要將此字型應用到所有 ElvUI 部件嗎?"
L["Are you sure you want to disband the group?"] = "確定要解散隊伍?"
L["Are you sure you want to reset all the settings on this profile?"] = "確定需要重置這個設定檔中的所有設定?"
L["Are you sure you want to reset every mover back to it's default position?"] = "確定需要重置所有框架至預設位置?"
L["Arena Frames"] = "競技場框架"
L["Arena"] = "競技場"
L["Aura Bars & Icons"] = "光環條及圖標"
L["Auras Set"] = "光環設定"
L["Auras"] = "光環"
L["Auto Scale"] = "自動縮放"
L["AVD: "] = "免傷: "
L["Avoidance Breakdown"] = "免傷統計"
L["Azerite Bar"] = "神兵條"
L["Bag Mover (Grow Down)"] = "背包錨點 (向下增長)"
L["Bag Mover (Grow Up)"] = "背包錨點 (向上增長)"
L["Bag Mover"] = "背包錨點"
L["Bags"] = "背包"
L["Bandwidth"] = "頻寬"
L["Bank Mover (Grow Down)"] = "銀行錨點 (向下增長)"
L["Bank Mover (Grow Up)"] = "銀行錨點 (向上增長)"
L["Bank"] = "銀行"
L["Bar "] = "快捷列 "
L["Bars"] = "條"
L["Battleground datatexts temporarily hidden, to show type /bgstats"] = true
L["Battleground datatexts will now show again if you are inside a battleground."] = "當你處於戰場時戰場資訊將再次顯示."
L["BfA Missions"] = "決戰艾澤拉斯任務"
L["Binding"] = "綁定"
L["Binds Discarded"] = "取消綁定"
L["Binds Saved"] = "儲存綁定"
L["Blend Mode"] = "混合模式"
L["Blend"] = "常規混合"
L["Blizzard Widgets"] = true
L["BNet Frame"] = "戰網提示資訊"
L["Boss Banner"] = true
L["Boss Button"] = "特殊技能鍵"
L["Boss Frames"] = "首領框架"
L["Building(s) Report:"] = "建築報告"
L["Calendar"] = "行事曆"
L["Calling Quest(s) available."] = true
L["Can't buy anymore slots!"] = "無法再購買更多銀行欄位!"
L["Can't Roll"] = "無法需求此裝備"
L["Caster"] = "法系輸出"
L["Character: "] = "角色: "
L["Chat Set"] = "對話设置"
L["Chat"] = "對話"
L["Chest"] = "胸部"
L["Choose a theme layout you wish to use for your initial setup."] = "為你的個人設定選擇一個你喜歡的皮膚主題."
L["Class Totems"] = "職業圖騰"
L["Classbar"] = "職業特有條"
L["Classic"] = "經典"
L["Clean Boss Button"] = "去除Boss戰鬥按鈕背景"
L["Combat"] = "戰鬥"
L["Combat/Arena Time"] = "戰鬥時間"
L["Config Mode:"] = "設定模式:"
L["Confused.. Try Again!"] = "請再試一次！"
L["Continue"] = "下一步"
L["Coords"] = "坐標"
L["copperabbrev"] = "|cffeda55f銅|r"
L["Count"] = "計數"
L["Current Difficulties:"] = "當前難度:"
L["Current Level:"] = "目前等級"
L["CVars Set"] = "參數設定"
L["CVars"] = "參數"
L["Dark"] = "黑暗"
L["Data From: %s"] = "數據來源: %s"
L["Dead"] = "死亡"
L["Deficit:"] = "赤字:"
L["Delete gray items?"] = "刪除灰色物品?"
L["Deposit Reagents"] = "存入材料"
L["Detected that your ElvUI OptionsUI addon is out of date. This may be a result of your Tukui Client being out of date. Please visit our download page and update your Tukui Client, then reinstall ElvUI. Not having your ElvUI OptionsUI addon up to date will result in missing options."] = "偵測到你的 ElvUI 設定插件已過期. 這可能是因為你的 Tukui 客戶端已過期. 請拜訪我們的下載頁面並更新 Tukui 客戶端然後再重新安裝 ElvUI. ElvUI 設定插件過期會造成某些選項遺失"
L["Disable Warning"] = "停用警告"
L["Disable"] = "停用"
L["Disband Group"] = "解散隊伍"
L["Discard"] = "取消"
L["Discord"] = true
L["DND"] = "忙碌"
L["Do you enjoy the new ElvUI?"] = "你享受新版的 ElvUI 嗎?"
L["Do you swear not to post in technical support about something not working without first disabling the addon/module combination first?"] = "你發誓在你沒停用其他插件或是模組前不會到技術支援發文詢問某些功能失效嗎?"
L["Don't forget to backup your WTF folder, all your profiles and settings are in there."] = "別忘記備份你的 WTF 資料夾, 這裡存有你的全部設定及配置文件."
L["Download"] = "下載"
L["DPS"] = "傷害輸出"
L["Earned:"] = "賺取:"
L["ElvUI has a dual spec feature which allows you to load different profiles based on your current spec on the fly. You can enable it in the profiles tab."] = "ElvUI 支持針對不同專精加載不同配置檔的功能, 你可以在[設定檔]中啟用."
L["ElvUI Installation"] = "安裝 ElvUI"
L["ElvUI is five or more revisions out of date. You can download the newest version from www.tukui.org. Get premium membership and have ElvUI automatically updated with the Tukui Client!"] = "ElvUI 已過期超過5個版本. 你可以在 www.tukui.org 下載到最新的版本. 購買會員可以使用 Tukui 客戶端自動下載最新的 ElvUI."
L["ElvUI is out of date. You can download the newest version from www.tukui.org. Get premium membership and have ElvUI automatically updated with the Tukui Client!"] = "ElvUI 已過期. 你可以在 www.tukui.org 下載到最新的版本. 購買會員可以使用 Tukui 客戶端自動下載最新的 ElvUI."
L["ElvUI needs to perform database optimizations please be patient."] = "ElvUI 需要進行資料庫優化, 請稍待."
L["ElvUI Plugin Installation"] = "ElvUI 插件安裝"
L["ElvUI Status"] = "ElvUI 訊息"
L["Empty Slot"] = "空格"
L["Enable"] = "啟用"
L["Error resetting UnitFrame."] = "重置單位框架錯誤"
L["Event Log"] = true
L["Experience Bar"] = "經驗條"
L["Experience"] = "經驗/聲望條"
L["Feet"] = "腳部"
L["Filter download complete from %s, would you like to apply changes now?"] = "過濾器設定下載於 %s, 你是否現在變更?"
L["Finished"] = "設定完畢"
L["Fishy Loot"] = "貪婪"
L["Focus Castbar"] = "焦點目標施法條"
L["Focus Frame"] = "焦點目標框架"
L["FocusTarget Frame"] = "焦點目標的目標框架"
L["Friends List"] = "好友列表"
L["From time to time you should compare your ElvUI version against the most recent version on our website or the Tukui client."] = true
L["G"] = "公會"
L["Garrison"] = "要塞"
L["Ghost"] = "鬼魂"
L["GM Ticket Frame"] = "GM 對話框"
L["Gold"] = "金錢"
L["goldabbrev"] = "|cffffd700金|r"
L["Grid Size:"] = "網格尺寸:"
L["Hands"] = "手部"
L["Head"] = "頭部"
L["Healer"] = "補師"
L["Hold Control + Right Click:"] = "按住 Ctrl 並按滑鼠右鍵："
L["Hold Shift + Drag:"] = "按住 Shift 並拖曳："
L["Hold Shift + Right Click:"] = "按住 Shift + 滑鼠右鍵"
L["Home Latency:"] = "本機延遲:"
L["Home Protocol:"] = "本機協議:"
L["Honor Bar"] = "榮譽條"
L["Honor Remaining:"] = "剩餘:"
L["Honor XP:"] = "榮譽:"
L["Horde: "] = "部落: "
L["BINDINGS_HELP"] = ("Hover your mouse over any *action|r, *micro|r, *macro|r, or *spellbook|r button to bind it. This also works for items in your *bag|r. Press the ^ESC|r key to ^clear|r the current bindings."):gsub('*', E.InfoColor):gsub('%^', E.InfoColor2)
L["HP"] = "生命值"
L["HPS"] = "治療輸出"
L["I Swear"] = "我承諾"
L["I"] = "副本"
L["Icons Only"] = "圖示"
L["If you accidentally removed a default chat tab you can always re-run the chat part of the ElvUI installer."] = true
L["If you are experiencing issues with ElvUI try disabling all your addons except ElvUI first."] = true
L["IL"] = "副本隊長"
L["Import Profile"] = "導入配置文件"
L["Importance: |cFF33FF33Low|r"] = "重要性: |cFF33FF33低|r"
L["Importance: |cffD3CF00Medium|r"] = "重要性: |cffD3CF00中|r"
L["Importance: |cffFF3333High|r"] = "重要性: |cffFF3333高|r"
L["In Progress"] = "進行中"
L["INCOMPATIBLE_ADDON"] = "%s 無法與 %s 兼容.\n請選擇要保持啟用的模組/插件."
L["Installation Complete"] = "安裝完畢"
L["Interrupted %s's \124cff71d5ff\124Hspell:%d:0\124h[%s]\124h\124r!"] = "已打斷 %s 的 \124cff71d5ff\124Hspell:%d:0\124h[%s]\124h\124r!"
L["Invalid Target"] = "無效的目標"
L["is looking for members"] = "正在尋找團隊成員"
L["It appears one of your AddOns have disabled the AddOn Blizzard_CompactRaidFrames. This can cause errors and other issues. The AddOn will now be re-enabled."] = "看起來你其中的一個插件使得 Blizzard_CompactRaidFrames 停用了. 這會造成錯誤與問題. 插件現在會重新被啟用."
L["Item level: %.2f"] =  "物品等級: %.2f"
L["Item Level:"] = "物品等級:"
L["joined a group"] = "加入了團隊"
L["KEY_ALT"] = "A"
L["KEY_CTRL"] = "C"
L["KEY_DELETE"] = "Del"
L["KEY_HOME"] = "Hm"
L["KEY_INSERT"] = "Ins"
L["KEY_MOUSEBUTTON"] = "M"
L["KEY_MOUSEWHEELDOWN"] = "MwD"
L["KEY_MOUSEWHEELUP"] = "MwU"
L["KEY_NUMPAD"] = "N"
L["KEY_PAGEDOWN"] = "PD"
L["KEY_PAGEUP"] = "PU"
L["KEY_SHIFT"] = "S"
L["KEY_SPACE"] = "SpB"
L["Key"] = "鍵"
L["Layout Set"] = "版面配置設定"
L["Layout"] = "介面佈局"
L["Left Chat"] = "左側對話框"
L["Left Click:"] = "滑鼠左鍵："
L["Legs"] = "腿部"
L["List of installations in queue:"] = "即將安裝的列表"
L["Lock"] = "鎖定"
L["LOGIN_MSG_HELP"] = ("Please use */ehelp|r for a list of available *ElvUI|r commands."):gsub('*', E.InfoColor)
L["LOGIN_MSG"] = ("歡迎使用 *ElvUI|r *%s 版本|r, 輸入 */ec|r 可打開遊戲內設置介面. 如果你需要技術協助, 可訪問我們的網址 https://www.tukui.org 或是加入我們的 Discord 伺服器: https://discord.gg/xFWcfgE"):gsub('*', E.InfoColor)
L["Loot / Alert Frames"] = "拾取 / 提醒框架"
L["Loot Frame"] = "拾取框架"
L["Lord! It's a miracle! The download up and vanished like a fart in the wind! Try Again!"] = "天啊! 太奇葩啦! 下載消失了! 就像是在風中放了個屁... 再試一次吧!"
L["Loss Control Icon"] = "失去控制圖示"
L["lvl"] = "等級"
L["MA Frames"] = "主助理框架"
L["Main Hand"] = "主手"
L["Max Rank"] = "最高等級"
L["Micro Bar"] = "微型系統菜單"
L["Minimap"] = "小地圖"
L["MirrorTimer"] = "鏡像計時器"
L["Mission(s) Report:"] = "任務報告"
L["Mitigation By Level: "] = "等級減傷: "
L["Mobile"] = "掌上設備"
L["Modulating Blend"] = "無視 Alpha 通道混合"
L["Mov. Speed:"] = _G.STAT_MOVEMENT_SPEED
L["MT Frames"] = "主坦克框架"
L["Naval Mission(s) Report:"] = "海軍任務報告"
L["Nazjatar Follower XP"] = "納沙塔爾盟友經驗"
L["Need help? Join our Discord: https://discord.gg/xFWcfgE"] = "需要幫助? 加入我們的 Discord 伺服器(英文): https://discord.gg/xFWcfgE"
L["No bindings set."] = "未設定快捷綁定."
L["No gray items to delete."] = "沒有可刪除的灰色物品."
L["No Guild"] = "沒有公會"
L["No, Revert Changes!"] = "不, 回復修改!"
L["Nudge"] = "微調"
L["O"] = "幹部"
L["Objective Frame"] = "任務框架"
L["Offhand"] = "副手"
L["Offline"] = "離線"
L["Oh lord, you have got ElvUI and Tukui both enabled at the same time. Select an addon to disable."] = "喔 拜託,你不能同時使用 Elvui 和 Tukui,  請選擇一個停用."
L["One or more of the changes you have made require a ReloadUI."] = "已變更一或多個設定, 需重載介面."
L["One or more of the changes you have made will effect all characters using this addon. You will have to reload the user interface to see the changes you have made."] = "你所做的改動可能會影響到使用這個插件的所有角色, 你需要重新加載介面才能使改動生效."
L["P"] = "隊伍"
L["Party Frames"] = "隊伍框架"
L["Pending"] = "等待中"
L["Pet Bar"] = "寵物快捷列"
L["Pet Castbar"] = "寵物施法條"
L["Pet Frame"] = "寵物框架"
L["PetTarget Frame"] = "寵物目標框架"
L["PL"] = "隊長"
L["Player Buffs"] = "玩家增益"
L["Player Castbar"] = "玩家施法條"
L["Player Debuffs"] = "玩家減益"
L["Player Frame"] = "玩家框架"
L["Player NamePlate"] = "玩家姓名版"
L["Player Powerbar"] = "玩家能量條"
L["Please click the button below so you can setup variables and ReloadUI."] = "請按下方按鈕設定變數並重載介面."
L["Please click the button below to setup your CVars."] = "請按下方按鈕設定參數."
L["Please press the continue button to go onto the next step."] = "請按「繼續」按鈕, 執行下一個步驟."
L["Plugins"] = "插件"
L["Preview"] = "預覽"
L["Profile download complete from %s, but the profile %s already exists. Change the name or else it will overwrite the existing profile."] = "設定文件從 %s 下載完成, 但是設定文件 %s 已存在. 請更改名稱, 否則它會覆蓋你的現有設定檔."
L["Profile download complete from %s, would you like to load the profile %s now?"] = "設定檔從 %s 下載完成, 你是否要加載設定檔 %s?"
L["Profile request sent. Waiting for response from player."] = "已發送設定檔請求. 等待對方回應"
L["Profit:"] = "利潤: "
L["Purchase Bags"] = "購買背包"
L["Purchase"] = "購買銀行欄位"
L["R"] = "團隊"
L["Raid Menu"] = "團隊選單"
L["Raid Pet"] = "團隊寵物框架"
L["Raid-40"] = "40人團隊框架"
L["Raid"] = "團隊框架"
L["Reagent Bank"] = "材料銀行"
L["Remaining:"] = "剩餘:"
L["Remove Bar %d Action Page"] = "移除第 %d 快捷列"
L["Reputation Bar"] = "聲望條"
L["Request was denied by user."] = "請求被對方拒絕."
L["Reset Session Data: Hold Ctrl + Right Click"] = "重置會話數據: 按住 Ctrl + 右鍵點擊"
L["Reset Character Data: Hold Shift + Right Click"] = "重置角色數據: 按住 Shift + 右鍵點擊"
L["Reset Position"] = "重設位置"
L["Rested:"] = "休息:"
L["Right Chat"] = "右側對話框"
L["Right Click the bag icon to assign a type of item to this bag."] = "右鍵點擊背包圖示來指定一個類型的物品到此背包"
L["RL"] = "團長"
L["Role: Healer, Tank, Damage"] = true
L["Role: Tank, Damage, Healer"] = "角色定位: 坦克, 傷害輸出, 治療者"
L["Role: Tank, Healer, Damage"] = "角色定位: 坦克, 治療者, 傷害輸出"
L["RW"] = "團隊警告"
L["Save"] = "儲存"
L["Saved Dungeon(s)"] = "已有進度地城"
L["Saved Raid(s)"] = "已有進度的副本"
L["says"] = "說"
L["Select the type of aura system you want to use with ElvUI's unitframes. Set to Aura Bars to use both aura bars and icons, set to Icons Only to only see icons."] = "選擇你想用在 ElvUI 單位框架上的光環系統類型. 選擇光環條及圖標將會同時顯示光環條及光環圖標, 如果選擇圖標就只會顯示光環圖標."
L["Server: "] = "伺服器: "
L["Session:"] = "本次登入:"
L["Setup Chat"] = "設定對話視窗"
L["Setup CVars"] = "設定參數"
L["Shoulder"] = "肩部"
L["Show/Hide Reagents"] = "顯示/隱藏材料"
L["Shows a frame with needed info for support."] = "顯示支持訊息。"
L["silverabbrev"] = "|cffc7c7cf銀|r"
L["Skip Process"] = "略過"
L["Sort Tab"] = "選項排列"
L["SP"] = "法術能量"
L["Spec"] = "專精"
L["Spell/Heal Power"] = "法術/治療強度"
L["Spent:"] = "花費:"
L["Stance Bar"] = "姿態列"
L["Steps"] = "步驟"
L["Sticky Frames"] = "框架依附"
L["System"] = "系統信息"
L["Talent/Loot Specialization"] = "天賦/拾取專精"
L["Talking Head Frame"] = "特寫框架"
L["Tank / Physical DPS"] = "坦克/物理輸出"
L["Target Castbar"] = "目標施法條"
L["Target Frame"] = "目標框架"
L["Target Powerbar"] = "目標能量條"
L["Targeted By:"] = "同目標的有:"
L["TargetTarget Frame"] = "目標的目標框架"
L["TargetTargetTarget Frame"] = "目標的目標的目標框架"
L["Temporary Move"] = "移動背包"
L["The chat windows function the same as Blizzard standard chat windows, you can right click the tabs and drag them around, rename, etc. Please click the button below to setup your chat windows."] = "對話視窗與魔獸世界原生對話視窗的操作方式相同, 你可以拖拉、移動分頁或重新命名分頁. 請按下方按鈕以設定對話視窗."
L["The in-game configuration menu can be accessed by typing the /ec command. Press the button below if you wish to skip the installation process."] = true
L["The profile you tried to import already exists. Choose a new name or accept to overwrite the existing profile."] = "你嘗試導入的設定檔已存在. 選擇一個新名稱或是允許覆蓋原有設定檔"
L["The spell '%s' has been added to the Blacklist unitframe aura filter."] = "法術'%s'已經被添加到單位框架的光環過濾器中."
L["Theme Set"] = "主題設定"
L["Theme Setup"] = "主題安裝"
L["This install process will help you learn some of the features in ElvUI has to offer and also prepare your user interface for usage."] = "此安裝程序有助你瞭解ElvUI 部份功能, 並可協助你預先設定UI."
L["This part of the installation process sets up your chat windows names, positions and colors."] = "此安裝步驟將會設定對話視窗的名稱、位置和顏色."
L["This part of the installation process sets up your World of Warcraft default options it is recommended you should do this step for everything to behave properly."] = "此安裝步驟將會設定魔獸世界的預設選項, 建議你執行此步驟, 以確保功能均可正常運作."
L["This setting caused a conflicting anchor point, where '%s' would be attached to itself. Please check your anchor points. Setting '%s' to be attached to '%s'."] = "此設定造成了錨點衝突, '%s' 框架會依附於自己, 請檢查你的錨點. 將 '%s' 依附於 '%s'."
L["This will change the layout of your unitframes and actionbars."] = "這將會改變你的單位框架和動作條的佈局"
L["To list all available ElvUI commands, type in chat /ehelp"] = true
L["To quickly move around certain elements of the UI, type /moveui"] = true
L["To setup chat colors, chat channels and chat font size, right-click the chat tab name."] = true
L["Toggle Bags"] = "開啟/關閉背包"
L["Toggle Chat Frame"] = "開關對話框架"
L["Toggle Configuration"] = "開啟/關閉設定"
L["Tooltip"] = "浮動提示"
L["Total CPU:"] = "CPU佔用"
L["Total Memory:"] = "總記憶體:"
L["Total: "] = "合計: "
L["Trigger"] = "觸發器"
L["Type /hellokitty to revert to old settings."] = "輸入 /hellokitty 來回復舊設定"
L["BelowMinimapWidget"] = true
L["TopWidget"] = true
L["PowerBarWidget"] = true
L["Unhittable:"] = "未命中:"
L["Vehicle Seat Frame"] = "載具座位框"
L["Vendor / Delete Grays"] = "出售/摧毁灰色物品"
L["Vendor Grays"] = "出售灰色物品"
L["Vendoring Grays"] = "正在出售灰色物品"
L["Voice Overlay"] = "語音浮層"
L["Waist"] = "腰部"
L["Welcome to ElvUI version %.2f!"] = "歡迎使用 ElvUI %.2f 版！"
L["whispers"] = "密語"
L["World Latency:"] = "世界延遲:"
L["World Protocol:"] = "世界協議:"
L["Wrist"] = "護腕"
L["XP:"] = "經驗:"
L["yells"] = "大喊"
L["Yes, Keep Changes!"] = "是的, 保留變更!"
L["You are now finished with the installation process. If you are in need of technical support please visit us at http://www.tukui.org."] = "已完成安裝程序. 小提示: 若想開啟微型選單, 請在小地圖按滑鼠中鍵. 如果沒有中鍵按鈕, 請按住Shift鍵, 並在小地圖按滑鼠右鍵. 如需技術支援請至http://www.tukui.org"
L["You are using CPU Profiling. This causes decreased performance. Do you want to disable it or continue?"] = "你正在使用 CPU 使用記錄. 這將導致性能低下. 你想要關閉它還是繼續?"
L["You can access the copy chat and chat menu functions by left/right clicking on the icon in the top right corner of the chat panel."] = "你可以點擊聊天面板的右上角圖示來拷貝聊天, 及訪問聊天菜單."
L["You can access the microbar by using middle mouse button on the minimap. You can also enable the MicroBar in the actionbar settings."] = "你可以在小地圖上右鍵點擊來開啟微型菜單條. 你也可以在動作條設定中啟用微型系統條功能."
L["You can always change fonts and colors of any element of ElvUI from the in-game configuration."] = "你可以在遊戲內的設定選項內更改 ElvUI 的字體、顏色等設定."
L["You can enter the keybind mode by typing /kb"] = "你可以通過鍵入 /kb 來啟用按鍵綁定模式."
L["You can now choose what layout you wish to use based on your combat role."] = "你現在可以根據你的戰鬥角色選擇合適的佈局."
L["You can quickly change your displayed DataTexts by mousing over them while holding ALT."] = true
L["You can see someones average item level inside the tooltip by holding shift and mousing over them."] = true
L["You don't have enough money to repair."] = "沒有足夠的資金來修理."
L["You don't have permission to mark targets."] = "你沒有標記目標的權限."
L["You have imported settings which may require a UI reload to take effect. Reload now?"] = "你導入的設定可能需要重新載入 UI 才能生效. 現在重新載入嗎?"
L["You must be at a vendor."] = "你必須與商人對話."
L["You must purchase a bank slot first!"] = "你必需先購買一個銀行背包欄位!"
L["Your items have been repaired for: "] = "裝備已修理, 共支出："
L["Your items have been repaired using guild bank funds for: "] = "已使用公會資金修理裝備, 共支出："
L["Your profile was successfully recieved by the player."] = "你的設定檔已被其他玩家成功接收."
L["Zone Ability"] = "區域技能"

----------------------------------
L["DESC_MOVERCONFIG"] = [=[解除框架移動鎖定. 現在可以移動它們, 移好後請點擊「鎖定」.
選項:
  左鍵 - 開啟微調窗口.
  右鍵 - 開啟對應設定.
  Shift + 右鍵 - 暫時隱藏定位器.
  Ctrl + 右鍵 - 重置定位器位置到預設值.
]=]

L["EHELP_COMMANDS"] = ([=[Here is a list of all important *ElvUI|r commands:
 */ec|r or */elvui|r  -  Toggle the *OptionsUI|r.
 */moveui|r  -  Toggle anchors to reposition various elements.
 */kb|r  -  Toggle the keybind mode.
 */resetui|r  -  Reset all frames to their original positions.
 */bgstats|r  -  Toggle Battleground stats on your DataTexts.
 */hdt|r  -  Edit your DataTexts without opening the *OptionsUI|r.
 */estatus|r  -  Important informations for support questions.
 */egrid|r ^64|r or ^128|r or ^256|r  -  Toggle a pixel grid.
 */luaerror|r ^on|r or ^off|r  -  Disable all AddOns except ElvUI.
  NOTE: */luaerror|r ^off|r will re-enable the addons disabled from
  using */luaerror|r ^on|r within that session.
]=]):gsub('*', E.InfoColor):gsub('%^', E.InfoColor2)
