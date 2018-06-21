param([string] $bambooWorkingDirectory) 

$libraryPath = "$bambooWorkingDirectory"

Write-Output "-----------------------------------------------------------------------"
Write-Output "bambooWorkingDirectory = $bambooWorkingDirectory"
Write-Output "libraryPath = $libraryPath"
Write-Output "-----------------------------------------------------------------------"

Write-Output "Navigating to solution file path"
cd $libraryPath

Write-Output "-----------------------------------------------------------------------"
Write-Output "Starting npm install"
npm install
#if npm install fails exit with failure
if ($LASTEXITCODE -ne 0) { exit 2} 
Write-Output "Completed npm install"
Write-Output "-----------------------------------------------------------------------"

#run linter
Write-Output "-----------------------------------------------------------------------"
Write-Output "Starting ng lint"
npm run ng lint
#if npm install fails exit with failure
if ($LASTEXITCODE -ne 0) { exit 2} 
Write-Output "Completed ng lint"
Write-Output "-----------------------------------------------------------------------"

#run unit tests
# Write-Output "-----------------------------------------------------------------------"
# Write-Output "Starting ng test"
# npm run ng test --singleRun true
# #if npm install fails exit with failure
# if ($LASTEXITCODE -ne 0) { exit 2} 
# Write-Output "Completed ng test"
# Write-Output "-----------------------------------------------------------------------"

#run build
Write-Output "-----------------------------------------------------------------------"
Write-Output "Starting npm run build"
npm run build
#if npm install fails exit with failure
if ($LASTEXITCODE -ne 0) { exit 2} 
Write-Output "Completed npm run build"
Write-Output "-----------------------------------------------------------------------"
