# No more gold

~~It works by replacing the terrain type to which the gold vein is allowed to attach to the gold itself. This effectively prevents any gold spawning in the first place.~~

The above-mentioned statement is true when hosting a game. However, when used as a client,
it introduces a host of weird bugs, such as fake nitra & gold veins being shown
while the real nitra & gold veins become invisible. So for now this mod is not working properly.

## **Binary edits**:
- *RES_VEIN_Gold.uasset*
  - "TTP_Rock" -> "TTP_Gold"