\ i got bored and learned forth.  here ya go.  :)

\ begin forth ValuHack by cHao
\ 4tH version by the Beez
\ cHao gotta lot to learn ;-)
\ to run with 4tH: 4th cx valuhack.4th

4 constant #hacks
3 constant #choices 

create hacks
," Warez/Serialz/Crackz"
  ," What program did you want? "
  ," wants an illegal copy of "
  ," ."
," Hotmail/Yahoo Account Access"
  ," What account did you want access to? "
  ," wants to access "
  ," @hotmail.com"
," AOL Screen Name Access"
  ," What account did you want access to? "
  ," wants to access "
  ," @aol.com"
," Web Defacement/Hijacking"
  ," What web site did you want to take over? "
  ," wants to take over "
  ," ."

: readln refill drop ;
: response 0 parse -trailing ;
: prompt type readln response pad place ;
: 'hack #hacks * cells hacks + ;
: .hack @c count type ;
: +.hack cell+ dup .hack ;
: .user pad count type space ;

: .choices
  4 0 do
    i dup 1+ 0 .r [char] . emit space 'hack .hack cr
  loop
;

: choose ( -- n )
  begin
    .choices
    cr ." Your choice: " readln
    bl parse-word number
    1- dup #choices invert and
  while
    drop cr
    ." How difficult can this be? There are 4 choices.." cr
    ." with numbers beside them!" cr
    ." Type the number next to the one you want." cr cr
  repeat
;

: hack
  cr 'hack +.hack readln .user +.hack
  response type +.hack drop cr
;

: valuhack
  cr 
  s" And what is your name, young grasshopper? " prompt cr cr
  ." ValuHack 1.0" cr
  ." ------------" cr
  choose hack
  ." ... but that ain't hacking." cr cr
  ." Maybe " .user ." should try a different newsgroup." cr cr
  ." FOAD SkriptKiddiot"  cr cr ." ForthLART end." cr
;

valuhack
\ end


