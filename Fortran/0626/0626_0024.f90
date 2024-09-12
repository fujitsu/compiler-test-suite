subroutine s2
type ty1
 integer::a,b,c
end type
type(ty1),parameter:: &
t=ty1(c=1+3-(((3))),b=int(sin(0.1))+2-int(sin(0.1)),a=3+1-1)
type(ty1),parameter:: &
y=ty1(3-1+1*1,-1+1+2,(1+2-2))
if (t%a/=3)print *,107
if (t%b/=2)print *,108
if (t%c/=1)print *,109
if (y%a/=3)print *,110
if (y%b/=2)print *,111
if (y%c/=1)print *,112
end
call s2
print *,'pass'
end
