@echo off
rem
rem Generate tm.com, stm.com, tm.sym and ztrim.sym
rem
a86 init.8 tm.8 key.8 dos.8 srch.8 mem.8 tm.com
a86 ztrim.8
rem Generate stm.com from tm.com:
ztrim tm.com
