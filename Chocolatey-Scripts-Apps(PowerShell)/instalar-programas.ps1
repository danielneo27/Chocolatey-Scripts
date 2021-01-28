if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
$programas = "0"

while ($programas -ne "s" -and $programas -ne "n") {
    $programas = Read-Host "Instalar programas no sistema? (s/n) "
    if ($programas -eq "s") {
        foreach ($line in Get-Content $PSSCriptRoot\apps.txt) {
            if ($line.contains(":")) {
                continue
            }
            choco feature enable -n allowGlobalConfirmation

            cinst $line    
               
        }
    }
}
choco feature disable -n allowGlobalConfirmation 