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
  checksum      = '71C24D98952619E942DFEBECEF3E84BA4B80B0B731098073B00591FFC070E142'
  checksumType  = 'sha256'
  checksum64    = '56693DC7B342CFA7A81660C03BA913258CD0AF155013B91E8AE5790AEB92F089'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs