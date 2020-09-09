$users = (Get-Content C:\path\to\users.txt) #Format is one name per line "First Last"
$password = ConvertTo-SecureString -AsPlainText "password1!" -Force

foreach ($u in $users) {
    $firstName, $lastName = $u -split "\s"
    $SAMName = $firstName[0] + "." + $lastName
    New-ADUser -Name $u -GivenName $firstName -Surname $lastName -SamAccountName $SAMName -AccountPassword $password -Enabled $True -ChangePasswordAtLogon $False
}
