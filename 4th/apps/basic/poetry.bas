10 PRINT "POETRY"
20 PRINT "CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 PRINT:PRINT:PRINT : GOTO 240
100 GOTO 100+I
101 PRINT "MIDNIGHT DREARY";:GOTO 210
102 PRINT "FIERY EYES";:GOTO 210
103 PRINT "BIRD OR FIEND";:GOTO 210
104 PRINT "THING OF EVIL";:GOTO 210
105 PRINT "PROPHET";:GOTO 210
110 GOTO 110+I
111 PRINT "BEGUILING ME";:U=2:GOTO 210
112 PRINT "THRILLED ME";:GOTO 210
113 PRINT "STILL SITTING....";:GOTO 220
114 PRINT "NEVER FLITTING";:U=2:GOTO 210
115 PRINT "BURNED";:GOTO 210
120 GOTO 120+I
121 PRINT "AND MY SOUL";:GOTO 210
122 PRINT "DARKNESS THERE";:GOTO 210
123 PRINT "SHALL BE LIFTED";:GOTO 210
124 PRINT "QUOTH THE RAVEN";:GOTO 210
125 IF U=0 THEN GOTO 210
126 PRINT "SIGN OF PARTING";:GOTO 210
130 GOTO 130+I
131 PRINT "NOTHING MORE";:GOTO 210
132 PRINT "YET AGAIN";:GOTO 210
133 PRINT "SLOWLY CREEPING";:GOTO 210
134 PRINT "...EVERMORE";:GOTO 210
135 PRINT "NEVERMORE";
210 IF U=0 THEN GOTO 220
211 IF RND(100)+1>99 THEN END
213 IF RND(100)>19 THEN GOTO 220
215 PRINT ",";:U=2
220 IF RND(100)>65 THEN GOTO 240
230 PRINT " ";
235 U=U+1:GOTO 250
240 PRINT : U=0
250 I=((10*RND(100))/200)+1
320 J=J+1 : K=K+1
330 IF U>0 THEN GOTO 340
335 IF J%2#0 THEN GOTO 340
337 PRINT "     ";
340 IF J=5 THEN GOTO 350
345 GOTO 90+(10*J)
350 J=0 : PRINT : IF K>20 THEN GOTO 370
360 GOTO 250
370 PRINT : U=0 : K=0 : GOTO 110
