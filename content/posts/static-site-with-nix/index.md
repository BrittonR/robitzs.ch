---
title: "WIP NixOS on a Raspberry Pi 4b"
date: "2023-09-12"
updated: "2023-09-12"
taxonomies:
  tags: ["nixos", "nix", "raspberrypi"]
---

## Install NixOS
1. Download latest arm64 image from [Hyrda](https://hydra.nixos.org/job/nixos/trunk-combined/nixos.sd_image.aarch64-linux)
2. Using [zstd](https://github.com/facebook/zstd), run `unstd -d nixos-sd-23.11.zst`
3. Flash sd card or ssd with NixOS (I'm using [Balena Etcher](https://etcher.balena.io))
4. Plug in the Pi and boot!
5. To run this headless, attach a keyboard and run `passwd` and then type in your password, press enter, then retype your password and press enter again. You can then ssh into the Pi using the username `nixos` and it's IP Address.
