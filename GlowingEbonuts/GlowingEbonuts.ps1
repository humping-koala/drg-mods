### Project-specific variables ###

$ProjectVersion = "1.0"
$ProjectName = "GlowingEbonuts" # Name of your Unreal Engine 4 project
$ProjectDirectory = "D:\Dev\Unreal Mods\DRG\GlowingEbonuts" # Path to your Unreal Engine 4 project
$IsUE4Project = $true # If set to $true, Unreal Automation Tool will be used to cook the project first and pak the resulting files
$FilesToPak = @('SM_Ebonut_shell_01', 'SM_Ebonut_shell_02', 'SM_Ebonut_shell_03',`
                'SM_Ebonut_ShellLilBroken_01', 'SM_Ebonut_ShellLilBroken_02', 'SM_Ebonut_ShellLilBroken_03',`
                'SM_Ebonut_shellBroken_01','SM_Ebonut_shellBroken_02','SM_Ebonut_shellBroken_03'`
                ) # List of files to include in mod pak


### Import and execute the pak script ###

$PakScript = "..\_PakScript.ps1" # Assuming the PakScript is located in the parent directory

. $PakScript # Assuming the PakScript is located in the parent directory
Pak-Script