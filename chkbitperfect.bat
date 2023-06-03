@ECHO OFF

REM // build the ROM
call build %1

REM  // run fc
echo -------------------------------------------------------------
IF EXIST quackshot_built.bin ( fc /b quackshot_built.bin quackshot_original.bin
) ELSE echo quackshot_built.bin does not exist, probably due to an assembly error

REM // clean up after us
IF EXIST quackshot.lst del quackshot.lst
IF EXIST quackshot_built.bin del quackshot_built.bin
IF EXIST errors.txt del errors.txt

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
