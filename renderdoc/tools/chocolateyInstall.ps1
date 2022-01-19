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
  checksum      = '70fde73851e35935ea31f21131e4016e65c6aa30d88918e25c9406243b808762'
  checksumType  = 'sha256'
  checksum64    = 'f4eee2e128016b8fdff01da3dc4ae379702014da96896e85d4dfd38863b4bc96'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
