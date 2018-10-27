get-help read-host

"ismail"
$a= Read-Host  
write-host "my name is $a"
Read-Host -Prompt "provide input"
$a = Read-Host -Prompt "First Name"
$b = Read-Host -Prompt "Last Name"
write-host "Your Full Name is $a$b"
Read-Host -Prompt "Your Full Name is"
[int]$a = Read-Host -Prompt "Provide first no"
[int]$b = Read-Host -Prompt "Provide second no"
Write-Host your addition is $($a+$b)


$c=$a+$b
Write-Host your addition is $c
$array = @(1,2,3,4,"test",5)
$array[1]
$array | Get-Member
$array[-2] 
$array + =3
$array.RemoveAt[0,3]
$array
Get-Member -InputObject $array
$hash =@{Firstname="ismail";Lastname="shaikh"}
$hash.Value
Get-Help

Get-Service | Stop-Process
get-help Stop-Process -ShowWindow
get-process | get-member
Get-Service | Where-Object {$_.name -contains"*bits*"}
Get-process | Where-Object {$_.Id -gt 40}
Get-ChildItem -Directory -Path C:\Windows
Get-Item C:\Windows\iis.log | Get-Member | Out-File -FilePath  file1.txt
Get-childItem C:\Windows\ | Where{$_.psiscontainer -ne $true}
Get-ChildItem | select length,LastAccessTime | Get-Process
Get-ChildItem C:\Windows\| select mode,@{n="id";e={$_.length}}
Get-ChildItem C:\Windows\| select mode,@{n="id";e={$_.length}} | Get-Process
Get-Service | Get-Member
get-help Get-Service -ShowWindow
Get-Service |select displayname | Out-File -FilePath c:\windows\test.txt
Get-Service -DisplayName (get-content -Path C:\Windows\test.txt)
Get-service | Get-Member
Get-Service -DisplayName (get-content -Path C:\Windows\test.txt)