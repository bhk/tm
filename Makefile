tm.com: *.8
	dosbox asm.bat -exit
	mv STMU.COM tm.com
	rm -f TMU.COM ZTRIM.COM *.SYM

clean: ; rm -f STMU.COM TMU.COM ZTRIM.COM *.SYM *.ERR
