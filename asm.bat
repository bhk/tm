@echo off
rem
rem Generate tmu & ztrim COM and SYM files.
rem TMU is the un-trimmed version of TM.
rem
a86 init.8 tm.8 key.8 dos.8 srch.8 mem.8 tmu.com
a86 ztrim.8
rem
rem Generate STMU.COM from TMU.COM:
rem
ztrim tmu.com
