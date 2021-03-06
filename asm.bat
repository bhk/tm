@echo off
rem
rem Generate utm & ztrim COM and SYM files.
rem UTM is the un-trimmed version of TM.
rem
a86 ztrim.8 > ASM.ERR
if ERRORLEVEL 1 GOTO Error
a86 init.8 tm.8 key.8 dos.8 srch.8 mem.8 utm.com > ASM.ERR
if ERRORLEVEL 1 GOTO Error

rem
rem Generate ZTM.COM from UTM.COM:
rem
ztrim utm.com ztm.com
GOTO Ok

:Error
echo ERROR
type ASM.ERR
exit 1

:Ok
rename ASM.ERR ASM.OUT
type ASM.OUT
