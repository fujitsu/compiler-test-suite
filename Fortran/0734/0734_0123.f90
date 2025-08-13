module mm
type xx
 integer,dimension(2) ::a=(/1,2/)
 integer,dimension(2,2) ::aa=reshape((/1,2,3,4/),(/2,2/))
end type
contains
subroutine sub01(i)
type (xx)::x(i)
if (any(x(2)%a/=(/1,2/)))print *,'error-1'
end subroutine
subroutine sub02(i)
entry      sub03(i)
entry      sub04(i)
type (xx)::x(i,i)
if (any(x(2,2)%aa/=reshape((/1,2,3,4/),(/i,i/))))print *,'error-2'
end subroutine
function fun01(i)
type(xx)  fun01(i,i)
end function
function fun02(i)
entry    fun03(i)
entry    fun04(i)
type(xx) fun02(i,i),fun03(i,i),fun04(i,i)
end function
function fun11(i)
type(xx)::  fun11(i,i)
type (xx)::x(i,i)
if (any(x(2,2)%aa/=reshape((/1,2,3,4/),(/i,i/))))print *,'error-2'
end function
function fun12(i)
entry    fun13(i)
entry    fun14(i)
type(xx):: fun12(i,i),fun13(i,i),fun14(i,i)
type (xx)::x(i,i)
if (any(x(2,2)%aa/=reshape((/1,2,3,4/),(/i,i/))))print *,'error-2'
end function
end
use mm,only:sub01,sub02,sub03,sub04,fun01,fun02,fun03,fun04,fun11,fun12,fun13,fun14
do i=1,5
call sub01(2)
call sub02(2)
call sub03(2)
call sub04(2)
write(32,*)fun01(2)
write(32,*)fun02(2)
write(32,*)fun03(2)
write(32,*)fun04(2)
write(32,*)fun11(2)
write(32,*)fun12(2)
write(32,*)fun13(2)
write(32,*)fun14(2)
end do
rewind 32
call taa
print *,'pass'
end
subroutine taa
integer x(24)
do i=1,8*5
read(32,*)x;if(any(x/=(/1,2,1,2,3,4,1,2,1,2,3,4,1,2,1,2,3,4,1,2,1,2,3,4/)))print *,'error',i
end do
end
