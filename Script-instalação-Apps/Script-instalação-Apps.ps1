<#	
	.NOTAS
	===========================================================================
	 Criado em:   	02/12/2020
	 Criado por:   	Daniel Neo
     Versão:        1.2.0
     Atualizado:    30/01/2021
	 Nome do arquivo:  Script-install-apps
	===========================================================================
	.Utilização
		Remova o "#" do inicio de cada linha de programa que deseja instalar, se uma linha possuir o segundo "#" não é necessario retirar.

        Os comandos de instalação padrão do chocolatey não foram modificados, o chocolatey apenas deixou escondido uma forma de abreaviatura dos mesmos, experimente e verá como funciona bem!!!
#>
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

cls
$host.UI.RawUI.ForegroundColor = "DarkGreen"
$host.UI.RawUI.BackgroundColor = "Black"
$pshost = get-host
$pswindow = $pshost.ui.rawui
$newsize = $pswindow.buffersize
$newsize.height = 3000
$newsize.width = 120
$pswindow.buffersize = $newsize
$newsize = $pswindow.windowsize
$newsize.height = 38
$newsize.width = 95
$pswindow.windowsize = $newsize
$host.UI.RawUI.WindowTitle = "CHOCOLATEY | $([char]0x00A9) Daniel Petito | Instalação-Apps"
cls

Write " _______           _______  _______  _______  _        _______ _________ _______          ";
Write "(  ____ \|\     /|(  ___  )(  ____ \(  ___  )( \      (  ___  )\__   __/(  ____ \|\     /|";
Write "| (    \/| )   ( || (   ) || (    \/| (   ) || (      | (   ) |   ) (   | (    \/( \   / )";
Write "| |      | (___) || |   | || |      | |   | || |      | (___) |   | |   | (__     \ (_) / ";
Write "| |      |  ___  || |   | || |      | |   | || |      |  ___  |   | |   |  __)     \   /  ";
Write "| |      | (   ) || |   | || |      | |   | || |      | (   ) |   | |   | (         ) (   ";
Write "| (____/\| )   ( || (___) || (____/\| (___) || (____/\| )   ( |   | |   | (____/\   | |   ";
Write "(_______/|/     \|(_______)(_______/(_______)(_______/|/     \|   )_(   (_______/   \_/   ";
Write "                                                                                          ";
#Pausa por 5 segundos
timeout /t 5

Write-Host Instalando apps...
Write-Host Configurando chocolatey
choco feature enable -n allowGlobalConfirmation


##Instalação de programas##

Write-Host "Instalando Pacotes do sistema..." -F Red

#cinst winrar
#cinst googlechrome
#cinst firefox
#cinst vlc
#cinst anydesk.install
#cinst unchecky
#cinst ccleaner

Write-Host "Pacotes do sistema Instalados - Pronto..." -F Yellow

##Opcional##

Write-Host "Instalando Pacotes Opcionais..." -F Red

#cinst bleachbit.install #Limpador de cache, excluir cookies, limpar histórico da Internet.
#cinst teamviewer
#cinst teamviewer9
#cinst cdburnerxp
#cinst microsoft-edge
#cinst firefoxesr #Extended Support Release (ESR)
#cinst adobereader
#cinst foxitreader
#cinst k-litecodecpackmega
#cinst 7zip.install
#cinst dropbox
#cinst spotify
#cinst flashplayeractivex
#cinst flashplayerppapi
#cinst whatsapp
#cinst skype
#cinst telegram.install
#cinst qbittorrent
#cinst 4k-video-downloader
#cinst defraggler
#cinst crystaldiskinfo.install
#cinst speccy
#cinst veracrypt
#cinst songr
#cinst hwmonitor
#cinst ntlite-free
#cinst cpu-z.install
#cinst as-ssd
#cinst rufus.install
#cinst malwarebytes
#cinst formatfactory
#cinst tor-browser
#cinst llftool      #HDD Low Level Format Tool
#cinst vcredist-all #Microsoft Visual C++ Runtime - Todas as versões
#cinst dotnet    #Microsoft .NET 5.0.0
#cinst dotnet3.5 #Microsoft .NET Framework 3.5
#cinst dotnetfx #Microsoft .NET Framework 4.8

Write-Host "Pacotes Opcionais Instalados - Pronto..." -F Yellow

##Portable##

#cinst bleachbit.portable #Limpador de cache, excluir cookies, limpar histórico da Internet.
#cinst ssd-z.portable
#cinst rufus.portable
#cinst adwcleaner
#cinst crystaldiskinfo
#cinst teamviewer.portable
#cinst nirlauncher
#cinst telegram.portable
#cinst cpu-z.portable
#cinst gpu-z
#cinst sublimetext3.portable
#cinst netscan.portable    #SoftPerfect Network Scanner (Portable)
#cinst dismplusplus        #Dism++
#cinst vscode
#cinst aida64-extreme.portable

##Internet-Speed##

#cinst speedtest
#cinst speedtest-chrome


##Ferramentas##

#cinst lightshot.install  #selecione qualquer área de sua área de trabalho e faça sua captura de tela com 2 cliques de botão e envie para nuvem para compartilhar a mesma.
#cinst greenshot #ferramenta de Captura de Telas(Prints)
#cinst gimp      #programa de edição e criação de imagens
#cinst lockhunter #ferramenta gratuita para excluir arquivos bloqueados por algo que você não conhece.
#cinst nmap       #Scanner de Rede Gratuito com recusos avançados
#cinst ultrasearch #pesquisa arquivos e pastas em unidades NTFS locais e fornece os resultados em apenas alguns segundos.
#cinst godmode
#cinst bginfo
#cinst choco-cleaner
#cinst choco-update-notifier

##Drivers##
#cinst intel-graphics-driver  #Driver a partir da 6ª geração de processadores Intel
#cinst GeForce Experience #Otimizador de game e atualizador de Drivers Nvidia
#cinst geforce-game-ready-driver  #GEFORCE GAME READY DRIVER (Recomendado para Gamers)
#cinst nvidia-display-driver #NVidia Display Driver(Recomendado para usuários comuns)
#cinst rapr      #Driver Store Explorer [RAPR]
#cinst snappy-driver-installer #Snappy Driver Installer (Portable)

##DEV##

#cinst lf #Gerenciador de arquivos para terminal, funções listar,ler e abrir arquivos,pdfs/imagens,etc(USANDO AS SETAS DO TECLADO COMO NAVEGAÇÂO PADRÃO)Cross-platform (Linux, OSX, BSDs, Windows).
#cinst hashtab #Verificador de hash em arquivos
#cinst vscode.install #Visual Studio Code
#cinst sublimetext3
#cinst microsoft-windows-terminal
#cinst fluent-terminal
#cinst pswindowsupdate :PSWindowsUpdate (PowerShell Module)
#cinst python
#cinst git.install --not-silent #Instalação interativa
#cinst gitextensions
#cinst github-desktop

##Gaming-Softwares##

#cinst steam --not-silent #Instalação interativa
#cinst epicgameslauncher --not-silent #Instalação interativa
#cinst uplay --not-silent #Instalação interativa
#cinst origin --not-silent #Instalação interativa
#cinst msiafterburner
#cinst gamesavemanager
#cinst cheatengine
#cinst furmark
#cinst superposition-benchmark

##Wallpaper##
#cinst reddit-wallpaper-changer

#Mostra a lista de pacotes de software instalados pelo chocolatey.
clist -l

choco feature disable -n allowGlobalConfirmation


#faz uma pausa na quantidade de tempo Em "SEGUNDOS" escolha desta forma 60500 segundos = 1 minuto e 5 segundos, altere o valor do "Sleep" para funcionar.

Write-Host "Todos os Pacotes Instalados, O script fechará automaticamente em 10 Segundos!" -F Magenta

[System.Threading.Thread]::Sleep(10000)
