try 
{
    Get-Package -Name Git -ErrorAction SilentlyContinue | Out-Null
    Write-Output "Git is already installed"
}
catch
{
    Write-Output "Git is not installed, downloading..."
    Invoke-WebRequest -Uri https://git-scm.com/download/win 

    Write-Output "Installing Git"
    winget install --id Git.Git -e --source winget
    Write-Output "Git installed"
}
