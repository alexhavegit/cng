nasm -fwin32 nasmtest.nasm -o nasmtest.o 

D:\Soft\Microsoft\VisualStudio\VC\Tools\MSVC\14.31.31103\bin\Hostx64\x64\link.exe nasmtest.o  /subsystem:console /nodefaultlib /entry:main  kernel32.lib  /libpath:"D:\Windows Kits\10\Lib\10.0.19041.0\um\x86"


pause


rem path_to_link\link.exe test64.obj /subsystem:windows /entry:WinMain  /libpath:path_to_libs /nodefaultlib kernel32.lib user32.lib /largeaddressaware:no