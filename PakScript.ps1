$responseFile = "$PSScriptRoot\responseFile.txt"
$UE4Install = (Get-ItemProperty -Path "HKLM:\SOFTWARE\EpicGames\Unreal Engine\4.25").InstalledDirectory
$GameDirectory = (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 548430").InstallLocation
$ProjectDirectory = Resolve-Path $ProjectDirectory | Select -ExpandProperty Path

function Delete-Temp-Response-File {
    Remove-Item $responseFile -ErrorAction Ignore
}

function Generate-Temp-Response-File {
    $mountPoint = """../../../FSD/Content/"""

    if($IsUE4Project){
        $unrealProjectName = (Get-ChildItem "$ProjectDirectory\*.uproject").BaseName
        $contentDir = "$ProjectDirectory\Saved\Cooked\WindowsNoEditor\$unrealProjectName\Content" # Path to your cooked files
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

function Cook-Game-Content{
    $runUAT = "$UE4Install\Engine\Build\BatchFiles\RunUAT.bat"
    $uproject = Resolve-Path "$ProjectDirectory\*.uproject" | Select -ExpandProperty Path

    & $runUAT BuildCookRun -project="$uproject" -cook -nocompile -utf8output
}

### Script Execution ###

function Pak-Script{
    if($IsUE4Project){
        Cook-Game-Content
    }
    Generate-Temp-Response-File
    Generate-Mod-Pak
    Delete-Temp-Response-File
}

### Main section ###

Pak-Script