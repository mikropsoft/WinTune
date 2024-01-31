; ============ Service ================
; State
	; 1:Stopped
	; 2:Start Pending
	; 3:Stop Pending
	; 4:Running
	; 5:Continue Pending
	; 6:Pause Pending
	; 7:Paused
; StartType
	; SERVICE_BOOT_START:=0x00000000
	; SERVICE_SYSTEM_START:=0x00000001
	; SERVICE_AUTO_START:=0x00000002
	; SERVICE_DEMAND_START:=0x00000003
	; SERVICE_DISABLED:=0x00000004
	; SERVICE_NO_CHANGE:=0xFFFFFFFF
Data:={
DisableAutoSuggest: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete",RegType: "REG_SZ",RegValue1: "no",RegValueName: "AutoSuggest"}
]},
DisableAppendCompletion: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete",RegType: "REG_SZ",RegValue1: "no",RegValueName: "Append Completion"}
]},
DisableCortana: {Act: [
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\Personalization\Settings",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "AcceptedPrivacyPolicy"},
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\InputPersonalization",RegType: "REG_DWORD",RegValue1: "1",RegValue0: "0",RegValueName: "RestrictImplicitTextCollection"},
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\InputPersonalization",RegType: "REG_DWORD",RegValue1: "1",RegValue0: "0",RegValueName: "RestrictImplicitInkCollection"},
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "HarvestContacts"}
]},
DisableBackgroundApps: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "GlobalUserDisabled"},
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Search",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "BackgroundAppGlobalToggle"}
	; {Type: "RegAdd",RegKey: "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy",RegType: "REG_DWORD",RegValue1: "2",RegValueName: "LetAppsRunInBackground",LvlKeyDel: 1}
]},
DisableLockScreen: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "NoLockScreen"}
]},
NumLockonStartup: {Act: [
	{Type: "RegChange",RegKey: "HKU\.DEFAULT\Control Panel\Keyboard",RegType: "REG_SZ",RegValue1: "2",RegValue0: "2147483648",RegValueName: "InitialKeyboardIndicators"}
]},
ShowHidden: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "1",RegValue0: "2",RegValueName: "Hidden"}
]},
ShowHiddenSystem: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "1",RegValue0: "0",RegValueName: "ShowSuperHidden"}
]},
ShowExtensions: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "HideFileExt"}
]},
DisableShortcutText: {Act: [
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer",RegType: "REG_BINARY",RegValue1: "00000000",RegValue0: "16000000",RegValueName: "link"}
]},
DisableScheduledDefrag: {Act: [{Type: "ScheduleService", Location: "\Microsoft\Windows\Defrag",TaskName: "ScheduledDefrag"}]},
SnippingPrintScreen: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Control Panel\Keyboard",RegType: "REG_DWORD",RegValue1: "1",RegValue0: "0",RegValueName: "PrintScreenKeyForSnippingEnabled"}
]},
UninstallOneDrive: {Act: [{Type: "Custom"}]},
ShowThisPC: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "{20D04FE0-3AEA-1069-A2D8-08002B30309D}"}
]},
OpenFileExplorerThisPC: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "1",RegValue0: "2",RegValueName: "LaunchTo"}
]},
ShutdownAcceleration: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Control Panel\Desktop",RegType: "REG_SZ",RegValue1: "4000",RegValueName: "LowLevelHooksTimeout"},
	{Type: "RegAdd",RegKey: "HKCU\Control Panel\Desktop",RegType: "REG_SZ",RegValue1: "5000",RegValueName: "WaitToKillServiceTimeout"},
	{Type: "RegAdd",RegKey: "HKCU\Control Panel\Desktop",RegType: "REG_SZ",RegValue1: "3000",RegValueName: "HungAppTimeout"},
	{Type: "RegAdd",RegKey: "HKCU\Control Panel\Desktop",RegType: "REG_SZ",RegValue1: "10000",RegValueName: "WaitToKillAppTimeout"}
]},
DisableMenuShowDelay: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Control Panel\Desktop",RegType: "REG_SZ",RegValue1: "0",RegValue0: "400",RegValueName: "MenuShowDelay"}
]},
AutoEndTasks: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Control Panel\Desktop",RegType: "REG_SZ",RegValue1: "1",RegValueName: "AutoEndTasks"}
]},
DisableAnimationEffectMaxMin: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Control Panel\Desktop\WindowMetrics",RegType: "REG_SZ",RegValue1: "0",RegValue0: "1",RegValueName: "MinAnimate"}
]},
MouseHoverTime: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Control Panel\Mouse",RegType: "REG_SZ",RegValue1: "100",RegValue0: "400",RegValueName: "MouseHoverTime"}
]},
OptimizeRefreshPolicy: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "NoSimpleNetIDList"}
]},
DisableLowDiskSpaceChecks: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "NoLowDiskSpaceChecks"}
]},
LinkResolveIgnoreLinkInfo: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "LinkResolveIgnoreLinkInfo"}
]},
NoResolveSearch: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "NoResolveSearch"}
]},
NoResolveTrack: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "NoResolveTrack"}
]},
NoInternetOpenWith: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "NoInternetOpenWith"}
]},
DisableBootOptimize: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\Software\Microsoft\Dfrg\BootOptimizeFunction",RegType: "REG_SZ",RegValue1: "n",RegValueName: "Enable"}
]},
DisableAutoDefragIde: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\Software\Microsoft\Windows\CurrentVersion\OptimalLayout",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "EnableAutoLayout"}
]},
DisablePrefetchParameters: {Act: [
	{Type: "RegChange",RegKey: "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "3",RegValueName: "EnablePrefetcher"}
]},
DisableErrorReporting: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\Software\Microsoft\PCHealth\ErrorReporting",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "ShowUI"},
	{Type: "RegAdd",RegKey: "HKLM\Software\Microsoft\PCHealth\ErrorReporting",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "DoReport"}
]},
DisableAeDebug: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AeDebug",RegType: "REG_SZ",RegValue1: "0",RegValueName: "Auto"}
]},
DisableCrashAutoReboot: {Act: [
	{Type: "RegChange",RegKey: "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "AutoReboot"}
]},
Optimizeprocessorperformance: {RequiresWinInstallationType:"Client",Act: [
	{Type: "RegChange",RegKey: "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl",RegType: "REG_DWORD",RegValue1: "38",RegValue0: "2",RegValueName: "Win32PrioritySeparation"}
]},
Disablememorypagination: {Act: [
	{Type: "RegChange",RegKey: "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management",RegType: "REG_DWORD",RegValue1: "1",RegValue0: "0",RegValueName: "DisablePagingExecutive"}
]},
IoPageLockLimit: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management",RegType: "REG_DWORD",RegValue1: "134217728",RegValueName: "IoPageLockLimit"}
]},
IncreaseIconCache: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer",RegType: "REG_SZ",RegValue1: "4096",RegValueName: "Max Cached Icons"}
]},
OptimizeNetworkTransfer: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters",RegType: "REG_DWORD",RegValue1: "32",RegValueName: "MaxCollectionCount"},
	{Type: "RegAdd",RegKey: "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters",RegType: "REG_DWORD",RegValue1: "30",RegValueName: "MaxThreads"},
	{Type: "RegAdd",RegKey: "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters",RegType: "REG_DWORD",RegValue1: "30",RegValueName: "MaxCmds"}
]},
DisableWCE: {Act: [
	{Type: "ScheduleService", Location: "\Microsoft\Windows\Autochk",TaskName: "Proxy"},
	{Type: "ScheduleService", Location: "\Microsoft\Windows\Application Experience",TaskName: "Microsoft Compatibility Appraiser"}
]},
DisableMicrosoftEdgeUpdateTask: {Act: [
	{Type: "ScheduleService", Location: "\",TaskName: "MicrosoftEdgeUpdateTaskMachineCore"},
	{Type: "ScheduleService", Location: "\",TaskName: "MicrosoftEdgeUpdateTaskMachineUA"},
	{Type: "Service",Name: "edgeupdate",StartType1:4,StartType0:2,Check:0}
]},
DisableGoogleUpdateTask: {Act: [
	{Type: "ScheduleService", Location: "\",TaskName: "GoogleUpdateTaskMachineCore"},
	{Type: "ScheduleService", Location: "\",TaskName: "GoogleUpdateTaskMachineUA"}
]},
DisabledVBSCodeIntegrity: {Act: [
	{Type: "RegDel",RegKey: "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity",RegType: "REG_DWORD",RegValue0: "1",RegValueName: "Enabled"},
	{Type: "RegDel",RegKey: "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity",RegType: "REG_DWORD",RegValue0: "2",RegValueName: "WasEnabledBy"}
]},
DisableAutoplay: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer",RegType: "REG_DWORD",RegValue1: "221",RegValueName: "NoDriveTypeAutoRun"}
]},
DisableRemoteRegAccess: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "remoteregaccess"}
]},
DisableRecentFiles: {Act: [
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "ShowRecent"}
]},
DisableFrequentFolders: {Act: [
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "ShowFrequent"}
]},
DisableOfferSuggestions: {Act: [
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "ScoobeSystemSettingEnabled"}
]},
DisableTipsAndSuggestions: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "SoftLandingEnabled"}
]},
DiagnosticDataOff: {Act: [
	{Type: "RegChange",RegKey: "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "AllowTelemetry"},
	{Type: "RegChange",RegKey: "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "MaxTelemetryAllowed"}
]},
DisableTailoredExperiences: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "TailoredExperiencesWithDiagnosticDataEnabled"}
]},
DisablePersonalizedAdsStoreApps: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "Enabled"}
]},
DisableWebSearch: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "DisableSearchBoxSuggestions"}
]},
DisableCortanaWindowsSearch: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "AllowCortana"}
]},
DisableBingSearchStartMenu: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "BingSearchEnabled"}
]},
DisableWebSearchStartMenu: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "DisableWebSearch"}
]},
DisableWindowsFeedback: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Siuf\Rules",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "PeriodInNanoSeconds"}
]},
DisableSyncProviderNotifications: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "ShowSyncProviderNotifications"}
]},
DisableAdsOnLockScreen: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "RotatingLockScreenEnabled"},
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "RotatingLockScreenOverlayEnabled"},
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "SubscribedContent-338387Enabled"}
]},
DisableSettingsAppSuggestions: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "SubscribedContent-338393Enabled"}
]},
DisableAutoInstallationApps: {Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "SilentInstalledAppsEnabled"}
]},
UnpinFileExplorer: {Act: [{Type: "SystemPinned",SearchName: "File Explorer",
		Favorites: "00A40100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE12000000709F13549EE7D801340D32889EE7D801115F39889EE7D8011400560031000000000058550F5E11005461736B42617200400009000400EFBE58550F5E58550F5E2E000000C7CC0100000001000000000000000000000000000000EF1BF8005400610073006B00420061007200000016001201320097010000A754662A200046494C4545587E312E4C4E4B00007C0009000400EFBE58550F5E58550F5E2E000000C8CC0100000001000000000000000000520000000000A413A200460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00120000002B00EFBE115F39889EE7D8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C000000",
		FavoritesResolve: "3B0300004C0000000114020000000000C00000000000004683008000200000000C8334889EE7D80147E942889EE7D8015CF4E1FBD161D801970100000000000001000000000000000000000000000000A0013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE12000000709F13549EE7D801340D32889EE7D801115F39889EE7D8011400560031000000000058550F5E11005461736B42617200400009000400EFBE58550F5E58550F5E2E000000C7CC0100000001000000000000000000000000000000EF1BF8005400610073006B00420061007200000016000E01320097010000A754662A200046494C4545587E312E4C4E4B00007C0009000400EFBE58550F5E58550F5E2E000000C8CC0100000001000000000000000000520000000000A413A200460069006C00650020004500780070006C006F007200650072002E006C006E006B00000040007300680065006C006C00330032002E0064006C006C002C002D003200320030003600370000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE115F39889EE7D8011C00420000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F00770073002E004500780070006C006F0072006500720000001C000000A40000001C000000010000001C0000002D00000000000000A3000000110000000300000042D5A4881000000000433A5C55736572735C41646D696E6973747261746F725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C46696C65204578706C6F7265722E6C6E6B000060000000030000A058000000000000006465736B746F702D6534396D656B3500B6ECB67C1407F54390726C4105B222623459A4CD0654ED1985587C5079067BCDB6ECB67C1407F54390726C4105B222623459A4CD0654ED1985587C5079067BCD45000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D00000068000000004800000043F03D82C839F24C9CCFF555D8E425B6000000000000000000000000"
}]},
UnpinEdge: {Act: [{Type: "SystemPinned",SearchName: "Microsoft Edge",
		Favorites: "00560100003A001F80C827341F105C1042AA032EE45287D668260001002600EFBE12000000709F13549EE7D801340D32889EE7D80189B747889EE7D8011400560031000000000058550F5E11005461736B42617200400009000400EFBE58550F5E58550F5E2E000000C7CC010000000100000000000000000000000000000077C3E9005400610073006B0042006100720000001600C4003200860900005955810D20004D4943524F537E312E4C4E4B0000560009000400EFBE58550F5E58550F5E2E000000CACC0100000001000000000000000000000000000000280E0D004D006900630072006F0073006F0066007400200045006400670065002E006C006E006B0000001C00120000002B00EFBE89B747889EE7D8011C001A0000001D00EFBE02004D005300450064006700650000001C00260000001E00EFBE0200530079007300740065006D00500069006E006E006500640000001C000000",
		FavoritesResolve: "EE0200004C0000000114020000000000C000000000000046830080002000000089B747889EE7D801C0C55A889EE7D801D88E244213E8D80186090000000000000100000000000000000000000000000052013A001F80C827341F105C1042AA032EE45287D668260001002600EFBE12000000709F13549EE7D801340D32889EE7D80189B747889EE7D8011400560031000000000058550F5E11005461736B42617200400009000400EFBE58550F5E58550F5E2E000000C7CC010000000100000000000000000000000000000077C3E9005400610073006B0042006100720000001600C0003200860900005955810D20004D4943524F537E312E4C4E4B0000560009000400EFBE58550F5E58550F5E2E000000CACC0100000001000000000000000000000000000000280E0D004D006900630072006F0073006F0066007400200045006400670065002E006C006E006B0000001C00220000001E00EFBE02005500730065007200500069006E006E006500640000001C00120000002B00EFBE89B747889EE7D8011C001A0000001D00EFBE02004D005300450064006700650000001C000000A50000001C000000010000001C0000002D00000000000000A4000000110000000300000042D5A4881000000000433A5C55736572735C41646D696E6973747261746F725C417070446174615C526F616D696E675C4D6963726F736F66745C496E7465726E6574204578706C6F7265725C517569636B204C61756E63685C557365722050696E6E65645C5461736B4261725C4D6963726F736F667420456467652E6C6E6B000060000000030000A058000000000000006465736B746F702D6534396D656B3500B6ECB67C1407F54390726C4105B222623559A4CD0654ED1985587C5079067BCDB6ECB67C1407F54390726C4105B222623559A4CD0654ED1985587C5079067BCD45000000090000A03900000031535053B1166D44AD8D7048A748402EA43D788C1D00000068000000004800000043F03D82C839F24C9CCFF555D8E425B6000000000000000000000000"
}]},
UnpinStore: {Act: [{Type: "SystemPinned",SearchName: "Microsoft Store",
		Favorites: "005C06000014001F809BD434424502F34DB7803893943456E146060000AA05415050539805080003000000000000005F0200003153505355284C9F799F394BA8D0E1D42DE1D5F35D00000011000000001F000000250000004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F003800770065006B00790062003300640038006200620077006500000000001100000027000000000B00000000000000110000000E0000000013000000010000008500000015000000001F000000390000004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F00320032003200300034002E0031003400300030002E0034002E0030005F007800360034005F005F003800770065006B00790062003300640038006200620077006500000000006500000005000000001F000000290000004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F003800770065006B00790062003300640038006200620077006500210041007000700000000000BD0000000F000000001F0000005600000043003A005C00500072006F006700720061006D002000460069006C00650073005C00570069006E0064006F007700730041007000700073005C004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F00320032003200300034002E0031003400300030002E0034002E0030005F007800360034005F005F003800770065006B0079006200330064003800620062007700650000001D0000002000000000480000007E0E35D6229EEE40A7871BEB5615E2EB000000008A020000315350534D0BD48669903C44819A2A54090DCCEC550000000C000000001F000000210000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F00720065004D0065006400540069006C0065002E0070006E006700000000005500000002000000001F000000210000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F00720065004100700070004C006900730074002E0070006E00670000000000590000000F000000001F000000230000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F0072006500420061006400670065004C006F0067006F002E0070006E00670000000000550000000D000000001F000000220000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F00720065005700690064006500540069006C0065002E0070006E0067000000110000000400000000130000000078D4FF11000000050000000013000000FFFFFFFF5900000013000000001F000000230000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F00720065004C006100720067006500540069006C0065002E0070006E00670000000000110000000E0000000013000000A5040000310000000B000000001F000000100000004D006900630072006F0073006F00660074002000530074006F007200650000005900000014000000001F000000230000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F007200650053006D0061006C006C00540069006C0065002E0070006E00670000000000000000003100000031535053B1166D44AD8D7048A748402EA43D788C15000000640000000015000000CD02000000000000000000004D0000003153505330F125B7EF471A10A5F102608C9EEBAC310000000A000000001F000000100000004D006900630072006F0073006F00660074002000530074006F00720065000000000000002D00000031535053B377ED0D14C66C45AE5B285B38D7B01B110000000700000000130000000000000000000000000000000000120000002B00EFBE645D88889EE7D801B0055E0000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F003800770065006B0079006200330064003800620062007700650021004100700070000000B005260000001E00EFBE0200530079007300740065006D00500069006E006E00650064000000B0050000",
		FavoritesResolve: "AA0600004C0000000114020000000000C0000000000000468100800000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000580614001F809BD434424502F34DB7803893943456E142060000AA05415050539805080003000000000000005F0200003153505355284C9F799F394BA8D0E1D42DE1D5F35D00000011000000001F000000250000004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F003800770065006B00790062003300640038006200620077006500000000001100000027000000000B00000000000000110000000E0000000013000000010000008500000015000000001F000000390000004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F00320032003200300034002E0031003400300030002E0034002E0030005F007800360034005F005F003800770065006B00790062003300640038006200620077006500000000006500000005000000001F000000290000004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F003800770065006B00790062003300640038006200620077006500210041007000700000000000BD0000000F000000001F0000005600000043003A005C00500072006F006700720061006D002000460069006C00650073005C00570069006E0064006F007700730041007000700073005C004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F00320032003200300034002E0031003400300030002E0034002E0030005F007800360034005F005F003800770065006B0079006200330064003800620062007700650000001D0000002000000000480000007E0E35D6229EEE40A7871BEB5615E2EB000000008A020000315350534D0BD48669903C44819A2A54090DCCEC550000000C000000001F000000210000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F00720065004D0065006400540069006C0065002E0070006E006700000000005500000002000000001F000000210000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F00720065004100700070004C006900730074002E0070006E00670000000000590000000F000000001F000000230000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F0072006500420061006400670065004C006F0067006F002E0070006E00670000000000550000000D000000001F000000220000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F00720065005700690064006500540069006C0065002E0070006E0067000000110000000400000000130000000078D4FF11000000050000000013000000FFFFFFFF5900000013000000001F000000230000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F00720065004C006100720067006500540069006C0065002E0070006E00670000000000110000000E0000000013000000A5040000310000000B000000001F000000100000004D006900630072006F0073006F00660074002000530074006F007200650000005900000014000000001F000000230000004100730073006500740073005C00410070007000540069006C00650073005C00530074006F007200650053006D0061006C006C00540069006C0065002E0070006E00670000000000000000003100000031535053B1166D44AD8D7048A748402EA43D788C15000000640000000015000000CD02000000000000000000004D0000003153505330F125B7EF471A10A5F102608C9EEBAC310000000A000000001F000000100000004D006900630072006F0073006F00660074002000530074006F00720065000000000000002D00000031535053B377ED0D14C66C45AE5B285B38D7B01B110000000700000000130000000000000000000000000000000000220000001E00EFBE02005500730065007200500069006E006E00650064000000B005120000002B00EFBE645D88889EE7D801B0055E0000001D00EFBE02004D006900630072006F0073006F00660074002E00570069006E0064006F0077007300530074006F00720065005F003800770065006B0079006200330064003800620062007700650021004100700070000000B005000000000000"
}]},
UnpinSearch: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "SearchboxTaskbarMode"}
]},
UnpinTaskView: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "ShowTaskViewButton"}
]},

UnpinWidgets: {RequiresWinVer: ">=10.0.22000",Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "TaskbarDa"}
]},
UnpinCopilot: {RequiresWinVer: ">=10.0.22000",Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "ShowCopilotButton"}
]},
UnpinChat: {RequiresWinVer: ">=10.0.22000",Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "TaskbarMn"}
]},
UnpinCortana: {RequiresWinVer: "<10.0.22000",Act: [
	{Type: "RegChange",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "ShowCortanaButton"}
]},
UnpinMail: {RequiresWinVer: "<10.0.22000",Act: [{Type: "SystemPinned",SearchName: "Mail",
		Favorites: "00AF06000014001F809BD434424502F34DB7803893943456E199060000B50541505053A30508000300000000000000F60200003153505355284C9F799F394BA8D0E1D42DE1D5F37500000011000000001F000000320000006D006900630072006F0073006F00660074002E00770069006E0064006F007700730063006F006D006D0075006E00690063006100740069006F006E00730061007000700073005F003800770065006B007900620033006400380062006200770065000000110000000E000000001300000001000000A900000015000000001F0000004B0000006D006900630072006F0073006F00660074002E00770069006E0064006F007700730063006F006D006D0075006E00690063006100740069006F006E00730061007000700073005F00310036003000300035002E00310031003600320039002E00320030003300310036002E0030005F007800360034005F005F003800770065006B0079006200330064003800620062007700650000000000AD00000005000000001F0000004D0000006D006900630072006F0073006F00660074002E00770069006E0064006F007700730063006F006D006D0075006E00690063006100740069006F006E00730061007000700073005F003800770065006B0079006200330064003800620062007700650021006D006900630072006F0073006F00660074002E00770069006E0064006F00770073006C006900760065002E006D00610069006C0000000000E10000000F000000001F0000006800000043003A005C00500072006F006700720061006D002000460069006C00650073005C00570069006E0064006F007700730041007000700073005C006D006900630072006F0073006F00660074002E00770069006E0064006F007700730063006F006D006D0075006E00690063006100740069006F006E00730061007000700073005F00310036003000300035002E00310031003600320039002E00320030003300310036002E0030005F007800360034005F005F003800770065006B0079006200330064003800620062007700650000001D0000002000000000480000000C5AA79904344B4AA5AD2F5C3F90A5D10000000012020000315350534D0BD48669903C44819A2A54090DCCEC490000000C000000001F0000001C00000069006D0061006700650073005C00480078004D00610069006C004D0065006400690075006D00540069006C0065002E0070006E00670000004500000002000000001F0000001900000069006D0061006700650073005C00480078004D00610069006C004100700070004C006900730074002E0070006E00670000000000410000000F000000001F0000001700000069006D0061006700650073005C00480078004D00610069006C00420061006400670065002E0070006E00670000000000450000000D000000001F0000001A00000069006D0061006700650073005C00480078004D00610069006C005700690064006500540069006C0065002E0070006E0067000000110000000400000000130000000078D7FF4900000013000000001F0000001B00000069006D0061006700650073005C00480078004D00610069006C004C006100720067006500540069006C0065002E0070006E0067000000000011000000050000000013000000FFFFFFFF110000000E0000000013000000AD0400001D0000000B000000001F000000050000004D00610069006C00000000004900000014000000001F0000001B00000069006D0061006700650073005C00480078004D00610069006C0053006D0061006C006C00540069006C0065002E0070006E00670000000000000000003100000031535053B1166D44AD8D7048A748402EA43D788C15000000640000000015000000100100000000000000000000390000003153505330F125B7EF471A10A5F102608C9EEBAC1D0000000A000000001F000000050000004D00610069006C0000000000000000002D00000031535053B377ED0D14C66C45AE5B285B38D7B01B110000000700000000130000000000000000000000000000000000120000002B00EFBE149BAA8075F1D801BB05A60000001D00EFBE02006D006900630072006F0073006F00660074002E00770069006E0064006F007700730063006F006D006D0075006E00690063006100740069006F006E00730061007000700073005F003800770065006B0079006200330064003800620062007700650021006D006900630072006F0073006F00660074002E00770069006E0064006F00770073006C006900760065002E006D00610069006C000000BB05260000001E00EFBE0200530079007300740065006D00500069006E006E00650064000000BB050000",
		FavoritesResolve: ""
}]},
; Remove News and Interests
; 0 – Shows icon and text
; 1 – Show only icon
; 2 – Hide News and Interests
UnpinNewsandInterests: {RequiresWinVer: "<10.0.22000",Act: [
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds",RegType: "REG_DWORD",RegValue1: "2",RegValue0: "0",RegValueName: "ShellFeedsTaskbarViewMode"}
]},
DisableVisualStudioTelemetry: {Act: [{Type: "Custom"}]},
EnableDarkMode: {Act: [
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "SystemUsesLightTheme"},
	{Type: "RegChange",RegKey: "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "AppsUseLightTheme"}
]},
ClassicContextMenu: {RequiresWinVer: ">=10.0.22000",Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32",RegType: "REG_SZ",RegValue1: "",LvlKeyDel: 2}
]},
DisableWindowsSearch: {Act: [{Type: "Service",Name: "WSearch",State1:1,StartType1:4,State0:4,StartType0:2}]},
DisablePrintSpooler: {Act: [{Type: "Service",Name: "Spooler",State1:1,StartType1:4,State0:4,StartType0:2}]},
DisableDiagTrack: {Act: [
	{Type: "Service",Name: "DiagTrack",State1:1,StartType1:4,State0:4,StartType0:2},
	{Type: "RunTerminal",Value1: A_Comspec ' /c netsh advfirewall firewall set rule name="Connected User Experiences and Telemetry" new action=block & netsh advfirewall firewall set rule name="Cortana" new action=block',Value0: A_Comspec ' /c netsh advfirewall firewall set rule name="Connected User Experiences and Telemetry" new action=allow & netsh advfirewall firewall set rule name="Cortana" new action=allow',}
]},
DisableSystemRestore: {Act: [{Type: "Custom"}]},
DisableMSDefender: {Act: [{Type: "Custom"}]},
DisableAutoWindowsUpdates: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU",RegType: "REG_DWORD",RegValue1: "1",RegValueName: "NoAutoUpdate"}
]},
AUOptions: {Act: [
	{Type: "RegAdd",RegKey: "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU",RegType: "REG_DWORD",RegValue1: "2",RegValueName: "AUOptions"}
]},
DisableGameBar: {Act: [
	{Type: "RegAdd",RegKey: "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR",RegType: "REG_DWORD",RegValue1: "0",RegValueName: "AppCaptureEnabled"},
	{Type: "RegChange",RegKey: "HKCU\System\GameConfigStore",RegType: "REG_DWORD",RegValue1: "0",RegValue0: "1",RegValueName: "GameDVR_Enabled"}
]},
DisableSleep: {Act: [{Type: "Power",Name: "SleepIdleTimeout", Value1: 0, Value0: 900}]},
DisableHibernate: {Act: [{Type: "Power",Name: "HibernateIdleTimeout", Value1: 0, Value0: 1}]},
DisableHybridSleep: {Act: [{Type: "Power",Name: "HybridSleepIdleTimeout", Value1: 0, Value0: 1}]},
DisableTurnOffDisplay: {Act: [{Type: "Power",Name: "DisplayIdleTimeout", Value1: 0, Value0: 300}]}
}

Layout:=[
{ID: "System",Icon: "*icon106 imageres.dll",Fn: "OptimizeTab", hr:"Text_HR_Optimize",Items: [
"DisableGameBar",
"AutoEndTasks",
"DisableAeDebug",
"DisableAnimationEffectMaxMin",
"DisableAutoDefragIde",
"DisableBackgroundApps",
"DisableBootOptimize",
"DisableCortana",
"DisableCrashAutoReboot",
"DisableDiagTrack",
"DisableErrorReporting",
"DisableGoogleUpdateTask",
"DisableLockScreen",
"DisableLowDiskSpaceChecks",
"Disablememorypagination",
"DisableMenuShowDelay",
"DisableMicrosoftEdgeUpdateTask",
"DisablePrefetchParameters",
"DisableScheduledDefrag",
"DisableShortcutText",
"DisableWCE",
"IoPageLockLimit",
"LinkResolveIgnoreLinkInfo",
"MouseHoverTime",
"NoInternetOpenWith",
"NoResolveSearch",
"NoResolveTrack",
"NumLockonStartup",
"OptimizeNetworkTransfer",
"Optimizeprocessorperformance",
"OptimizeRefreshPolicy",
"ShutdownAcceleration",
"SnippingPrintScreen"]},
{ID: "Privacy",Icon: "*icon185 imageres.dll",Fn: "OptimizeTab",Items: [
"DiagnosticDataOff",
"DisableAdsOnLockScreen",
"DisableAutoInstallationApps",
"DisableAutoplay",
"DisableBingSearchStartMenu",
"DisableCortanaWindowsSearch",
"DisabledVBSCodeIntegrity",
"DisableOfferSuggestions",
"DisablePersonalizedAdsStoreApps",
"DisableRemoteRegAccess",
"DisableSettingsAppSuggestions",
"DisableTailoredExperiences",
"DisableTipsAndSuggestions",
"DisableVisualStudioTelemetry",
"DisableWebSearchStartMenu",
"DisableWindowsFeedback"]},
{ID: "Explorer",Icon: "*icon266 imageres.dll",Icon10: "*icon265 imageres.dll",Fn: "OptimizeTab",Items: [
"DisableAutoSuggest",
"DisableAppendCompletion",
"ShowExtensions",
"ShowHidden",
"ShowHiddenSystem",
"ShowThisPC",
"OpenFileExplorerThisPC",
"IncreaseIconCache",
"DisableRecentFiles",
"DisableFrequentFolders",
"DisableWebSearch",
"DisableSyncProviderNotifications"]},
; {ID: "UnpinTaskbar",Icon: "*icon295 imageres.dll",Fn: "OptimizeTab",Items: [
; "UnpinFileExplorer",
; "UnpinEdge",
; "UnpinSearch",
; "UnpinTaskView",
; "UnpinChat",
; "UnpinCortana",
; "UnpinMail",
; "UnpinNewsandInterests",
; "UnpinStore",
; "UnpinCopilot",
; "UnpinWidgets"]},
{ID: "Optional",Icon: "*icon23 imageres.dll",Fn: "OptimizeTab",Items: [
"EnableDarkMode",
"ClassicContextMenu",
"AUOptions",
"DisableAutoWindowsUpdates",
"DisableHibernate",
"DisableHybridSleep",
"DisablePrintSpooler",
"DisableSleep",
"DisableSystemRestore",
"DisableTurnOffDisplay",
"DisableWindowsSearch",
"UninstallOneDrive",
"DisableMSDefender"]},
{ID: "BtnStartupManager",Icon: "*icon281 imageres.dll",Icon10: "*icon280 imageres.dll",Fn: "BtnStartupManager_Click", hr:"Text_HR_Tools"},
{ID: "BtnHostEdit",Icon: "*icon291 imageres.dll",Icon10: "*icon290 imageres.dll",Fn: "BtnHostEdit_Click"},
{ID: "BtnClearStartMenu",Icon: "*icon190 imageres.dll",Fn: "BtnClearStartMenu_Click",NotSelected:1},
{ID: "BtnRestartExplorer",Icon: "*icon294 imageres.dll",Icon10: "*icon293 imageres.dll",Fn: "BtnRestartExplorer_Click",NotSelected:1}
]

Themes:={
Dark: {BackColor: "202020", TextColor: "FFFFFF",BackColorNavSelect: "0DFFFFFF", BackColorPanel: "80000000", BorderColorPanel: "30FFFFFF", CtrDark: 1, HrColor: "4c4c4c"},
Light: {BackColor: "F3F3F3", TextColor: "000000", BackColorNavSelect: "50000000", BackColorPanel: "A0FFFFFF", BorderColorPanel: "40000000", CtrDark: 0, HrColor: "ADADAD"},
Purple: {BackColor: "7F3FBF", TextColor: "FFFFFF", BackColorNavSelect: "30FFFFFF", BackColorPanel: "307F3FBF", BorderColorPanel: "30FFFFFF", CtrDark: 0, HrColor: "B27FE5"},
Red: {BackColor: "720001", TextColor: "FFFFFF", BackColorNavSelect: "30FFFFFF", BackColorPanel: "30720001", BorderColorPanel: "30FFFFFF", CtrDark: 0, HrColor: "A50002"},
Green: {BackColor: "2D7226", TextColor: "FFFFFF", BackColorNavSelect: "30FFFFFF", BackColorPanel: "302D7226", BorderColorPanel: "30FFFFFF", CtrDark: 0, HrColor: "48A73D"}
}