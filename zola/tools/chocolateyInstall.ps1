$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = "https://github.com/getzola/zola/releases/download/v$($env:ChocolateyPackageVersion)/zola-v$($env:ChocolateyPackageVersion)-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'EA07D70D62F573CF51F8F5BA89C9FAB0CFF15F2CBDD5E39D897F6EE3D9855897'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs