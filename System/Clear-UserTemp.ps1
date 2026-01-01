# Clearing the current user's temporary files
# Does not require administrator rights

Write-Host "=== Clearing user's temporary files ===" -ForegroundColor Cyan

$tempFolders = @(
    "$env:TEMP\*"
)

$totalSize = 0
$deletedFiles = 0

foreach ($folder in $tempFolders) {
    if (Test-Path $folder) {
        $folderPath = Split-Path $folder -Parent
        Write-Host "Clearing: $folderPath" -ForegroundColor Yellow
        
        $files = Get-ChildItem -Path $folder -Recurse -ErrorAction SilentlyContinue
        
        foreach ($file in $files) {
            try {
                Remove-Item $file.FullName -Recurse -Force -ErrorAction SilentlyContinue
                $deletedFiles++
                $totalSize += $file.Length
            } catch {

            }
        }
    }
}

$sizeInMB = [math]::Round($totalSize / 1MB, 2)

Write-Host "`Result:" -ForegroundColor Green
Write-Host "Deleted files: $deletedFiles" -ForegroundColor Green
Write-Host "Seats have been vacated: $sizeInMB MB" -ForegroundColor Green

Write-Host "`n=== Done! ===" -ForegroundColor Cyan