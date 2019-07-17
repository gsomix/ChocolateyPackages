$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = "https://github.com/getzola/zola/releases/download/v$($env:ChocolateyPackageVersion)/zola-v$($env:ChocolateyPackageVersion)-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '71563AEFDC28D6094891D9D2860F8DFE6E4685581B4BF7216342B84E07648A07'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs