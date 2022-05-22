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
  checksum      = '86471448f16834c8333d7b5d16f03e17988a80a460675f345d2f8d17a7caa9c9'
  checksumType  = 'sha256'
  checksum64    = 'be01d27889d66476af3b6b66bf85f42c3ed1205afb4d55956af4afeddadf98dd'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
