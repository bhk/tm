tm.com: *.8
	dosbox asm.bat -exit
	rm TM.COM
	mv STM.COM tm.com
	rm -f *.SYM ZTRIM.COM

clean: ; rm -f *.SYM *.ERR STM.COM ZTRIM.COM
