# Bootstrapping Fedora Silverblue

## Concepts

The host is used either to run OS updates, or install flatpaks. Everything else is used with
my arch build.

That said...

## Overlays

```bash
$ rpm-ostree status
State: idle
Deployments:
● fedora:fedora/36/x86_64/silverblue
                  Version: 36.20220918.0 (2022-09-18T00:48:16Z)
               BaseCommit: 4d5b637cb5c050f8769b87c40834f9ce5db22025ec05baafa54eab3e2703c8f6
             GPGSignature: Valid signature by 53DED2CB922D8B8D9E63FD18999F7CBF38AB71F4
          LayeredPackages: code distrobox logiops
```
