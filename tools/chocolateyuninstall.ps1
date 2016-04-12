﻿$packageName = 'superorca'
$packageSearch = 'superorca'
$installerType = 'exe'
$silentArgs = '/SILENT'

try {
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch*" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$installerType" `
                                                 -SilentArgs "$($_.PSChildName) $silentArgs" `
                                                 -File $_.UninstallString }
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}