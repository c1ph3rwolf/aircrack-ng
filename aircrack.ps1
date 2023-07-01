$location = "/home/cipher/Documents/GitHub/aircrack-ps1" 
$aircrack_JSON = Get-Content -raw "$location/aircrack.json" | ConvertFrom-Json
function getPath($title) { return "$location/$title"}

function getFile($fileList ) {
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
            return $selectedFile
        }
        else {
            Write-Host "Invalid input. Please enter a valid index number."
        }
    }
    else {
        Write-Host "No files found in the directory."
    }
    
}

$directory = $aircrack_JSON.directory.wordlist
$ascii_file = getPath($aircrack_JSON.assets.ascii)
cat $ascii_file

$fileList = Get-ChildItem -Path $disrectory -File
$filename = getFile($fileList)
Write-Host "You have Selected : $filename"