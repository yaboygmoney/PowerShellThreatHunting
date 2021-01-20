$procs = Get-WmiObject win32_process

foreach ($p in $procs) {
    $p | select @{l='ParentProcess'; e={($procs | Where { $_.ProcessID -eq $p.ParentProcessID} | Select -ExpandProperty ProcessName ) } }, ParentProcessID, ProcessName, ProcessID, CommandLine | format-list
}
