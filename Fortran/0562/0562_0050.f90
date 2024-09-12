module m1
type ty
integer :: ii=10
end type
end module

call sub()
contains
subroutine sub()
use m1

interface operator(.xor.)
integer function fun1(d1,d2)
import ty
type(ty),pointer,intent(in) :: d1
integer,pointer,intent(IN) :: d2
end function
end interface

interface operator(.eor.)
integer function fun2(d1,d2)
import ty
type(ty),pointer,intent(in) :: d1
character(LEN=*),pointer,intent(IN) :: d2
end function
end interface

interface operator(.ppp.)
integer function fun3(d1,d2)
import ty
type(ty),pointer,intent(in) :: d1
integer,pointer,intent(IN) :: d2
end function
end interface

type(ty),target::obj
integer,target::ii =3
character(4),target::tar
tar="fort"
if((obj .ppp. ii) /=7)print*,107  
if((obj .eor. tar) /=40)print*,108  
if (obj%ii /= 15)print*,109
if((obj .xor. ii) /=18)print*,110  
if((obj .xor. ii)*(obj .eor. tar)*(obj .ppp. ii) /=12960)print*,111  
print*,"Pass"
end subroutine
end

integer function fun1(d1,d2)
use m1
type(ty),pointer,intent(in) :: d1
integer,pointer,intent(IN) :: d2
if (.not.associated(d1))print*,101
if (.not.associated(d2))print*,102
fun1 = d1%ii + d2
end function

integer function fun2(d1,d2)
use m1
type(ty),pointer,intent(in) :: d1
character(LEN=*),pointer,intent(IN) :: d2
if (.not.associated(d1))print*,103
if (.not.associated(d2))print*,104
if (LEN(d2)/=4)print*,107
fun2 = d1%ii * len(d2)
d1%ii=15
end function

integer function fun3(d1,d2)
use m1
type(ty),pointer,intent(in) :: d1
integer,pointer,intent(IN) :: d2
if (.not.associated(d1))print*,105
if (.not.associated(d2))print*,106
fun3 = d1%ii - d2
end function

