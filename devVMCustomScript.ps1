Invoke-Command -ScriptBlock {
    powershell -ExecutionPolicy Unrestricted -File dataDisk.ps1
    powershell -ExecutionPolicy Unrestricted -File DevTools.ps1
}
