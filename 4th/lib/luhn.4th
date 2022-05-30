\ Taken from http://rosettacode.org 
\ 4tH version 2010, Hans Bezemer

[UNDEFINED] luhn [IF]
: luhn                                 ( a n -- f )
  0 >r chars over +                    ( R: sum )
  begin  1- over over <=
  while                                \ odd
         dup c@ [char] 0 -
         r> + >r
         1- over over <=
  while                                \ even
         dup c@ [char] 0 -
         2* 10 /mod +                  \ even digits doubled, split and summed
         r> + >r
  repeat
  drop drop r> 10 mod 0= ;
[THEN]

\ s" 49927398716"      luhn .   \ -1
\ s" 49927398717"      luhn .   \ 0
\ s" 1234567812345678" luhn .   \ 0
\ s" 1234567812345670" luhn .   \ -1
