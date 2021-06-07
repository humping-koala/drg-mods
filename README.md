# ⛏ Deep Rock Galactic mods ⛏

A collection of mods of mine, some of which were deemed too radical for mainstream circles and consequently expelled. This repository contains both ready to use pak builds as well as source files that were used to build them. Each mod directory contains a README file which specifies technical details about the mod and what changes were made. The [build](./build) directory contains *pak* builds for all these mods. 

## 🛠 Installation

Download and place `.pak` file into `%DeepRockGalactic%\FSD\Content\Paks`, where `%DeepRockGalactic%` is the root folder where the game is installed. 

## 📚 Mods
> Click on the mod's name to download it
- 🥜 **[Glowing Ebonuts]**: Replaces the material of ebonut shells with the one from Ebonut sockets, which emits biege-purple light, making them significantly more noticeable. If you want the older version that was emitting white-green light, you can still get it here: [Glowing Ebonuts - V1.0].
- 🍀 **Lucky Day**: Guarantees spawn of certain game elements. For customization puropses, the mod is separated into several parts, so you can enable only the elements that you would like.
  - **[Lucky Day For Critters]**: Guarantees spawn of *Huuli Hoarders* and *Golden Lootbugs*.
  - **[Lucky Day For Events]**: Guarantees spawn of *Machine Events*.
  - **[Lucky Day For Treasures]**: Guarantees spawn of *Cargo Crates* and *Lost Loot Packs*.
- ☔ **Unlucky Day**: Counterpart to the Lucky Day mod. If both Lucky & Unlucky Day mods are installed for the same game element, the Unlucky variant will be used.
  - **[Unlucky Day For Critters]**: Disables spawn of *Huuli Hoarders* and *Golden Lootbugs*.
  - **[Unlucky Day For Events]**: Disables spawn of *Machine Events*.
  - **[Unlucky Day For Treasures]**: Disables spawn of *Cargo Crates* and *Lost Loot Packs*.
- 🏴‍☠️ **[Deep Rock Piracy]**: Unlocks all DLCs except the Supporter Upgrade. No idea how to unlock that one. **Use at your own risk!** Support the devs and buy the DLCs if you can.
- ♦️ **[Nitra Infestation]**: Spawns large number of nitra veins all over the map.
- 🤝🏼 **[Power of Friendship]**: Removes friendly fire from the game. No need to worry about greenbeards nuking the hell out of you anymore. Damage-over-time afflictions such as fire will still deal damage if inflicted by a fellow dwarf. 
- 🖼 **[MarcusGray Posters]**: Replaces the texture of propaganda posters found in Memorial Hall and across the Space Rig with the posters made by *Marcus Gray*. [Preview 1](https://cdn.discordapp.com/attachments/712637678881079369/843439867048624148/20210516134613_1.jpg). [Preview 2](https://cdn.discordapp.com/attachments/712637678881079369/846713570515484702/20210525143408_1.jpg).
- 💪 **[MarcusGray Tattoos]**: Replaces the textures of tattoos on arms that come with the Roughneck armours with the gals from the posters made by *Marcus Gray*. [Preview](https://cdn.discordapp.com/attachments/712637678881079369/851468201027305482/right.jpg).

## 📜 Scripts
All mods are packaged via the help of powershell scripts. Each mod directory contains [its own ps1 script](./GlowingEbonuts/GlowingEbonuts.ps1) which defines mod-specific parameters and executes [PakScript.ps1](./PakScript.ps1).
The PakScript is capable of automatically determining Unreal Engine 4.25 install location as well as DRG's install location (Steam edition), where it saves the resulting pak file.
The script supports paking both UE4 project-based mods and binary-edited mods. In case of UE4 project-based mods, it will cook the game content first, before packaging it. In case of mixed projects, where want to have cooked content with binary-edited files, we use the same structure as UE4 based mods, with any binary-edited files put under [ExtraContent](./MarcusGrayTattoos/ExtraContent).

[Show Events]: https://github.com/ArcticEcho/DRG-Mods/tree/c91790e4bf2d70006ef3d911ab97fac67fd5f232/Quality%20of%20Life/HUD#show-events---v111
[Glowing Ebonuts]: https://github.com/humping-koala/drg-mods/raw/master/build/Glowing%20Ebonuts%20-%20V1.1%20_P.pak
[Glowing Ebonuts - V1.0]: https://github.com/humping-koala/drg-mods/raw/master/build/Glowing%20Ebonuts%20-%20V1.0%20_P.pak
[Lucky Day For Critters]: https://github.com/humping-koala/drg-mods/raw/master/build/Lucky%20Day%20For%20Critters%20-%20V1.0%20_P.pak
[Lucky Day For Events]: https://github.com/humping-koala/drg-mods/raw/master/build/Lucky%20Day%20For%20Events%20-%20V1.0%20_P.pak
[Lucky Day For Treasures]: https://github.com/humping-koala/drg-mods/raw/master/build/Lucky%20Day%20For%20Treasures%20-%20V1.0%20_P.pak
[Unlucky Day For Critters]: https://github.com/humping-koala/drg-mods/raw/master/build/Unlucky%20Day%20For%20Critters%20-%20V1.0%20_P.pak
[Unlucky Day For Events]: https://github.com/humping-koala/drg-mods/raw/master/build/Unlucky%20Day%20For%20Events%20-%20V1.0%20_P.pak
[Unlucky Day For Treasures]: https://github.com/humping-koala/drg-mods/raw/master/build/Unlucky%20Day%20For%20Treasures%20-%20V1.0%20_P.pak
[Deep Rock Piracy]: https://github.com/humping-koala/drg-mods/raw/master/build/Deep%20Rock%20Piracy%20-%20V1.0%20_P.pak
[Nitra Infestation]: https://github.com/humping-koala/drg-mods/raw/master/build/Nitra%20Infestation%20-%20V1.0%20_P.pak
[No more gold]: https://github.com/humping-koala/drg-mods/raw/master/build/No%20more%20gold%20-%20V1.0%20_P.pak
[Power of Friendship]: https://github.com/humping-koala/drg-mods/raw/master/build/Power%20of%20Friendship%20-%20V1.0%20_P.pak
[MarcusGray Posters]: https://github.com/humping-koala/drg-mods/raw/master/build/MarcusGray%20Posters%20-%20V1.1%20_P.pak
[MarcusGray Tattoos]: https://github.com/humping-koala/drg-mods/raw/master/build/MarcusGray%20Tattoos%20-%20V1.0%20_P.pak