Set-Location $PSScriptRoot # Change working directory to script location

### Project-specific variables ###

$ProjectVersion = "1.0"
$ProjectName = "MarcusGray Posters" # Name of your Unreal Engine 4 project
$ProjectDirectory = "." # Path to your Unreal Engine 4 project / Content folder. Current directory by default.
$IsUE4Project = $true # If set to $true, Unreal Automation Tool will be used to cook the project first and pak the resulting files
$FilesToPak = @('PropogandaPoster01', 'PropogandaPoster02', 'PropogandaPoster03') # List of files to include in mod pak


### Import and execute the pak script ###

$PakScript = "..\PakScript.ps1" # Assuming the PakScript is located in the parent directory

. $PakScript