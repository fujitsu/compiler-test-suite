module m1
type ty2
integer,allocatable,dimension(:) :: a1
end type

type, extends(ty2)::ts
end type

type ty3
class(ty2),allocatable,dimension(:) :: al2
end type

end module m1

use m1
type(ty3) :: str
allocate(str%al2(10))

str%al2=(/(fun(i),i=1,10)/)
szLHS = size(str%al2)
str%al2=(/(fun(i),i=3,5)/)
szRHS = size (str%al2)

if(szLHS .eq. szRHS)print*, "101", szRHS
if(szRHS .ne. 3)print*, "102", szRHS

select type (x => str%al2)
type is (ts)
    print*, "PASS"
class default
        print*,"ERROR"
end select
contains

function fun(xx)
use m1
type(ts) :: fun(1)
integer :: xx
integer::x(10)
x=xx
fun = ts(x)
end function fun
end

