# Chocolatey-Scripts
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-dark.svg)](https://www.gnu.org/licenses/gpl-3.0)

#### Script Chocolatey para instalação de softwares e execução de outras operações do gerenciador de pacotes Chocolatey. 
#### **_O script já possui permissão automática para executar scripts via PowerShell, sendo necessário ao executar confirmar com "S" e pressionar enter na primeira vez de uso, só siga a última etapa de requisitos se nãoconseguir executar o script._** 

### Características\Features:

- Novo recurso implementado, chamado "allowGlobalConfirmation" tornando o argumento “-y” desnecessário para instalar cada pacote, otimizando ainda mais o script.
- Modo de instalação interativa adicionado em alguns pacotes, tornando possível a instalação em outra unidade de disco, para utilizar siga este exemplo "nomedopacote --not-silent", lembrando que este recurso torna somente a instalação de cada pacote manual.
- Comandos abreviados implementados, para instalar "cinst", para desinstalar "cuninst", tornando o script mais otimizado e organizado.

### Captura-de-tela: 
![Script-Chocolatey-Apps](https://github.com/danielneo27/Chocolatey-Scripts/blob/danielneo27/-PowerShell-Scripts/Captura%20de%20tela/Chocolatey-script-Apps.png "Script-Chocolatey-Apps")
 
 ### A Utilização do script possuí alguns requisitos: 

- Chocolatey.
- Windows 10 ou 8.
- PowerShell.
- Se não rodar o script de primeira, talvez seu Windows não tenha permissão para execução de scripts, para habilitar execute este comando no powershell *"Set-ExecutionPolicy Bypass -Scope Process"* pressione enter e confirme com "S".
 
1. Para baixar e instalar o Chocolatey experimente a ferramenta que eu mesmo criei clicando aqui ao lado:
<a class="github-button" href="https://github.com/danielneo27/Instalador-Chocolatey/releases/tag/v1.0.0-final" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-size="large" aria-label="Download ntkme/github-buttons on GitHub">Baixar agora</a>

2. Pós instalado o Chocolatey, altere os valores do script antes de executar, botão direito do mause sobre o script e clique em *Editar*.

3. Para escolher quais programas instalar entre no site do <a class="github-button" href="https://chocolatey.org/packages" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-size="large" aria-label="Download ntkme/github-buttons on GitHub">Chocolatey Packages</a> digite o nome do programa desejado copie apenas o nome e cole no script.

4. Agora para rodar o script, botão direito do mause sobre o script "*Executar com o PowerShell*", o mesmo iniciará e vai começar a instalar todos os softwares configurados.
    
###### OBS: Está ferramenta foi criada com objetivo de compartilhar o conhecimento, gostou do script, então lembre-se a melhor forma de agradecer é compartilhando o meu trabalho diretamente da fonte, copie o link oficial deste post e compartilhe com o próximo. Quer mais projetos como este seja um apoiador do projeto, não é obrigatório fazer uma doação, mas se puder e quiser me ajudar aqui está o link de apoiador <a class="github-button" href="https://mpago.la/2jwdK6U" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-size="large" aria-label="Download ntkme/github-buttons on GitHub">Seja um apoiador</a>, meu contato telegram para mais informações <a class="github-button" href="https://t.me/danielneo27" data-color-scheme="no-preference: dark; light: dark; dark: dark;" data-size="large" aria-label="Download ntkme/github-buttons on GitHub">Meu Telegram</a>.
