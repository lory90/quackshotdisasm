@echo off

asm68k /k /p /o ae- quackshot.asm, quackshot_built.bin >errors.txt, , quackshot.lst
fixheadr.exe quackshot_built.bin