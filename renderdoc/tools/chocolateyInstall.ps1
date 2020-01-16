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
  checksum      = '98DA38275E0A6201485D4486D6E25CC70A892565954C84EF3EE60AF56D07F511'
  checksumType  = 'sha256'
  checksum64    = '67A0B9850D2949AABF51D6A93FF3D85153E337A1F77824959595FB5B2615C12F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs