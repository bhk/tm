@echo off
rem type size
a86 init.8 tm.8 key.8 dos.8 srch.8 mem.8 tm.com
a86 ztrim.8
ztrim tm.com
rem   Ztrim creates "stm.com" from tm.com.
