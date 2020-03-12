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
  checksum      = 'EE79C4782CD2E866E6589DA5E6D7B1036F49BCC30283B63CA8BFFAAE4D8B8B0A'
  checksumType  = 'sha256'
  checksum64    = '9C351EEC21F57CF94D945C7A92C2FAEC01DD7EF379DC3546F9E9E3F406F75925'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs