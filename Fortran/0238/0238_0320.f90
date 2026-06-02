subroutine s1
logical,parameter::t=.true.
logical(1):: a1=t,a2=t,a3=t
logical(2):: b1=t,b2=t,b3=t
logical(8):: c1=t,c2=t,c3=t
if (merge(1,0,b2)>=merge(1,0,b3))goto 2
print *,301
2 if (merge(1,0,c2)>=merge(1,0,c3))goto 1
print *,303
1 continue
if (merge(1,0,b2)>=merge(1,0,c3))goto 3
print *,304
3 continue
if (merge(1,0,c2)>=merge(1,0,b3))goto 4
print *,305
4 continue
if (merge(1,0,a2)>=merge(1,0,c3))goto 5
print *,306
5 continue
if (merge(1,0,c2)>=merge(1,0,a3))goto 6
print *,307
6 continue
end
call s1
print *,'pass'
end
