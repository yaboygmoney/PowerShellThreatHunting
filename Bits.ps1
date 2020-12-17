﻿$template = @'
GUID: {GUID*:411DB084-CB60-4920-A58E-36C286D9A761} DISPLAY: '{DisplayName:PreSignInSettingsConfigJSON}' TYPE: {Type:DOWNLOAD} STATE: {State:ERROR} OWNER: {Owner:someuser} PRIORITY: {Priority:FOREGROUND} FILES: {Files:0 / 1} BYTES: {Bytes:0 / UNKNOWN} CREATION TIME: {CreationTime:10/3/2020 12:17:46 PM} MODIFICATION TIME: {ModificationTime:10/3/2020 10:54:31 PM} COMPLETION TIME: {CompletionTime:UNKNOWN} ACL FLAGS: NOTIFY INTERFACE: {NotifyInterface:UNREGISTERED} NOTIFICATION FLAGS: {NotificationFlags:3} RETRY DELAY: {RetryDelay:10} NO PROGRESS TIMEOUT: {NoProgressTimeout:35} ERROR COUNT: {ErrorCount:5} PROXY USAGE: {ProxyUsage:PRECONFIG} PROXY LIST: {ProxyList:NULL} PROXY BYPASS LIST: {ProxyBypassList:NULL} ERROR FILE: {ErrorFile:https://g.live.com/odclientsettings/Insiders -> C:\Users\golds\AppData\Local\Temp\wctA816.tmp} ERROR CODE: {ErrorCode:0x80072ee7 - The server name or address could not be resolved} ERROR CONTEXT: {ErrorContext:0x00000005 - The error occurred while the remote file was being processed.} DESCRIPTION: JOB FILES: {JobFiles:0 / UNKNOWN WORKING https://g.live.com/odclientsettings/Insiders -> C:\Users\golds\AppData\Local\Temp\wctA816.tmp} NOTIFICATION COMMAND LINE: {CommandLine:none} owner MIC integrity level: {OwnerMICIntegrityLevel:MEDIUM} owner elevated ? {OwnerElevated:false} Peercaching flags Enable download from peers :{EnableDownloadFromPeers:false} Enable serving to peers :{EnableServingToPeers:false} CUSTOM HEADERS: {CustomHeaders:NULL} GUID: {GUID*:DAC1D8B9-04F4-4FD3-B681-ADC5564BE6AD} DISPLAY: '{DisplayName:PreSignInSettingsConfigJSON}' TYPE: {Type:DOWNLOAD} STATE: {State:ERROR} OWNER: {Owner:BEEFY\golds} PRIORITY: {Priority:FOREGROUND} FILES: {Files:0 / 1} BYTES: {Bytes:0 / UNKNOWN} CREATION TIME: {CreationTime:10/17/2020 12:20:34 PM} MODIFICATION TIME: {ModificationTime:10/17/2020 10:47:31 PM} COMPLETION TIME: {CompletionTime:UNKNOWN} ACL FLAGS: NOTIFY INTERFACE: {NotifyInterface:UNREGISTERED} NOTIFICATION FLAGS: {NotificationFlags:3} RETRY DELAY: {RetryDelay:10} NO PROGRESS TIMEOUT: {NoProgressTimeout:35} ERROR COUNT: {ErrorCount:6} PROXY USAGE: {ProxyUsage:PRECONFIG} PROXY LIST: {ProxyList:NULL} PROXY BYPASS LIST: {ProxyBypassList:NULL} ERROR FILE: {ErrorFile:https://g.live.com/odclientsettings/Insiders -> C:\Users\golds\AppData\Local\Temp\wct3F3D.tmp} ERROR CODE: {ErrorCode:0x80072ee7 - The server name or address could not be resolved} ERROR CONTEXT: {ErrorContext:0x00000005 - The error occurred while the remote file was being processed.} DESCRIPTION: JOB FILES: {JobFiles:0 / UNKNOWN WORKING https://g.live.com/odclientsettings/Insiders -> C:\Users\golds\AppData\Local\Temp\wct3F3D.tmp} NOTIFICATION COMMAND LINE: {CommandLine:none} owner MIC integrity level: {OwnerMICIntegrityLevel:MEDIUM} owner elevated ? {OwnerElevated:false} Peercaching flags Enable download from peers :{EnableDownloadFromPeers:false} Enable serving to peers :{EnableServingToPeers:false} CUSTOM HEADERS: {CustomHeaders:NULL} GUID: {GUID*:DB25AB5D-3E44-4054-BA87-49253BE2322C} DISPLAY: '{DisplayName:ybgm}' TYPE: {Type:DOWNLOAD} STATE: {State:SUSPENDED} OWNER: {Owner:BEEldFY\gos} PRIORITY: {Priority:NORMAL} FILES: {Files:0 / 0} BYTES: {Bytes:0 / 0} CREATION TIME: {CreationTime:12/16/2020 6:40:42 PM} MODIFICATION TIME: {ModificationTime:12/16/2020 6:41:26 PM} COMPLETION TIME: {CompletionTime:UNKNOWN} ACL FLAGS: NOTIFY INTERFACE: {NotifyInterface:UNREGISTERED} NOTIFICATION FLAGS: {NotificationFlags:3} RETRY DELAY: {RetryDelay:600} NO PROGRESS TIMEOUT: {NoProgressTimeout:1209600} ERROR COUNT: {ErrorCount:0} PROXY USAGE: {ProxyUsage:PRECONFIG} PROXY LIST: {ProxyList:NULL} PROXY BYPASS LIST: {ProxyBypassList:NULL} DESCRIPTION: JOB FILES: NOTIFICATION COMMAND LINE: {CommandLine:'C:\powershell.exe' 'hackme.ps1'} owner MIC integrity level: MEDIUM owner elevated ? false Peercaching flags  Enable download from peers :false  Enable serving to peers :false CUSTOM HEADERS: NULL
'@

$bitsAdminraw = bitsadmin /rawreturn /list /verbose /allusers
$filtered = $bitsAdminraw -replace '[{}]','' -replace ' {2,}',' ' -replace ' 	',' '
$filtered | ConvertFrom-String -TemplateContent $template | Select *