#$InsomniaDownloadUrl = "https://updates.insomnia.rest/downloads/windows/latest?app=com.insomnia.app&source=website"

try 
{
  Get-Package -Name Insomnia -ErrorAction SilentlyContinue | Out-Null
  Write-Output "Insomnia is already installed"
}
catch
{
  Write-Output "Installing Insomnia"
  winget install --id Insomnia.Insomnia -e --source winget
  Write-Output "Insomnia installed"
}