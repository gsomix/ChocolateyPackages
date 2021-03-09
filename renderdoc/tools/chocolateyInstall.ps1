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
  checksum      = 'D71AE5532044C393A42D8E8B4AB22381F87767644427B4813028CEE39AA98E03'
  checksumType  = 'sha256'
  checksum64    = '7D657E32FB898523BC3D4EBF14473643E469D4ADCDD1D6276B11389EC9A4F547'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs