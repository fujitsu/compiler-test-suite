module mm
contains
subroutine sub01(i)
integer a(i)
a=(/1,2/)
if (any(a/=(/1,2/)))print *,'error-1'
end subroutine 
subroutine sub02(i)
entry      sub03(i)
entry      sub04(i)
integer a(i,i)
a=reshape((/1,2,3,4/),(/i,i/))
if (any(a/=reshape((/1,2,3,4/),(/i,i/))))print *,'error-2'
end subroutine 
function fun01(i) 
integer  fun01(i,i)
fun01=reshape((/1,2,3,4/),(/i,i/))
end function
function fun02(i) 
entry    fun03(i)
entry    fun04(i)
integer  fun02(i,i),fun03(i,i),fun04(i,i)
fun03=reshape((/1,2,3,4/),(/i,i/))
end function
function fun11(i) 
integer  fun11(i,i)
integer a(i,i)
fun11=reshape((/1,2,3,4/),(/i,i/))
a=reshape((/1,2,3,4/),(/i,i/))
if (any(a/=reshape((/1,2,3,4/),(/i,i/))))print *,'error-21'
end function
function fun12(i) 
entry    fun13(i)
entry    fun14(i)
integer  fun12(i,i),fun13(i,i),fun14(i,i)
integer a(i,i)
a=reshape((/1,2,3,4/),(/i,i/))
if (any(a/=reshape((/1,2,3,4/),(/i,i/))))print *,'error-22'
fun13=reshape((/1,2,3,4/),(/i,i/))
end function
end
use mm
do i=1,5
call sub01(2)
call sub02(2)
call sub03(2)
call sub04(2)
if (any(fun01(2)/=reshape((/1,2,3,4/),(/2,2/))))print *,'error-3'
if (any(fun02(2)/=reshape((/1,2,3,4/),(/2,2/))))print *,'error-4'
if (any(fun03(2)/=reshape((/1,2,3,4/),(/2,2/))))print *,'error-5'
if (any(fun04(2)/=reshape((/1,2,3,4/),(/2,2/))))print *,'error-6'
if (any(fun11(2)/=reshape((/1,2,3,4/),(/2,2/))))print *,'error-13'
if (any(fun12(2)/=reshape((/1,2,3,4/),(/2,2/))))print *,'error-14'
if (any(fun13(2)/=reshape((/1,2,3,4/),(/2,2/))))print *,'error-15'
if (any(fun14(2)/=reshape((/1,2,3,4/),(/2,2/))))print *,'error-16'
end do
print *,'pass'
end
