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
subroutine alloc_a1()
allocate(arr1(10))
end subroutine
subroutine set_a1()
arr1=10
end subroutine
subroutine alloc_a2()
allocate(arr2(20))
end subroutine
subroutine set_a2()
arr2=20
end subroutine
end
function ifun() result(i1)
use mod
type (tt1) :: i1,i2
call alloc(i2)
i2%arr1(10)=1
call set_1(i1)
call alloc_a1()
call set_a1()
return
entry ifun2() result(i2)
call alloc(i2)
i2%arr1(10)=1
call set_1(i1)
call alloc_a2()
call set_a2()
end function
subroutine alloc(ii)
use mod
type (tt1) :: ii
allocate(ii%arr1(10))
end subroutine
subroutine set_1(ii)
use mod
type (tt1) :: ii
ii%arr1=(/(i,i=1,10)/)
end subroutine

use mod
interface
function ifun() result(i1)
use mod
type (tt1) :: i1,i2
end function
function ifun2() result(i1)
use mod
type (tt1) :: i1,i2
end function
end interface
type (tt1) :: iii
iii=ifun()
if (iii%arr1(1) .ne.1) print *,'err1'
if (iii%arr1(10).ne.10) print *,'err1'
if (arr1(1 ).ne.10) print *,'err1'
if (arr1(10).ne.10) print *,'err1'
iii=ifun2()
if (iii%arr1(1) .ne.1) print *,'err1'
if (iii%arr1(10).ne.10) print *,'err1'
if (arr2(1 ).ne.20) print *,'err1'
if (arr2(10).ne.20) print *,'err1'
print *,'pass'
end

