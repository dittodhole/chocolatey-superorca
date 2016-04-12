$packageName = 'superorca'
$installerType = 'exe'
$silentArgs = '/SILENT /NORESTART /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS'
$url = 'http://www.pantaray.com/SuperOrcaSetup.exe'
$checksum = 'c2751e72bd5a8593f4eb4ebd000ace791db0a9c7'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"