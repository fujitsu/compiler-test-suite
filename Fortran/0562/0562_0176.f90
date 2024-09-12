module m1
contains
integer function fun(dmy1,dmy2)
character(LEN=:),pointer,intent(in)::dmy1      
character(LEN=:),pointer,intent(in)::dmy2(:) 
if (.NOt.associated(dmy1))print*,"error",101
if (.NOt.associated(dmy2))print*,"error",102
if (size(dmy2) /=3)print*,103
if(lbound(dmy2,1)/=3 .or. ubound(dmy2,1)/=5)print*,104
if (LEN(dmy1)/=4)print*,105
if (dmy1/="cdef")print*,106
dmy2(4)="bbbb"
fun=10
end function
end module

interface
subroutine sub(d1,d2)
character(LEN=:),allocatable,target::d1      
character(LEN=:),allocatable,target::d2(:)      
end subroutine
end interface
character(LEN=:),allocatable::a1      
character(LEN=:),allocatable::a2(:)      
call sub(a1,a2)
if (a1 /= "abcdefgh")print*,107
if (a2(3) /= "xxxx")print*,108
if (a2(4) /= "bbbb")print*,109
if (a2(5) /= "xxxx")print*,110
end
subroutine sub(d1,d2)
use m1
integer::ii
character(LEN=:),allocatable,target::d1      
character(LEN=:),allocatable,target::d2(:) 
allocate(character(LEN=8)::d1)
allocate(character(LEN=4)::d2(3:5))
d1 = "abcdefgh"
d2="xxxx"
ii=fun(d1(3:6),d2)
if (ii==10)print*,"pass"
end subroutine
