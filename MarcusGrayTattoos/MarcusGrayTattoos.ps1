Set-Location $PSScriptRoot # Change working directory to script location

### Project-specific variables ###

$ProjectVersion = "1.0"
$ProjectName = "MarcusGray Tattoos" # Name of your mod
$ProjectDirectory = "." # Path to your Unreal Engine 4 project / Content folder. Current directory by default.
$IsUE4Project = $true # If set to $true, Unreal Automation Tool will be used to cook the project first and pak the resulting files
$SkipCooking = $false # Set to $true to prevent waste of time on cooking the project if we made binary edits only.
$LaunchGame = $true # Launches the game from steam after paking is completed
$FilesToPak = @('T_Tattoo_AllForMolly', 'T_Tattoo_NeverFeltBetter_Green',
                'T_Tattoo_Sleeve_BoscoForever_Color_V4', 'T_Tattoo_Sleeve_RockAndThunder_Color_V10', 
                'T_Tattoo_StayAlive_Color_V1', 'T_Tattoo_TribalGlyphid01',
                'TAT_AllForMolly', 'TAT_NeverFeltBetter', 'TAT_Bosco4ever', 
                'TAT_RockAndThunder', 'TAT_StayAlive', 'TAT_TribalGlyphid01') # List of files to include in mod pak

### Import and execute the pak script ###

$PakScript = "..\PakScript.ps1" # Assuming the PakScript is located in the parent directory

. $PakScript