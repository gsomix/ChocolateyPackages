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
  checksum      = '18256D7121378D4E6654BB5B209265497CC5BBCB05A0353F0F02CEEFF63B8E60'
  checksumType  = 'sha256'
  checksum64    = 'AA14260E74F35FADE30B9740AFC90F98679B3E0961170837659A68305E96D1A3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs