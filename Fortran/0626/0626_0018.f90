module mod
type t1
 real :: x, y
 contains
 procedure, pass :: fun => afun
end type t1
type, extends(t1) ::t2
 real:: z
 contains
 procedure, pass :: fun => bfun
end type t2
contains
function afun (a, b) result(r)
 class (t1), intent (in) :: a, b
 real :: r
 r = a%x + b%x + a%y + b%y
end function afun
function bfun (a, b) result(r)
 class (t2), intent (in) :: a
 class (t1), intent (in) :: b
 real :: r
 select type(b)
 type is(t2)
  r = a%x + b%x + a%y + b%y + a%z +b%z
 type is(t1)
  r = a%x + b%x + a%y + b%y + a%z
 end select
end function bfun
end module mod

subroutine s1
use mod
class(t1),allocatable::x1,x2

allocate(x1,x2)
x1%x=1
x1%y=2
x2%x=3
x2%y=4
if (x1%fun(x2)/=10) print *,101

deallocate(x1,x2)
allocate(t2::x1,x2)
x1%x=11
x1%y=12
 select type(x1)
 type is(t2)
   x1%z=13
 end select
x2%x=14
x2%y=15
 select type(x2)
 type is(t2)
   x2%z=16
 end select
if (x1%fun(x2)/=11+12+13+14+15+16) print *,102

deallocate(x1,x2)
allocate(t2::x1)
allocate(t1::x2)
x1%x=11
x1%y=12
 select type(x1)
 type is(t2)
   x1%z=13
 end select
x2%x=14
x2%y=15
 select type(x2)
 type is(t2)
   x2%z=16
 end select
if (x1%fun(x2)/=11+12+13+14+15) print *,103
end
call s1
print *,'pass'
end
