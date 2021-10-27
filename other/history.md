# TM History

## Archive

The oldest archived copy contained the following files:

    Archive:  tmsource.zip
      Length      Date    Time    Name
    ---------  ---------- -----   ----
          852  12-01-1993 04:43   TMACS/AGENDA
          147  03-24-1994 17:08   TMACS/ASM.BAT
           54  06-06-1995 20:26   TMACS/CHKLIST.MS
           44  08-26-1993 10:27   TMACS/CLEAN.BAT
          424  09-08-1993 19:30   TMACS/COUNTS
         6259  04-06-1994 14:56   TMACS/DOS.8
         5255  10-15-1993 23:38   TMACS/DOS2.8
          780  02-04-1992 14:00   TMACS/DOSNOTES
         1753  04-26-1992 15:46   TMACS/EDNOTES
          808  11-30-1993 13:05   TMACS/EXPAND.8
           64  11-29-1993 17:03   TMACS/GREPALL.BAT
          318  02-22-1992 06:38   TMACS/HD.8
        11702  08-27-1994 18:05   TMACS/INIT.8
          130  10-16-1993 20:36   TMACS/INSTSIZE
         5540  11-30-1993 19:03   TMACS/KEY.8
           40  01-10-1994 19:13   TMACS/MAKE.BAT
         6646  12-01-1993 01:48   TMACS/MEM.8
         4525  02-16-1992 11:48   TMACS/MEM2.8
         1604  01-10-1994 19:04   TMACS/MSGNOTES
           29  12-27-1993 13:06   TMACS/NEWBINDS
         3878  10-15-1993 21:28   TMACS/OLDDOS.8
           26  11-24-1993 23:09   TMACS/PK.BAT
          947  07-17-1991 23:18   TMACS/SCAN.8
           42  12-01-1993 04:48   TMACS/SIZE
         3407  10-30-1993 19:14   TMACS/SIZENOTE
        11571  12-20-1993 11:04   TMACS/SIZES
        10228  12-01-1993 04:48   TMACS/SRCH.8
         1622  11-24-1993 23:24   TMACS/STRINGS
            3  04-06-1994 14:49   TMACS/TEST
           49  11-09-1991 11:23   TMACS/TEST.8
        38925  04-06-1995 17:29   TMACS/TM.8
         4088  08-27-1994 18:05   TMACS/tm.com
        12625  08-27-1994 18:05   TMACS/TM.SYM
        18213  12-27-1993 13:09   TMACS/tm.txt
          222  04-08-1992 14:36   TMACS/TMP.8
          731  08-20-1991 22:00   TMACS/VIDMODE.8
          165  11-09-1991 12:00   TMACS/ZAP.8
           23  11-30-1993 10:13   TMACS/ZASM.BAT
         3848  11-30-1993 12:15   TMACS/ZTRIM.8
          405  08-27-1994 18:05   TMACS/ZTRIM.COM
         4171  08-27-1994 18:05   TMACS/ZTRIM.SYM
            0  02-05-2005 17:08   TMACS/
    ---------                     -------
       162163                     42 files

Note that TMACS/tm.com is older than the sources; in fact, building from the
TMACS/*.8 sources yields a new tm.com, one byte smaller.

While both tm.com's report their version as 1.4, tm.txt was stamped 1.3.

DOS2.8 and OLDDOS.8 were unused sources; apparently an incomplete rewrite.


## History of Executable Sizes

First draft addition of cut-buffer code added 240 bytes.

tedsrch.8 -> 572 bytes  (incl. 32 byte search string buffer)

tedkey.8 ->  193 bytes  (not incl. 400-byte dynamic buffer)

"twiddle" added 62 bytes.  (size went from 3738 to 3800)

After adding "save As" and "load":
a-----    3865 Nov 14, 1993 13:17 tm.com
a-----    3871 Nov 14, 1993 13:25 tm.com
a-----    3882 Nov 14, 1993 13:27 tm.com
a-----    3886 Nov 14, 1993 13:28 tm.com
a-----    3895 Nov 14, 1993 13:35 tm.com
a-----    3893 Nov 14, 1993 13:40 tm.com
a-----    3896 Nov 14, 1993 13:43 tm.com
a-----    3897 Nov 14, 1993 16:03 tm.com
a-----    3884 Nov 14, 1993 16:10 tm.com
a-----    3882 Nov 14, 1993 16:17 tm.com
a-----    3884 Nov 14, 1993 16:19 tm.com
a-----    3882 Nov 14, 1993 16:30 tm.com
a-----    3881 Nov 14, 1993 16:40 tm.com
a-----    3877 Nov 14, 1993 16:42 tm.com
a-----    3876 Nov 14, 1993 16:45 tm.com
a-----    3874 Nov 14, 1993 16:46 tm.com
a-----    3873 Nov 14, 1993 16:49 tm.com
a-----    3877 Nov 14, 1993 22:35 tm.com
a-----    3898 Nov 14, 1993 22:42 tm.com
a-----    3903 Nov 14, 1993 22:47 tm.com
a-----    3889 Nov 14, 1993 22:57 tm.com
a-----    3885 Nov 14, 1993 23:48 tm.com
a-----    3885 Nov 15, 1993  0:24 tm.com
a-----    3885 Nov 15, 1993  0:24 tm.com
a-----    3887 Nov 15, 1993  0:49 tm.com
a-----    3884 Nov 15, 1993  0:51 tm.com
a-----    3885 Nov 15, 1993  0:57 tm.com
a-----    3885 Nov 15, 1993  0:57 tm.com
a-----    3889 Nov 15, 1993  2:03 tm.com
a-----    3887 Nov 15, 1993  2:05 tm.com
a-----    3887 Nov 15, 1993  2:07 tm.com
a-----    3885 Nov 15, 1993  2:11 tm.com
a-----    3885 Nov 15, 1993  2:15 tm.com
Adding rigorous error handling:
a-----    3897 Mar 19, 1993 18:57 tm.com
a-----    3897 Nov 24, 1993 19:21 tm.com
Optimizing getkey:
a-----    3896 Nov 24, 1993 19:39 tm.com
a-----    3895 Nov 24, 1993 19:51 tm.com
a-----    3892 Nov 24, 1993 22:06 tm.com
a-----    3890 Nov 24, 1993 22:16 tm.com
a-----    3889 Nov 24, 1993 22:18 tm.com
a-----    3886 Nov 24, 1993 22:25 tm.com
a-----    3886 Nov 24, 1993 22:31 tm.com
a-----    3884 Nov 24, 1993 22:39 tm.com
Fixing macros:
a-----    3881 Nov 24, 1993 22:56 tm.com
a-----    3883 Nov 24, 1993 23:08 tm.com
Added auto-capitalization to disp_str:
a-----    3889 Nov 24, 1993 23:25 tm.com
a-----    3893 Nov 24, 1993 23:28 tm.com
a-----    3887 Nov 24, 1993 23:35 tm.com
a-----    3884 Nov 24, 1993 23:45 tm.com
a-----    3881 Nov 24, 1993 23:58 tm.com
a-----    3877 Nov 25, 1993  0:42 tm.com
a-----    3876 Nov 25, 1993  0:55 tm.com
a-----    3873 Nov 25, 1993  1:40 tm.com
Fixed chk_point:
a-----    3863 Nov 25, 1993 19:13 tm.com
a-----    3864 Nov 25, 1993 23:26 tm.com
a-----    3866 Nov 25, 1993 23:42 tm.com
a-----    3865 Nov 25, 1993 23:48 tm.com
a-----    3863 Nov 25, 1993 23:51 tm.com
Improving edit_name:
a-----    3860 Nov 26, 1993  0:10 tm.com
a-----    3860 Nov 26, 1993  0:13 tm.com
a-----    3859 Nov 26, 1993  0:36 tm.com
Added fname_buf:
a-----    3881 Nov 26, 1993  1:09 tm.com
a-----    3881 Nov 26, 1993  1:17 tm.com
a-----    3888 Nov 26, 1993  1:50 tm.com
a-----    3892 Nov 26, 1993  2:16 tm.com
a-----    3892 Nov 26, 1993  2:16 tm.com
a-----    3891 Nov 26, 1993  2:19 tm.com
a-----    3891 Nov 26, 1993  2:20 tm.com
a-----    3898 Nov 26, 1993  2:27 tm.com
a-----    3899 Nov 26, 1993  2:27 tm.com
a-----    3900 Nov 26, 1993  2:28 tm.com
a-----    3898 Nov 26, 1993  2:30 tm.com
a-----    3897 Nov 26, 1993  2:33 tm.com
a-----    3897 Nov 26, 1993  2:40 tm.com
a-----    3898 Nov 26, 1993  2:41 tm.com
Adding new reporting messages:
a-----    3904 Nov 26, 1993  6:14 tm.com	(-128 = filename)
a-----    3899 Nov 26, 1993  6:16 tm.com
a-----    3900 Nov 26, 1993  6:16 tm.com
a-----    3918 Nov 26, 1993  6:29 tm.com
a-----    3925 Nov 26, 1993  6:32 tm.com
a-----    3929 Nov 26, 1993  6:39 tm.com
a-----    3929 Nov 26, 1993  6:54 tm.com
a-----    3929 Nov 26, 1993  6:59 tm.com
a-----    3929 Nov 26, 1993  7:00 tm.com
a-----    3928 Nov 26, 1993  7:07 tm.com
a-----    3924 Nov 26, 1993  7:23 tm.com
a-----    3927 Nov 26, 1993  7:29 tm.com
a-----    3927 Nov 26, 1993  7:33 tm.com
a-----    3931 Nov 26, 1993  7:36 tm.com
a-----    3931 Nov 26, 1993  7:36 tm.com
a-----    3938 Nov 26, 1993  7:39 tm.com
a-----    3935 Nov 26, 1993  7:44 tm.com
a-----    3938 Nov 26, 1993  8:37 tm.com
a-----    3942 Nov 26, 1993  8:39 tm.com
a-----    3938 Nov 26, 1993  8:40 tm.com
Added "... is unsaved: Save changes, Replace" menu:
a-----    4000 Nov 26, 1993  8:47 tm.com
a-----    4000 Nov 26, 1993  8:47 tm.com
a-----    4013 Nov 26, 1993  8:51 tm.com
a-----    4018 Nov 26, 1993  8:54 tm.com
a-----    4025 Nov 26, 1993  8:57 tm.com
a-----    4013 Nov 26, 1993  9:06 tm.com
a-----    4007 Nov 26, 1993  9:19 tm.com
a-----    4006 Nov 26, 1993  9:24 tm.com
a-----    4006 Nov 28, 1993 21:24 tm.com
a-----    4006 Nov 28, 1993 22:05 tm.com
a-----    4006 Nov 28, 1993 22:05 tm.com
a-----    4006 Nov 28, 1993 22:30 tm.com
Starting undo...
a-----    4014 Nov 28, 1993 22:35 tm.com
a-----    4015 Nov 28, 1993 22:54 tm.com
a-----    4019 Nov 28, 1993 23:01 tm.com
a-----    4054 Nov 28, 1993 23:35 tm.com
a-----    4079 Nov 29, 1993  0:09 tm.com
Text optimization...
a-----    4074 Nov 29, 1993  0:19 tm.com
a-----    4067 Nov 29, 1993  0:31 tm.com
a-----    4065 Nov 29, 1993  0:37 tm.com
a-----    4062 Nov 29, 1993  0:42 tm.com
a-----    4064 Nov 29, 1993  9:28 tm.com
a-----    4064 Nov 29, 1993  9:28 tm.com
a-----    4071 Nov 29, 1993  9:45 tm.com
More undo...
a-----    4123 Nov 29, 1993 11:01 tm.com
a-----    4123 Nov 29, 1993 11:09 tm.com
a-----    4128 Nov 29, 1993 11:24 tm.com
a-----    4129 Nov 29, 1993 11:57 tm.com
a-----    4156 Nov 29, 1993 12:14 tm.com
a-----    4157 Nov 29, 1993 12:21 tm.com
Undo polishing:
a-----    4192 Nov 29, 1993 12:35 tm.com
a-----    4192 Nov 29, 1993 12:40 tm.com
a-----    4193 Nov 29, 1993 12:44 tm.com
a-----    4195 Nov 29, 1993 12:51 tm.com
a-----    4193 Nov 29, 1993 14:30 tm.com
a-----    4195 Nov 29, 1993 14:32 tm.com
a-----    4202 Nov 29, 1993 14:39 tm.com
a-----    4198 Nov 29, 1993 14:53 tm.com
a-----    4215 Nov 29, 1993 15:55 tm.com
a-----    4215 Nov 29, 1993 16:18 tm.com
a-----    4215 Nov 29, 1993 16:18 tm.com
disp_filename:
a-----    4225 Nov 29, 1993 16:35 tm.com
a-----    4225 Nov 29, 1993 16:37 tm.com
a-----    4225 Nov 29, 1993 16:37 tm.com
a-----    4227 Nov 29, 1993 17:06 tm.com
Text squeezing:
a-----    4223 Nov 29, 1993 17:09 tm.com
a-----    4223 Nov 29, 1993 17:27 tm.com
filetest:
a-----    4221 Nov 29, 1993 17:35 tm.com
a-----    4216 Nov 29, 1993 17:47 tm.com
a-----    4218 Nov 29, 1993 18:09 tm.com
a-----    4217 Nov 29, 1993 18:10 tm.com
a-----    4215 Nov 29, 1993 18:12 tm.com
a-----    4215 Nov 29, 1993 18:13 tm.com
a-----    4213 Nov 29, 1993 18:21 tm.com
a-----    4213 Nov 29, 1993 18:23 tm.com
a-----    4213 Nov 29, 1993 18:23 tm.com
getkey_dispatch (24-byte overhead over first use)
a-----    4236 Nov 29, 1993 19:00 tm.com
a-----    4239 Nov 29, 1993 19:06 tm.com
a-----    4240 Nov 29, 1993 19:13 tm.com
a-----    4242 Nov 29, 1993 19:18 tm.com
a-----    4240 Nov 29, 1993 19:19 tm.com
a-----    4237 Nov 29, 1993 19:22 tm.com
a-----    4234 Nov 29, 1993 19:31 tm.com
Remove Ctrl-BkSp: (saved 10)
a-----    4226 Nov 29, 1993 19:34 tm.com
a-----    4224 Nov 29, 1993 19:47 tm.com
a-----    4224 Nov 29, 1993 19:49 tm.com
a-----    4227 Nov 29, 1993 20:03 tm.com
a-----    4227 Nov 29, 1993 20:15 tm.com
a-----    4227 Nov 29, 1993 20:15 tm.com
New dispatch (17-byte overhead w/first use, more flexibility)
a-----    4222 Nov 29, 1993 20:30 tm.com
a-----    4220 Nov 29, 1993 20:34 tm.com
dispatch_key and dispatch_al now preserve AL (19-byte overhead w/first use)
a-----    4222 Nov 29, 1993 20:36 tm.com
a-----    4205 Nov 29, 1993 20:51 tm.com  "dispatched" seach code
a-----    4196 Nov 29, 1993 20:55 tm.com  "dispatched" menu code
a-----    4194 Nov 29, 1993 21:10 tm.com
a-----    4193 Nov 29, 1993 21:18 tm.com
a-----    4191 Nov 29, 1993 21:33 tm.com  "dispatched" more search code
a-----    4191 Nov 29, 1993 21:50 tm.com
a-----    4186 Nov 29, 1993 22:11 tm.com
a-----    4186 Nov 29, 1993 22:11 tm.com
a-----    4182 Nov 29, 1993 22:20 tm.com
a-----    4182 Nov 29, 1993 23:01 tm.com
a-----    4182 Nov 30, 1993  0:58 tm.com
mem.8:
a-----    4176 Nov 30, 1993  1:00 tm.com
a-----    4170 Nov 30, 1993  1:03 tm.com
a-----    4172 Nov 30, 1993  1:15 tm.com
a-----    4182 Nov 30, 1993  1:46 tm.com
a-----    4184 Nov 30, 1993  2:00 tm.com
a-----    4182 Nov 30, 1993  2:01 tm.com
a-----    4178 Nov 30, 1993  2:03 tm.com
a-----    4177 Nov 30, 1993  2:05 tm.com
a-----    4176 Nov 30, 1993  2:07 tm.com
a-----    4172 Nov 30, 1993  2:16 tm.com
Made Backspace not affect cut buffer: (+7)
a-----    4179 Nov 30, 1993  2:23 tm.com
Misc. squeezing (3 -> 2 byte jumps)
a-----    4175 Nov 30, 1993  2:26 tm.com
a-----    4172 Nov 30, 1993  2:29 tm.com
a-----    4170 Nov 30, 1993  2:35 tm.com
a-----    4169 Nov 30, 1993  2:43 tm.com
a-----    4170 Nov 30, 1993  2:46 tm.com
a-----    4169 Nov 30, 1993  2:50 tm.com
a-----    4168 Nov 30, 1993  2:55 tm.com
a-----    4165 Nov 30, 1993  3:26 tm.com
a-----    4162 Nov 30, 1993  3:31 tm.com
a-----    4161 Nov 30, 1993  3:32 tm.com
a-----    4160 Nov 30, 1993  3:41 tm.com
a-----    4158 Nov 30, 1993  3:50 tm.com
a-----    4158 Nov 30, 1993  3:52 tm.com
a-----    4155 Nov 30, 1993  3:55 tm.com
a-----    4153 Nov 30, 1993  4:14 tm.com
a-----    4151 Nov 30, 1993  4:18 tm.com
a-----    4150 Nov 30, 1993  4:21 tm.com
a-----    4147 Nov 30, 1993  4:25 tm.com
a-----    4143 Nov 30, 1993  4:37 tm.com
a-----    4144 Nov 30, 1993  4:38 tm.com
a-----    4143 Nov 30, 1993  4:48 tm.com
a-----    4142 Nov 30, 1993  5:34 tm.com
Reworking undo code:
a-----    4124 Nov 30, 1993  7:37 tm.com
a-----    4123 Nov 30, 1993  7:43 tm.com
a-----    4120 Nov 30, 1993  8:07 tm.com
a-----    4115 Nov 30, 1993  8:16 tm.com
a-----    4116 Nov 30, 1993  8:19 tm.com
a-----    4114 Nov 30, 1993  9:36 tm.com
a-----    4113 Nov 30, 1993 10:03 tm.com
Wrote ztrim.com; shaves 51 bytes off tm.com (stm.com: 4062)
a-----    4117 Nov 30, 1993 13:22 tm.com
Made backspace not cause an add to cut buffer:
a-----    4121 Nov 30, 1993 13:26 tm.com
Fixed mark-outside-buffer safety hole:
a-----    4129 Nov 30, 1993 13:54 tm.com
Code squeezing:
a-----    4126 Nov 30, 1993 14:23 tm.com
a-----    4122 Nov 30, 1993 14:31 tm.com
a-----    4122 Nov 30, 1993 14:31 tm.com
a-----    4121 Nov 30, 1993 14:35 tm.com
a-----    4119 Nov 30, 1993 14:40 tm.com
a-----    4116 Nov 30, 1993 15:59 tm.com
a-----    4116 Nov 30, 1993 16:02 tm.com
Removed redundant "mov di,point" in go_lft and chk_white:
a-----    4108 Nov 30, 1993 16:49 tm.com
a-----    4105 Nov 30, 1993 16:57 tm.com
a-----    4104 Nov 30, 1993 18:17 tm.com
a-----    4104 Nov 30, 1993 18:17 tm.com
a-----    4109 Nov 30, 1993 18:35 tm.com
a-----    4106 Nov 30, 1993 18:38 tm.com
a-----    4106 Nov 30, 1993 18:40 tm.com
a-----    4105 Nov 30, 1993 18:43 tm.com
a-----    4105 Nov 30, 1993 18:43 tm.com
a-----    4103 Nov 30, 1993 18:48 tm.com
a-----    4103 Nov 30, 1993 18:48 tm.com
a-----    4103 Nov 30, 1993 18:50 tm.com
Detected undo buffer full:
a-----    4117 Nov 30, 1993 20:44 tm.com
a-----    4117 Nov 30, 1993 21:35 tm.com
a-----    4117 Nov 30, 1993 21:44 tm.com
a-----    4119 Nov 30, 1993 22:45 tm.com
a-----    4132 Dec  1, 1993  1:49 tm.com
a-----    4132 Dec  1, 1993  1:53 tm.com
a-----    4131 Dec  1, 1993  1:56 tm.com
Fixed "Q" at rplc_query:
a-----    4129 Dec  1, 1993  4:41 tm.com
