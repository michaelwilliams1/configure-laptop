# Readme

## Prerequisites

Avanade has locked down Windows so that one cannot run an elevated prompt. Therefore, this script will install all tools with CurrentUser scope. To run these script, run the following command from a PowerShell prompt first.

```PowerShell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```

After that completes, you should be able to run with (the parameters are to configure Git):

```PowerShell
./Set-Tools.ps1 -FirstName Joe -LastName Biden -Email joe.biden@whitehouse.gov
```


