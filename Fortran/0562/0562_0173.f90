module m1
contains
subroutine sub(dmy1,dmy2,dmy3,dmy4,dmy5)
character(*),pointer,intent(in)::dmy1
integer::dmy2
complex::dmy3
real,pointer,intent(in)::dmy4
character(LEN=:),pointer,intent(in)::dmy5
if (.NOT.associated(dmy1))print*,101
if (.NOT.associated(dmy4))print*,102
if (.not.associated(dmy5))print*,103
if (LEN(dmy1) /= dmy2)print*,104
if (dmy3 /= (2,-3))print*,105
if (LEN(dmy5)/=4)print*,106
dmy5="abcd"
dmy1="FUN"
end subroutine
end module

call s1
contains
subroutine s1
use m1
character(20),target::tar1
integer::tar2=3
complex::tar3
real,target::tar4
character(LEN=:),allocatable,target::tar5
tar1="TARGET"
tar3= (2,-3)
allocate(character(LEN=tar2+1)::tar5)
tar5 = "xxxx"
call sub(tar1(3:5),tar2,tar3,tar4,tar5)
print*,"Pass"
if (tar1 /= "TAFUNT")print*,107
if (tar5/="abcd")print*,108
end subroutine
end
