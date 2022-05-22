nasm -fwin64 nasmtest-win32.nasm -o nasmtest-win32.o 

D:\Soft\Microsoft\VisualStudio\VC\Tools\MSVC\14.31.31103\bin\Hostx64\x64\link.exe nasmtest-win32.o  /subsystem:windows /nodefaultlib /entry:WinMain  kernel32.lib user32.lib  /libpath:"D:\Windows Kits\10\Lib\10.0.19041.0\um\x64" /LARGEADDRESSAWARE:NO


pause


rem path_to_link\link.exe test64.obj /subsystem:windows /entry:WinMain  /libpath:path_to_libs /nodefaultlib kernel32.lib user32.lib /largeaddressaware:no