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
  checksum      = 'b2168b7bcb0354332d639f63700afeb13c4ae269b806a81952c8886dd950ad02'
  checksumType  = 'sha256'
  checksum64    = 'ad10d5e7fdbcc18a36f67c74c0aab8d8e39a5a463c13b3e2eecd0fa3473bba4c'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
