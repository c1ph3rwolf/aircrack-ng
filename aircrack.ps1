$location = "/home/cipher/Documents/GitHub/aircrack-ps1" 
$aircrack_JSON = Get-Content -raw "$location/aircrack.json" | ConvertFrom-Json
function getPath($title) { return "$location/$title"}

function getFile($fileList) {
  
    if ($fileList.Count -gt 0) {
        Write-Host "List of Files : "
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



$ascii_file = getPath($aircrack_JSON.assets.ascii)
cat $ascii_file


$wordList_directory = $aircrack_JSON.directory.wordlist
$handshakeList_directory = $aircrack_JSON.directory.handshake

# 1. Select Wordlist from /usr/share/wordlists
Write-Host "[ 1 ] Select WorldLists from : $wordList_directory"
$wordList = Get-ChildItem -Path $wordList_directory -File
$dictFile = getFile($wordList)
Write-Host "You have Selected (WordList): $dictFile"

# 2. Select Handshake from /home/cipher/hs
Write-Host "[ 2 ] Select WorldLists from : $handshakeList_directory"
$handshakeList = Get-ChildItem -Path $handshakeList_directory -File
$hsFile = getFile($handshakeList)
Write-Host "You have Selected (Handshake): $hsFile"


