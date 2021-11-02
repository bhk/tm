tm.com: STMU.COM *.8
	cp STMU.COM tm.com

STMU.COM: *.8
	@rm -f ASM.ERR ASM.OUT
	@dosbox asm.bat -exit
	@[ -f ASM.ERR ] && cat ASM.ERR && rm ASM.ERR && false || true
	@cat ASM.OUT
	@rm ASM.OUT

TM.LST: *.8
	@dosbox lst.bat -exit

clean: ; rm -f STMU.COM TMU.COM ZTRIM.COM \
            *.SYM *.ERR *.OLD *.UND *.OUT *.LST \
            */*.SYM */*.ERR */*.OLD */*.UND */*.LST

listing: TM.LST

