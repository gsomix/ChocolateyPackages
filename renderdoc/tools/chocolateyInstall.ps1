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
  checksum      = 'BB15EEC555A64E121027B6582B5BC72B3BE7A9DAD3EB0A23B04A1BAE83308BC3'
  checksumType  = 'sha256'
  checksum64    = 'D37CBB9FFA17CA0FBBC6463BE6A31257C086B99D952F0FD0FF3435A035EC8013'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs