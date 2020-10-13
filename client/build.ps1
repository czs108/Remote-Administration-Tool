New-Variable -Name 'AppName' -Value 'client' -Option Constant

New-Item -Name 'bin' -ItemType 'Directory' -Force
New-Item -Name 'build' -ItemType 'Directory' -Force
Set-Location -Path '.\build'

Start-Process -FilePath 'ml' -ArgumentList '/c', '/coff', '../src/*.asm' -NoNewWindow -Wait
Start-Process -FilePath 'link' -ArgumentList '/subsystem:console', "/out:$AppName.exe", '*.obj' -NoNewWindow -Wait

Move-Item -Path ".\$AppName.exe" -Destination '..\bin' -Force