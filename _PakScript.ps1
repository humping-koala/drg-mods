$responseFile = "$PSScriptRoot\responseFile.txt"
$UE4Install = (Get-ItemProperty -Path "HKLM:\SOFTWARE\EpicGames\Unreal Engine\4.25").InstalledDirectory
$GameDirectory = (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 548430").InstallLocation

function Delete-Temp-Response-File {
     Remove-Item $responseFile -ErrorAction Ignore
}

function Generate-Temp-Response-File {
    $mountPoint = """../../../FSD/Content/"""

    if($IsUE4Project){
        $contentDir = "$ProjectDirectory\Saved\Cooked\WindowsNoEditor\$ProjectName\Content" # Path to your cooked files
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
    $pakPath = "$GameDirectory\FSD\Content\Paks\$pakName"
    $unrealPak = "$UE4Install\Engine\Binaries\Win64\UnrealPak.exe"

    echo "Generating mod pak: $pakPath`n"

    # Create Pak
    & $unrealPak "$pakPath" -Create="$responseFile"

    # List Pak
    & $unrealPak "$pakPath" -List
}

function Cook-Game-Content{
    $runUAT = "$UE4Install\Engine\Build\BatchFiles\RunUAT.bat"

    & $runUAT BuildCookRun -project="$ProjectDirectory/$ProjectName.uproject" -cook -nocompile -utf8output
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