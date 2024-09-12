module m1
contains
subroutine s1(d6)
type t
 integer::x1
 complex,allocatable::c1(:)
end type
type(t):: v1,v2
complex:: d1(2)=(4,5),d3(3)=[complex::0, (4,5),(4,5)],d6(:)
complex,parameter:: d2(2)=(4,5)
interface
complex function d4()
dimension d4(2)
end function
end interface
v1=t(1,[(4,5),(4,5)])
if (v1%x1/=1) print *,101
if (any(abs(v1%c1-(4,5))>0.000001)) print *,102
v2=t(1,d1)
if (v2%x1/=1) print *,201
if (any(abs(v2%c1-(4,5))>0.000001)) print *,202
v2=t(1,d2)
if (v2%x1/=1) print *,301
if (any(abs(v2%c1-(4,5))>0.000001)) print *,302
k2=2
v2=t(1,d3(k2:))
if (v2%x1/=1) print *,401
if (any(abs(v2%c1-(4,5))>0.000001)) print *,402
v2=t(1,d4())
if (v2%x1/=1) print *,501
if (any(abs(v2%c1-(4,5))>0.000001)) print *,502
v2=t(1,d5())
if (v2%x1/=1) print *,601
if (any(abs(v2%c1-(4,5))>0.000001)) print *,602
v2=t(1,d6)
if (v2%x1/=1) print *,701
if (any(abs(v2%c1-(4,5))>0.000001)) print *,702
v2=t(1,sin([(0.1,0.1),(0.1,0.1)]))
if (v2%x1/=1) print *,701
if (any(abs(v2%c1-sin([(0.1,0.1),(0.1,0.1)]))>0.000001)) print *,702
contains
complex function d5()
dimension d5(2)
d5=(4,5)
end function
end subroutine
end
use m1
complex,parameter:: d6(2)=(4,5)
call s1(d6)
print *,'pass'
end
complex function d4()
dimension d4(2)
d4=(4,5)
end
