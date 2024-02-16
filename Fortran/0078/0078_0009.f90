module m1
 integer,parameter::k=2
end
subroutine s1
use m1
real(k),parameter:: c1=1.0,c2=2.0,c3=3.0
real(k),parameter:: d1=c3,d2=c2,d3=c1
real(k):: a1=1.0,a2=2.0,a3=3.0
real(k):: b1=c3,b2=c2,b3=c1
if (max(a1,a2,a3)/=a3) print *,1001
if (min(b1,b2,b3)/=b3) print *,1002
if (max(c1,c2,c3)/=a3) print *,1011
if (min(d1,d2,d3)/=b3) print *,1012
call ss1(a1,a2,h=a2)
call ss1(a1,a2,a3,h=a3)
call ss2(b1,b2,h=b2)
call ss2(b1,b2,b3,h=b3)
contains
subroutine ss1(e1,e2,e3,h)
real(k),optional::e1,e2,e3,h
if (max(e1,e2,e3)/=h) print *,2001,real(max(e1,e2,e3)),real(h)
end subroutine
subroutine ss2(e1,e2,e3,h)
real(k),optional::e1,e2,e3,h
if (min(e1,e2,e3)/=h) print *,2002,real(min(e1,e2,e3)),real(h)
end subroutine
end
call s1
print *,'pass'
end
