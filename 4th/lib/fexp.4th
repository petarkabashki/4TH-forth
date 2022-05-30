\ ====================================================
\ Copyright (C) 2004 by Sun Microsystems, Inc. All rights reserved.

\ Permission to use, copy, modify, and distribute this
\ software is freely granted, provided that this notice
\ is preserved.
\ ====================================================

[UNDEFINED] fexp [IF]
[UNDEFINED] fpow [IF] include lib/fpow.4th    [THEN]
[UNDEFINED] e    [IF] include lib/fpconst.4th [THEN]

\ We use a special Remez algorithm on [0,0.34658] to generate
\ a polynomial of degree 5 to approximate r. The maximum error
\ of this polynomial approximation is bounded by 2**-59.

float array _P0 s" 1.4049475905635937968456495337222574071423436415"
s>float _P0 f!                                                 \ e^0.34

float array _P1 s" 1.66666666666666019037e-01"  s>float _P1 f! \ 0x3FC55555; 0x5555553E
float array _P2 s" -2.77777777770155933842e-03" s>float _P2 f! \ 0xBF66C16C; 0x16BEBD93
float array _P3 s" 6.61375632143793436117e-05"  s>float _P3 f! \ 0x3F11566A; 0xAF25DE2C
float array _P4 s" -1.65339022054652515390e-06" s>float _P4 f! \ 0xBEBBBD41; 0xC5D26BF1
float array _P5 s" 4.13813679705723846039e-08"  s>float _P5 f! \ 0x3E663769; 0x72BEA4D0

\    Approximation of exp(r) by a special rational function on
\    the interval [0,0.34658]:

\                            r * R1(r)
\          exp(r) = 1 + r + ----------- (for better accuracy)
\                            2 - R1(r)

\          t  = r * r
\          R1 = r - t*(P1+t*(P2+t*(P3+t*(P4+t*P5))))

: (R1)                                 ( f -- f')
  fdup fdup f*
  _P5 f@ fover f*
  _P4 f@ f+ fover f*
  _P3 f@ f+ fover f*
  _P2 f@ f+ fover f*
  _P1 f@ f+ f* f-
;
                                       \ reduce fraction to < 0.34
: (reduce)                             ( fi ff -- fi' ff')
  17 s>f 50 s>f f/ fswap               \ set up constant 0.34
  begin fover fover f< while fover f- frot _P0 f@ f* frot frot repeat fnip
;

: fexp                                 ( f1 -- f2)
  fdup f0< >r fabs fdup f>s e dup fpow fswap s>f f-
  (reduce) fdup (R1) fover fover f* fswap 2 s>f fswap f- f/ f+ 1 s>f f+
  f* r> if 1 s>f fswap f/ then         \ take care of negative exponent
;

[DEFINED] 4TH# [IF]
  hide _P0
  hide _P1
  hide _P2
  hide _P3
  hide _P4
  hide _P5
  hide (R1)
  hide (reduce)
[THEN]
[THEN]
