$ErrorActionPreference = 'Stop';

$gutenbergExe = Get-ChildItem $(Split-Path -Parent $MyInvocation.MyCommand.Definition) | Where-Object -Property Name -Match "gutenberg.exe"

if (-Not($gutenbergExe)) 
{
    Write-Error -Message "gutenberg executable file is not found, please contact the maintainer of the package" -Category ResourceUnavailable
}

Write-Host "Found gutenberg executable in $($gutenbergExe.FullName)"
Write-Host "Uninstalling..."
Remove-Item $gutenbergExe.FullName