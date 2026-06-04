subroutine s1
logical,parameter::t=.true.
logical(2):: b1=t,b2=t,b3=t
logical(2):: c1(2)=t,c2(2)=t,c3(2)=t
write(11,*)
b1=merge(1,0,b2).lt.merge(1,0,b3)
if (b1)write(11,*)101,b1
b1=b2.neqv.b3
if (b1)write(11,*)102,b1
c1=merge(1,0,c2).lt.merge(1,0,c3)
if (c1(1))write(11,*)201,c1
c1=c2.neqv.c3
if (c1(2))write(11,*)202,c1
if (merge(1,0,b2)>=merge(1,0,b3))goto 2
write(11,*)301
2 if (b2.neqv.b3)goto 1
goto 11
1 write(11,*)303
11 continue
if (b2.neqv.b3 .or. b2.neqv.b3 .or. b2.neqv.b3)goto 3
goto 13
3 write(11,*)304
13 continue
if (b2.neqv.b3 .and. b2.neqv.b3 .and. b2.neqv.b3)goto 4
goto 14
4 write(11,*)305
14 continue
if (b2.neqv.b3 .or. b2.neqv.b3 .and. b2.neqv.b3)goto 5
goto 15
5 write(11,*)306
15 continue
if (b2.neqv.b3 .and. b2.neqv.b3 .or. b2.neqv.b3)goto 6
goto 16
6 write(11,*)307
16 continue
22 if (merge(1,0,b2)< merge(1,0,b3))goto 21
goto 31
21 write(11,*)1303
31 continue
if (merge(1,0,b2)< merge(1,0,b3) .or. b2.neqv.b3 .or. merge(1,0,b2)< merge(1,0,b3))goto 23
goto 33
23 write(11,*)1304
33 continue
if (merge(1,0,b2)<merge(1,0,b3) .and. merge(1,0,b2)<merge(1,0,b3) .and. merge(1,0,b2)<merge(1,0,b3))goto 24
goto 34
24 write(11,*)1305
34 continue
if (merge(1,0,b2)<merge(1,0,b3) .or. merge(1,0,b2)<merge(1,0,b3) .and. merge(1,0,b2)<merge(1,0,b3))goto 25
goto 35
25 write(11,*)1306
35 continue
if (merge(1,0,b2)<merge(1,0,b3) .and. merge(1,0,b2)<merge(1,0,b3) .or. merge(1,0,b2)<merge(1,0,b3))goto 26
goto 36
26 write(11,*)1307
36 continue
end
call s1
call chk
print *,'pass'
end
subroutine chk
logical d,e
rewind 11
read(11,*,end=100) k,d
read(11,*) k,d;if(k/=101)print *,k;if(d)print *,d
read(11,*) k,d;if(k/=102)print *,k;if(d)print *,d
read(11,*) k,d,e;if(k/=201)print *,k;if(d)print *,d;if (e) print *,e
read(11,*) k,d,e;if(k/=202)print *,k;if(d)print *,d ;if (e) print *,e
read(11,*) k;if(k/=303)print *,k
100 end
