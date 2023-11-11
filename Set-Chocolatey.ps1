if($env:ChocolateyInstall -ne $null -and (Test-Path "$env:ChocolateyInstall\choco.exe")) 
{
  Write-Output "Chocolatey is already installed"
}
else 
{
  # Set directory for installation - Chocolatey does not lock
  # down the directory if not the default
  $InstallDir='C:\ProgramData\chocoportable'
  $env:ChocolateyInstall="$InstallDir"

  # If your PowerShell Execution policy is restrictive, you may
  # not be able to get around that. Try setting your session to
  # Bypass.
  Set-ExecutionPolicy Bypass -Scope Process -Force;

  # All install options - offline, proxy, etc at
  # https://chocolatey.org/install
  Write-Output "Installing Chocolatey..."
  Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  Write-Output "Chocolatey Installed"
}

