@ECHO OFF

rc ver.rc
cvtres /MACHINE:x64 /OUT:ver.o ver.res
cl.exe /W0 /D_USRDLL /D_WINDLL implantDll_EDR_bypass.cpp /MT /link /DLL /OUT:implant_freshcopy.dll /SUBSYSTEM:CONSOLE /MACHINE:x64 ver.o
echo Cleaning up...
del *.obj *.lib *.exp
