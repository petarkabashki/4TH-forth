10 rem Dragon Island
11 rem Original by Walt Hutchinson
12 rem From Homebrew Computer Club Newsletter sep/oct 1977
13 rem Adapted by Daniel Quadros fev/2017
21 print "You are alone and dragons eat at 8!"
23 h = 5
24 m = 0
25 d = rnd(10)+1
27 gosub 57
28 input "Into which cave do you throw your spear? ";t
30 if (d = t)  then 51
31 if ((d-t)*(t-d) > -2) then print "S*N*O*R*T!"
32 print "You missed! ";
33 print "The dragon ";
34 s = rnd(4)
35 if (s = 0) then 41
36 d = d + s
37 if (d < 1) then d = d + 10
38 if (d > 10) then d = d - 10
39 print "crawls!"
40 goto 42
41 print "lurks."
42 a = ask("Dare you fetch your spear? (y or n) ")
44 if peek(a, 0) = ord("y") then 48
45 if peek(a, 0) # ord("n") then 42
46 gosub 57
47 goto 33
48 if (d = t) then 55
49 print "You made it!"
50 goto 27
51 print "A*A*R*R*R*G*G*H*H!   Y*O*U G*O*T M*E*!"
53 print "ALL HAIL!!!"
54 end
55 print "G*O*T*C*H*A!   M*U*N*C*H! M*U*N*C*H! M*U*N*C*H!"
56 end
57 print
58 print "It is ";h;
59 if (m=0) then 62
60 print ":";m
61 goto 64
62 print " o'clock"
63 if (h=8) then 55
64 m = m + 15
65 if m # 60 then 68
66 h = h + 1
67 m = 0
68 return
