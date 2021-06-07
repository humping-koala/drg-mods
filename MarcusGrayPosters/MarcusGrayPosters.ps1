Set-Location $PSScriptRoot # Change working directory to script location

### Project-specific variables ###

$ProjectVersion = "1.1"
$ProjectName = "MarcusGray Posters" # Name of your Unreal Engine 4 project
$ProjectDirectory = "." # Path to your Unreal Engine 4 project / Content folder. Current directory by default.
$IsUE4Project = $true # If set to $true, Unreal Automation Tool will be used to cook the project first and pak the resulting files
$LaunchGame = $true # Launches the game from steam after paking is completed
$FilesToPak = @('PropogandaPoster01', 'PropogandaPoster02', 'PropogandaPoster03', 
                'OpenAlpha_Poster_300ppi_Without_Text_3508x4961px') # List of files to include in mod pak


### Import and execute the pak script ###

$PakScript = "..\PakScript.ps1" # Assuming the PakScript is located in the parent directory

. $PakScript