[CmdletBinding()]
param (
  [Parameter(Manditory=$true)]
  [string]
  $FullName,
  [Parameter(Manditory)]
  [string]
  $EmailAddress
)

./Set-Git.ps1 -FullName $FullName -EmailAddress $EmailAddress -ErrorAction Stop
./Set-Chocolatey.ps1 -ErrorAction Stop