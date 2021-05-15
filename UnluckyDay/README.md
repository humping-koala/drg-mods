# Unlucky Day

For the purposes of customization, this mod is separated into several parts:
- **Lucky Day For Critters**: Disables spawn of *Huuli Hoarders* and *Golden Lootbugs*.
- **Lucky Day For Events**: Disables spawn of *Machine Events*.
- **Lucky Day For Treasures**: Disables spawn of *Cargo Crates* and *Lost Loot Packs*.

It works by replacing certain values in respective GameData files to 0.0 which makes spawn chance 0%.

## **Hex edits**:
- *GD_SpecialEventSettings.uexp*
  - 0.15 -> 0.0
  - 0.25 -> 0.0
  - 0.35 -> 0.0
- *GD_TreasureSettings.uexp*
  - 0.1 -> 0.0
  - 0.16666 -> 0.0
  - 0.33333 -> 0.0
- *GD_EncounterSettings*
  - 0.15 -> 0.0
