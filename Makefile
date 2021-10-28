tm.com: STMU.COM *.8
	cp STMU.COM tm.com

STMU.COM: *.8
	@rm -f ASM.ERR ASM.OUT
	@dosbox asm.bat -exit
	@[ -f ASM.ERR ] && cat ASM.ERR && rm ASM.ERR && false || true
	@cat ASM.OUT
	@rm ASM.OUT

clean: ; rm -f STMU.COM TMU.COM ZTRIM.COM \
            *.SYM *.ERR *.OLD *.UND *.OUT \
            */*.SYM */*.ERR */*.OLD */*.UND
