\ 4tH library - F** FALOG ZEN - Copyright 2009,2011 J.L. Bezemer
\ You can redistribute this file and/or modify it under
\ the terms of the GNU General Public License

[UNDEFINED] f** [IF]
[UNDEFINED] fln  [IF] include lib/zenfln.4th  [THEN]
[UNDEFINED] fexp [IF] include lib/zenfexp.4th [THEN]
: f** 2dup f0= if 2drop 2drop 1 s>f exit then 2swap fln f* fexp ;
: falog 10 s>f 2swap f** ;
[THEN]
