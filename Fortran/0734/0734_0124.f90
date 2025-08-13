module mm
contains
subroutine sub01(i)
integer a(i:0)
a=(/(j,j=1,0)/)
if (size(a)/=0)print *,'error-01'
end subroutine
subroutine sub02(i)
entry      sub03(i)
entry      sub04(i)
integer a(i:0,i:0)
a=reshape((/1,2,3,4/),(/i-i,i-i/))
if (size(a)/=0)print *,'error-11'
end subroutine
function fun01(i)
integer  fun01(i:0,i:0)
fun01=reshape((/1,2,3,4/),(/i-i,i-i/))
end function
function fun02(i)
entry    fun03(i)
entry    fun04(i)
integer  fun02(i:0,i:0),fun03(i:0,i:0),fun04(i:0,i:0)
fun03=reshape((/1,2,3,4/),(/i-i,i-i/))
end function
function fun11(i)
integer  fun11(i:0,i:0)
integer a(i:0,i:0)
fun11=reshape((/1,2,3,4/),(/i-i,i-i/))
a=reshape((/1,2,3,4/),(/i-i,i-i/))
if (size(a)/=0)print *,'error-21'
end function
function fun12(i)
entry    fun13(i)
entry    fun14(i)
integer  fun12(i:0,i:0),fun13(i:0,i:0),fun14(i:0,i:0)
integer a(i:0,i:0)
a=reshape((/1,2,3,4/),(/i-i,i-i/))
fun13=reshape((/1,2,3,4/),(/i-i,i-i/))
if (size(a)/=0)print *,'error-31'
end function
end
use mm
do i=1,5
call sub01(2)
call sub02(2)
call sub03(2)
call sub04(2)
write(34,*)fun01(2)
write(34,*)fun02(2)
write(34,*)fun03(2)
write(34,*)fun04(2)
write(34,*)fun11(2)
write(34,*)fun12(2)
write(34,*)fun13(2)
write(34,*)fun14(2)
end do
print *,'pass'
end
