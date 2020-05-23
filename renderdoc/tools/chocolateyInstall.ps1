$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = "https://renderdoc.org/stable/$($env:ChocolateyPackageVersion)/RenderDoc_$($env:ChocolateyPackageVersion)_32.msi"
$url64    = "https://renderdoc.org/stable/$($env:ChocolateyPackageVersion)/RenderDoc_$($env:ChocolateyPackageVersion)_64.msi"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'RenderDoc'
  checksum      = 'D2A78AEB97D4FC3A1D69B36A51CA37043069A52CF9EDCDED5B0B4C213BBE6DEB'
  checksumType  = 'sha256'
  checksum64    = '80E6BEB28A0BD41D078381249446238FF1994B6D6F52B25956F1F2F15DED5C63'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs