D:\Soft\nasm-2.15.05-win64\nasm.exe -fwin64 nasmtest64-w32gui.nasm -o nasmtest64-w32gui.obj

D:\Soft\Golink\GoLink.exe /entry WinMain kernel32.dll user32.dll gdi32.dll nasmtest64-w32gui.obj


@rem D:\Soft\Microsoft\VisualStudio\VC\Tools\MSVC\14.31.31103\bin\Hostx64\x64\link.exe nasmtest64-w32gui.o   /subsystem:windows /nodefaultlib /entry:WinMain  kernel32.lib user32.lib gdi32.lib  /libpath:"D:\Windows Kits\10\Lib\10.0.19041.0\um\x64" /nologo /largeaddressaware:no

nasmtest64-w32gui.exe


@rem pause


@rem path_to_link\link.exe test64.obj /subsystem:windows /entry:WinMain  /libpath:path_to_libs /nodefaultlib kernel32.lib user32.lib /largeaddressaware:no