### Project-specific variables ###

$ProjectVersion = "1.0"
$ProjectName = "Lucky Day" # Name of your mod.
$ProjectDirectory = "." # Path to your Unreal Engine 4 project / Content folder. Current directory by default.
$IsUE4Project = $false # If set to $true, Unreal Automation Tool will be used to cook the project first and pak the resulting files
$FilesToPak = @('GD_SpecialEventSettings', 'GD_TreasureSettings') # List of files to include in mod pak

### Import and execute the pak script ###

$PakScript = "..\_PakScript.ps1" # Assuming the PakScript is located in the parent directory

. $PakScript # Assuming the PakScript is located in the parent directory
Pak-Script