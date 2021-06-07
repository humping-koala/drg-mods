Set-Location $PSScriptRoot # Change working directory to script location

### Project-specific variables ###

$ProjectVersion = "1.0"
$ProjectName = "Deep Rock Piracy" # Name of your mod.
$ProjectDirectory = "." # Path to your Unreal Engine 4 project / Content folder. Current directory by default.
$IsUE4Project = $false # If set to $true, Unreal Automation Tool will be used to cook the project first and pak the resulting files
$LaunchGame = $true # Launches the game from steam after paking is completed
$FilesToPak = @('DLC_DarkFuture',   'DLC_DawnOfTheDread_DLC04', 'DLC_MegaCorp',
                'DLC_Roughneck',    'DLC_Streamers'            <#,'DLC_SupporterUpgrade'#>) # List of files to include in mod pak

### Import and execute the pak script ###

$PakScript = "..\PakScript.ps1" # Assuming the PakScript is located in the parent directory

. $PakScript
