### Clapper Vala Test

This is a test repository for [Clapper](https://github.com/Rafostar/clapper) GI bindings.
It contains a simple [Vala](https://vala.dev) application that integrates `ClapperGtkVideo` widget as part of the window for testing purposes.

#### Flatpak

To make installation easier, this repo includes an action that will build Flatpak package out of its contents and latest `Clapper` code every 24h and/or on new commit.
Builds can be downloaded in [GitHub Actions](https://github.com/Rafostar/clapper-vala-test/actions) tab.

Unzip and install downloaded package with:
```sh
flatpak install com.github.rafostar.ClapperValaTest.flatpak
```
Run from command line:
```sh
flatpak run com.github.rafostar.ClapperValaTest
```
