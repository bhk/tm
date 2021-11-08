tm.com: ZTM.COM *.8
	cp ZTM.COM tm.com

ZTM.COM: *.8
	@rm -f ASM.ERR ASM.OUT
	@dosbox asm.bat -exit &> /dev/null
	@[ -f ASM.ERR ] && cat ASM.ERR && rm ASM.ERR && false || true
	@cat ASM.OUT
	@rm ASM.OUT

TM.LST: *.8
	@dosbox lst.bat -exit

clean: ; rm -f ZTM.COM UTM.COM ZTRIM.COM \
            *.SYM *.ERR *.OLD *.UND *.OUT *.LST \
            */*.SYM */*.ERR */*.OLD */*.UND */*.LST

listing: TM.LST

