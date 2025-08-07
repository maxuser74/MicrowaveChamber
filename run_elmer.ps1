# PowerShell script to run ElmerSolver with proper environment
param(
    [Parameter(Position=0)]
    [string]$SifFile
)

Write-Host "Setting Elmer environment..." -ForegroundColor Green
$env:ELMERSOLVER_STARTINFO = "C:\Program Files\Elmer 9.0-Release\share\elmersolver"

Write-Host "Environment set: $env:ELMERSOLVER_STARTINFO" -ForegroundColor Yellow
Write-Host ""

if ($SifFile) {
    Write-Host "Running ElmerSolver with: $SifFile" -ForegroundColor Cyan
    & ElmerSolver.exe $SifFile
} else {
    Write-Host "Usage: .\run_elmer.ps1 [sif_file]" -ForegroundColor White
    Write-Host "Example: .\run_elmer.ps1 case.sif" -ForegroundColor White
    Write-Host ""
    Write-Host "Running ElmerSolver without input file..." -ForegroundColor Cyan
    & ElmerSolver.exe
}

Write-Host ""
Write-Host "ElmerSolver execution completed." -ForegroundColor Green
