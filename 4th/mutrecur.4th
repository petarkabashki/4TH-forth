\ Taken from http://rosettacode.org 
\ 4tH version 2012, Hans Bezemer

\ Two functions are said to be mutually recursive if the first calls
\ the second, and in turn the second calls the first.
\ Write two mutually recursive functions that compute members of the
\ Hofstadter Female and Male sequences.

\ http://en.wikipedia.org/wiki/Hofstadter_sequence#Hofstadter_Female_and_Male_sequences

defer m
 
: f ( n -- n )
  dup 0= if 1+ exit then
  dup 1- recurse m - ;
 
:noname ( n -- n )
  dup 0= if exit then
  dup 1- recurse f - ;
is m

: test ( xt n -- ) cr 0 do i over execute . loop drop ;

' m defer@ 20 test  \ 0 0 1 2 2 3 4 4 5 6 6 7 7 8 9 9 10 11 11 12
' f 20 test         \ 1 1 2 2 3 3 4 5 5 6 6 7 8 8 9 9 10 11 11 12