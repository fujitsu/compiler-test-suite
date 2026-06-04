subroutine s1
logical,parameter::t=.true.
logical(1):: b1=t,b2=t,b3=t
logical(1):: c1(2)=t,c2(2)=t,c3(2)=t
b1=merge(1,0,b2).lt.merge(1,0,b3)
if (b1)print *,101,b1
b1=b2.neqv.b3
if (b1)print *,102,b1
c1=merge(1,0,c2).lt.merge(1,0,c3)
if (c1(1))print *,201,c1
c1=c2.neqv.c3
if (c1(2))print *,202,c1
if (merge(1,0,b2)>=merge(1,0,b3))goto 2
print *,301
2 if (b2.neqv.b3)goto 1
goto 11
1 print *,303
11 continue
if (b2.neqv.b3 .or. b2.neqv.b3 .or. b2.neqv.b3)goto 3
goto 13
3 print *,304
13 continue
if (b2.neqv.b3 .and. b2.neqv.b3 .and. b2.neqv.b3)goto 4
goto 14
4 print *,305
14 continue
if (b2.neqv.b3 .or. b2.neqv.b3 .and. b2.neqv.b3)goto 5
goto 15
5 print *,306
15 continue
if (b2.neqv.b3 .and. b2.neqv.b3 .or. b2.neqv.b3)goto 6
goto 16
6 print *,307
16 continue
22 if (merge(1,0,b2)< merge(1,0,b3))goto 21
goto 31
21 print *,1303
31 continue
if (merge(1,0,b2)< merge(1,0,b3) .or. b2.neqv.b3 .or. merge(1,0,b2)< merge(1,0,b3))goto 23
goto 33
23 print *,1304
33 continue
if (merge(1,0,b2)<merge(1,0,b3) .and. merge(1,0,b2)<merge(1,0,b3) .and. merge(1,0,b2)<merge(1,0,b3))goto 24
goto 34
24 print *,1305
34 continue
if (merge(1,0,b2)<merge(1,0,b3) .or. merge(1,0,b2)<merge(1,0,b3) .and. merge(1,0,b2)<merge(1,0,b3))goto 25
goto 35
25 print *,1306
35 continue
if (merge(1,0,b2)<merge(1,0,b3) .and. merge(1,0,b2)<merge(1,0,b3) .or. merge(1,0,b2)<merge(1,0,b3))goto 26
goto 36
26 print *,1307
36 continue
end
call s1
print *,'pass'
end
