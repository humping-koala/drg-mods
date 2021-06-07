### Variable Validation ###

function Validate-Variable($VAR_NAME, $IS_ARRAY = $false) {
    $VAR_VALUE = (Get-Variable -Name $VAR_NAME -ErrorAction SilentlyContinue).Value
    if ([string]::IsNullOrWhiteSpace($VAR_VALUE)) {
        Write-Error "Required variable: '$VAR_NAME' was not defined."
        exit
    }
    elseif ($IS_ARRAY -and (-not ($VAR_VALUE -is [array]))) {
        Write-Error "Variable: 'FilesToPak' must be of array type."
        exit
    }
    else {
        Write-Output "$VAR_NAME`: $VAR_VALUE"
    }
}

Validate-Variable ProjectName
Validate-Variable ProjectVersion
Validate-Variable ProjectDirectory
Validate-Variable IsUE4Project
Validate-Variable FilesToPak $true

### Core definitions and functions ###

$responseFile = "$PSScriptRoot\.ResponseFile.txt"
$UE4Install = (Get-ItemProperty -Path "HKLM:\SOFTWARE\EpicGames\Unreal Engine\4.25").InstalledDirectory
$GameDirectory = (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 548430").InstallLocation
$ProjectDirectory = Resolve-Path $ProjectDirectory | Select -ExpandProperty Path

function Delete-Temp-Response-File {
    Remove-Item $responseFile -ErrorAction Ignore
}

function Generate-Temp-Response-File {
    $mountPoint = """../../../FSD/Content/"""
    $extraContent = "$ProjectDirectory\ExtraContent"

    if ($IsUE4Project) {
        $unrealProjectName = (Get-ChildItem "$ProjectDirectory\*.uproject").BaseName
        $contentDir = "$ProjectDirectory\Saved\Cooked\WindowsNoEditor\$unrealProjectName\Content" # Path to your cooked files
        
        # Copy the extra files to the cooked directory
        Get-ChildItem $extraContent | Copy-Item -Destination $contentDir -Recurse -Force
    } else {
        $contentDir = "$ProjectDirectory\Content";
    }
    Delete-Temp-Response-File
    foreach ($file in $FilesToPak) {
        $pathToPak = """$contentDir\*$file.*"""
        echo "$pathToPak $mountPoint" >> $responseFile
    }
}

function Generate-Mod-Pak {
    $pakName = "$ProjectName - V$ProjectVersion _P.pak"
    $unrealPak = "$UE4Install\Engine\Binaries\Win64\UnrealPak.exe"
    $buildPathPath = "$PSScriptRoot\build\$pakName"
    $gamePakPath = "$GameDirectory\FSD\Content\Paks\$pakName"

    echo "Generating mod pak: $buildPathPath`n"

    # Create Pak
    & $unrealPak "$buildPathPath" -Create="$responseFile"

    # List Pak
    & $unrealPak "$buildPathPath" -List

    # Copy to game's directory
    
    echo "Copying mod pak to game directory: $gamePakPath`n"
    Copy-Item "$buildPathPath" -Destination "$gamePakPath"
}

function Cook-Game-Content {
    $runUAT = "$UE4Install\Engine\Build\BatchFiles\RunUAT.bat"
    $uproject = Resolve-Path "$ProjectDirectory\*.uproject" | Select -ExpandProperty Path

    & $runUAT BuildCookRun -project="$uproject" -cook -nocompile -utf8output
}

### Main section ###

if ($IsUE4Project) {
    if($SkipCooking){
        echo "Skipping cooking of the unreal project"
    } else {
        Cook-Game-Content
    }
}
Generate-Temp-Response-File
Generate-Mod-Pak
Delete-Temp-Response-File

if($LaunchGame){
    explorer.exe "steam://rungameid/548430"
}
exit