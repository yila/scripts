echo off
Get-ChildItem . | ForEach-Object {
    $sonarPropertiesFile = $_.FullName + "\sonar-project.properties"
    if(($_ -is [System.IO.DirectoryInfo]) -and (Test-Path -Path $sonarPropertiesFile)){
        sonar-scanner -D sonar.projectBaseDir=$_ -D project.settings=$sonarPropertiesFile        
    }
}

echo "Done..."