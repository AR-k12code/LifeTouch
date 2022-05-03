if (-Not(Test-Path ".\students.csv")) {
    Write-Host "Error: You need to go download the Clever Students file and have it in this folder."
    exit 1
} else {
    $students = Import-Csv .\students.csv
}

#We need to exclude students with duplicate names because we can't predict that kind of crap.
$students | Group-Object -Property First_name,Last_name | Where-Object { $PSitem.Count -eq 1 } | Select-Object -ExpandProperty Group | ForEach-Object {

    $photoname = "$($PSItem.First_name)$($PSItem.Last_name).jpg"

    if (Test-Path ".\images\$photoname") {
        Rename-Item -Path ".\images\$photoname" -NewName "$($PSitem.Student_id).jpg" -Force
    }

}