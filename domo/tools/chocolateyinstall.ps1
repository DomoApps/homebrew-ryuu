$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/DomoApps/homebrew-ryuu/releases/download/v4.4.7/domo.exe.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'Domo*'

  checksum      = 'dfd8f62b36d59d2488eb8aedde554573167c4d89307c79ea99c1d1e57545b7c8'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
