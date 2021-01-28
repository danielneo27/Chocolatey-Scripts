<#

    Script feito por Daniel Neo
    Criado 22.01.2021
    Versão  0.2 Beta
    Atualizado 24.01.2021

#>
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
foreach ($line in Get-Content $PSSCriptRoot\apps.txt) {
            if ($line.contains(":")) {
                continue
            }
            choco feature enable -n allowGlobalConfirmation

            cinst $line    
               
        }
choco feature disable -n allowGlobalConfirmation 
