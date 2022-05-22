nasm -fwin32 nasmtest2.nasm -o nasmtest2.o 

D:\Soft\Microsoft\VisualStudio\VC\Tools\MSVC\14.31.31103\bin\Hostx64\x64\link.exe  /subsystem:console /nodefaultlib /entry:main nasmtest2.obj kernel32.lib legacy_stdio_definitions.lib  msvcrt.lib libcmt.lib libcmtd.lib  msvcrtd.lib legacy_stdio_wide_specifiers.lib UCRT.LIB  /libpath:"D:\Windows Kits\10\Lib\10.0.19041.0\um\x86" /libpath:"D:\Soft\Microsoft\VisualStudio\VC\Tools\MSVC\14.31.31103\lib\x86" /libpath:"D:\Windows Kits\10\Lib\10.0.19041.0\ucrt\x86"


pause


