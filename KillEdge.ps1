# This script should run by Windows Task Scheduler on any user 'workstation unlock'

# Microsoft Edge
$edgeProcess = Get-Process msedge -ErrorAction SilentlyContinue
if ($edgeProcess) {
    # If found, kill the Edge process
    $edgeProcess | Stop-Process -Force
}

# Microsoft Store
$storeProcess = Get-Process WinStore.App -ErrorAction SilentlyContinue
if ($storeProcess) {
    $storeProcess | Stop-Process -Force
}
