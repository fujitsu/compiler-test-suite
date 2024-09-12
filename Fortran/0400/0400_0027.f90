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
procedure (zzz),pointer :: p2
interface assignment(=)
  procedure xxx,p1,p2
end interface
type(c)::c1
type(d)::d1
type(e)::e1
k=c1
if (k/=1) print *,101
k=d1
if (k/=2) print *,102
k=e1
if (k/=3) print *,103
end subroutine
subroutine   xxx(c1,c2)
integer,intent(out)::c1
type(c),intent(in)::c2
c1=c2%x1
end subroutine  
subroutine   yyy(d1,d2)
integer,intent(out)::d1
type(d),intent(in)::d2
d1=d2%x2
end subroutine  
subroutine   zzz(e1,e2)
integer,intent(out)::e1
type(e),intent(in)::e2
e1=e2%x3
end subroutine  
end
use m1
p1=>yyy
p2=>zzz
call s1(p2)
print *,'pass'
end
