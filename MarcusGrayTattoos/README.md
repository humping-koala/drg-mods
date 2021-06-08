# MarcusGray Tattoos

It works by replacing the texture of tattoos posters with transparent images by Marcus Gray. The dimensions of some tattoos are either `512x512`px or `512x1024`px. The dimensions of replaced textures are either `1024x1024`px or `1024x2048`px. To optimize file size however, max texture size was set to `512`px. For better positioning, corresponding `TAT_*` files were hex edited to adjust position, scaling and stretching for the new textures. The titling method of all textures was set to `Clamp` in the UE4 editor.

## **Texture replacements**:
- T_Tattoo_AllForMolly
- T_Tattoo_NeverFeltBetter_Green
- T_Tattoo_Sleeve_BoscoForever_Color_V4
- T_Tattoo_Sleeve_RockAndThunder_Color_V10
- T_Tattoo_StayAlive_Color_V1
- T_Tattoo_TribalGlyphid01

## **Binary edits**:
- *TAT_AllForMolly.uexp*
  - 0.269047 -> 0.35 (scale)
  - 0.828571 -> 1.0 (strech)
  - 3.960468 -> 4.5 (x-location)
- *TAT_NeverFeltBetter.uexp*
  - 0.278573 -> 0.35
  - 0.780136 -> 1.0
  - 4.707872 -> 5 (x-location)
- *TAT_Bosco4ever.uexp*
  - 0.354762 -> 0.35
  - 1.406684 -> 1.0
  - 4.302353 -> 4.5 (x-location)
- *TAT_RockAndThunder.uexp*
  - 0.411905 -> 0.25
  - 1.392908 -> 1.4
  - 5.238043 -> 4.5 (x-location)
  - 3.908024 -> 4.1 (y-location)
- *TAT_StayAlive.uexp*
  - 0.259526 -> 0.25
  - 0.780136 -> 1.4
  - 4.509127 -> 5.0
- *TAT_TribalGlyphid01.uexp*
  - 0.278573 -> 0.25
  - 1.626867 -> 1.4
  - 4.700014 -> 4.5 (x-location)
  - 3.756388 -> 4.1 (y-location)