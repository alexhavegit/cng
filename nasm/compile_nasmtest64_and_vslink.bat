nasm -fwin64 nasmtest64.nasm -o nasmtest64.o

D:\Soft\Microsoft\VisualStudio\VC\Tools\MSVC\14.31.31103\bin\Hostx64\x64\link.exe nasmtest64.o  /subsystem:console /nodefaultlib /entry:main /largeaddressaware:no  kernel32.lib  /libpath:"D:\Windows Kits\10\Lib\10.0.19041.0\um\x64"

nasmtest64.exe

@rem pause


@rem path_to_link\link.exe test64.obj /subsystem:windows /entry:WinMain  /libpath:path_to_libs /nodefaultlib kernel32.lib user32.lib /largeaddressaware:no