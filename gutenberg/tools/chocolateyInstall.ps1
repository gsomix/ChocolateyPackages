$ErrorActionPreference = 'Stop'

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = "https://github.com/Keats/gutenberg/releases/download/v$($env:ChocolateyPackageVersion)/gutenberg-v$($env:ChocolateyPackageVersion)-x86_64-pc-windows-msvc.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = 'C18A220CF05AB0AFD1ED22CAA2D2BB6AB7B443E181DE5497524B8C443E57F3A6'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs