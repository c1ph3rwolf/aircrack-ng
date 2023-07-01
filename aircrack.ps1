$directory = "/usr/share/wordlists/"
$fileList = Get-ChildItem -Path $directory -File

if ($fileList.Count -gt 0) {
    Write-Host "List of Files:"
    $index = 0
    foreach ($file in $fileList) {
        $index++
        Write-Host "$index. $($file.Name)"
    }

    $userInput = Read-Host "Enter the index number of the file:"
    $userInput = $userInput.Trim()

    if ($userInput -match '^\d+$' -and $userInput -ge 1 -and $userInput -le $fileList.Count) {
        $selectedFile = $fileList[$userInput - 1]
        Write-Host "Selected file: $($selectedFile.Name)"
    }
    else {
        Write-Host "Invalid input. Please enter a valid index number."
    }
}
else {
    Write-Host "No files found in the directory."
}
