@echo off
REM Batch file to run ElmerSolver with proper environment
REM Sets ELMERSOLVER_STARTINFO and runs ElmerSolver

echo Setting Elmer environment...
set ELMERSOLVER_STARTINFO=C:\Program Files\Elmer 9.0-Release\share\elmersolver

echo Environment set: %ELMERSOLVER_STARTINFO%
echo.

if "%1"=="" (
    echo Usage: run_elmer.bat [sif_file]
    echo Example: run_elmer.bat case.sif
    echo.
    echo Running ElmerSolver without input file...
    ElmerSolver.exe
) else (
    echo Running ElmerSolver with: %1
    ElmerSolver.exe %1
)

echo.
echo ElmerSolver execution completed.
