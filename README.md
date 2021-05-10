# Deep Rock Galactic mods

## 🛠 Mods
- **Glowing Ebonuts**: Replaces the texture of ebonuts with the one from Apoca Bloomthat emit green light, making them significantly more noticeable.
- **Lucky Day**: 

## 📜 Scripts
All mods are packaged via the help of powershell scripts. Each mod directory contains its own ps1 script which defines mod-specific parameters and executes [PakScript.ps1](./PakScript.ps1). The PasScript is capable of automatically determining Unreal Engine 4.25 install location as well as DRG's install location, where it saves the resulting pak file.

The script supports "paking" both UE4 project-based mods and hex-edited mods.
