module mod1
integer,allocatable,dimension(:):: arr1
type tt1
 integer,allocatable,dimension(:):: arr1
end type
end

module mod2
integer,allocatable,dimension(:):: arr2
type tt2
 integer,allocatable,dimension(:):: arr2
end type
end

module mod
use mod1
use mod2
contains
function ifun() result(i1)
type (tt1) :: i1,i2
entry ifun2() result(i2)
call alloc(i2)
i2%arr1(10)=1
call set_1(i1)
end function
subroutine alloc(ii)
type (tt1) :: ii
allocate(ii%arr1(10))
end subroutine
subroutine set_1(ii)
type (tt1) :: ii
ii%arr1=(/(i,i=1,10)/)
end subroutine
end

use mod
type (tt1) :: iii
iii=ifun()
if (iii%arr1(1) .ne.1) print *,'err1'
if (iii%arr1(10).ne.10) print *,'err1'
iii=ifun2()
if (iii%arr1(1) .ne.1) print *,'err1'
if (iii%arr1(10).ne.10) print *,'err1'
print *,'pass'
end

