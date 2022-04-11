![](assets/icon.ico)

# chocolatey-superorca
> SuperOrca from "Pantaray Research Ltd." is a direct replacement to the "Orca" MSI Editor from Microsoft. SuperOrca may be used to examine and modify an MSI database in order to distribute a new MSI package. When QSetup delivers an MSI Editor, SuperOrca delivers an MSI Database Editor and let you discover the depth of MSI Database.

## Installation

[![Chocolatey](https://img.shields.io/chocolatey/v/superorca.svg)](https://chocolatey.org/packages/superorca) https://chocolatey.org/packages/superorca

    > choco install superorca

## Developing

Open [superorca.nuspec](superorca.nuspec) with the editor of your choice, to edit the package defintion.

The actual (un)installation is done in *.ps1*-files:

- [tools/chocolateyinstall.ps1](tools/chocolateyinstall.ps1)
- [tools/chocolateyuninstall.ps1](tools/chocolateyuininstall.ps1)

### Publishing

    > choco pack
    > choco push

## Contributions

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END --> 

## License

chocolatey-superorca  is published under [WTFNMFPLv3](https://github.com/dittodhole/WTFNMFPLv3).
