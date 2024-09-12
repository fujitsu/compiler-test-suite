module m1
interface gen
procedure::p1
procedure p2
module procedure::p3
module procedure p4
end interface
integer:: kk=0
contains
subroutine p1()
kk=kk+1
end subroutine
subroutine p2(k1)
kk=kk+k1
end subroutine
subroutine p3(k1,k2)
kk=kk+k1+k2
end subroutine
subroutine p4(k1,k2,k3)
kk=kk+k1+k2+k3
end subroutine
end
use m1
call gen
if (kk/=1) print *,201
call gen(2)
if (kk/=3) print *,202
call gen(1,2)
if (kk/=6) print *,203
call gen(1,2,3)
if (kk/=12) print *,204
print *,'pass'
end
