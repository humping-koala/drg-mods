# Lucky Day

For the purposes of customization, this mod is separated into several parts:
- **Lucky Day For Critters**: Guarantees spawn of *Huuli Hoarders* and *Golden Lootbugs*.
- **Lucky Day For Events**: Guarantees spawn of *Machine Events*.
- **Lucky Day For Treasures**: Guarantees spawn of *Cargo Crates* and *Lost Loot Packs*.

It works by replacing certain values in respective GameData files to 1.0 which makes spawn chance 100%.

## **Hex edits**:
- *GD_SpecialEventSettings.uexp*
  - 0.15 -> 1.0
  - 0.25 -> 1.0
  - 0.35 -> 1.0
- *GD_TreasureSettings.uexp*
  - 0.1 -> 1.0
  - 0.16666 -> 1.0
  - 0.33333 -> 1.0
- *GD_EncounterSettings*
  - 0.15 -> 1.0
