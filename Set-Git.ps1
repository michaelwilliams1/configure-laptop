[CmdletBinding()]
param (
  [Parameter(Manditory=$true)]
  [string]
  $FullName,
  [Parameter(Manditory)]
  [string]
  $EmailAddress
)

try 
{
  Get-Package -Name Git -ErrorAction SilentlyContinue | Out-Null
  Write-Output "Git is already installed"
}
catch
{
  Write-Output "Installing Git"
  winget install --id Git.Git -e --source winget
  Write-Output "Git installed"

  git config --global user.name "$FullName"
  git config --global user.email "$EmailAddress"
  git config --global core.autocrlf true
  
  Write-Output "Git configured"
}
