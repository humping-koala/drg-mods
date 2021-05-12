# Deep Rock Galactic mods

## 🛠 Installation

Download and place `.pak` file into `%DeepRockGalactic%\FSD\Content\Paks`

## 📚 Mods
> Click on the mod's name to download it
- 🥜 [**Glowing Ebonuts**]: Replaces the texture of ebonuts with the one from Apoca Bloom that emits green light, making them significantly more noticeable.
- 🍀 [**Lucky Day**]: Guarantees spawn of *Machine Events*, *Cargo Crates* and *Lost Loot Packs* on any map. In rare occasions the events might not actually spawn. Use [Show Events](https://github.com/ArcticEcho/DRG-Mods/blob/main/Quality%20of%20Life/HUD/README.md#show-events---v111) mod to check the spawns.
- 🏴‍☠️ [**Deep Rock Piracy**]: Unlocks all DLCs except the Supporter Upgrade. No idea how to unlock that one. **Use at your own risk!** Support the devs and buy the DLCs if you can.

## 📜 Scripts
All mods are packaged via the help of powershell scripts. Each mod directory contains [its own ps1 script](./GlowingEbonuts/GlowingEbonuts.ps1) which defines mod-specific parameters and executes [PakScript.ps1](./PakScript.ps1). The PakScript is capable of automatically determining Unreal Engine 4.25 install location as well as DRG's install location (Steam edition), where it saves the resulting pak file.

The script supports "paking" both UE4 project-based mods and hex-edited mods.

[**Glowing Ebonuts**]: https://github.com/humping-koala/drg-mods/raw/master/build/Glowing%20Ebonuts%20-%20V1.0%20_P.pak
[**Lucky Day**]: https://github.com/humping-koala/drg-mods/raw/master/build/Lucky%20Day%20-%20V1.0%20_P.pak
[**Deep Rock Piracy**]: https://github.com/humping-koala/drg-mods/raw/master/build/Deep%20Rock%20Piracy%20-%20V1.0%20_P.pak