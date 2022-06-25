#Use this when you have a clean baseline of your known good web server files
#You can catch webshells getting tossed onto servers like this: https://www.cisa.gov/uscert/sites/default/files/publications/AR-17-20045_Enhanced_Analysis_of_GRIZZLY_STEPPE_Activity.pdf
#Store the hash in the file to be read into $goodHashes in line 1
#Point the 2nd line towards the directory hosting your web files
#Configure the output to do whatever suits you
#Profit

$goodHashes = (get-content C:\users\golds\hashes.txt)
$file = Get-ChildItem C:\inetpub -recurse

foreach ($f in $file) {
    $hash = Get-FileHash $f.FullName
    if ($hash.Hash -notin $goodHashes) {
        Write-Host "Unknown file $f found!"
        Write-Host $hash.hash
    }
}
