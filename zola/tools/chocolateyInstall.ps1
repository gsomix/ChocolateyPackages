$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = "https://github.com/getzola/zola/releases/download/v$($env:ChocolateyPackageVersion)/zola-v$($env:ChocolateyPackageVersion)-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '89c504756a2c34f8540adf7eee83a8f1b61527bc55daa7e42481a0c727cae88f'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
