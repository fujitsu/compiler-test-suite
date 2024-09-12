module m1
type c
  integer::x1=1
end type
type,extends(c):: d
  integer::x2=2
end type
type,extends(d):: e
  integer::x3=3
end type
procedure (yyy),pointer :: p1
procedure (zzz),pointer :: p2
contains
subroutine s1(p2)
procedure (zzz) :: p2
interface operator(+)
  procedure xxx,p1,p2
end interface
type(c)::c1
type(d)::d1
type(e)::e1
if ((c1+c1)/=2) print *,101
if ((d1+d1)/=4) print *,102
if ((e1+e1)/=6) print *,103
end subroutine
function   xxx(c1,c2)
type(c),intent(in)::c1,c2
integer::xxx
if (c1%x1/=1) print *,1101
if (c2%x1/=1) print *,1102
xxx=c1%x1+c2%x1
end function  
function   yyy(d1,d2)
integer::yyy
type(d),intent(in)::d1,d2
if (d1%x2/=2) print *,2101
if (d2%x2/=2) print *,2102
yyy=d1%x2+d2%x2
end function  
function   zzz(e1,e2)
integer::zzz
type(e),intent(in)::e1,e2
if (e1%x3/=3) print *,3101
if (e2%x3/=3) print *,3102
zzz=e1%x3+e2%x3
end function  
end
use m1
p1=>yyy
p2=>zzz
call s1(p2)
print *,'pass'
end
