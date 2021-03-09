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
  checksum      = 'D084C3DA7DDF5F0813713B2A2ABD3FE9B9D6A4A9117A397A9C0B2C92963B5D76'
  checksumType  = 'sha256'
  checksum64    = '964B23E14E8F395734539DFDE32FFC67025DCB66C0C2BC377295EDC97A14C57C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs