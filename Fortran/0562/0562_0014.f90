module m1
type ty
character(LEN=:),allocatable::alc1
character(LEN=:),allocatable::alc2(:)
integer::jj=5
end type

contains
subroutine sub(dmy1,dmy2)
character(LEN=:),pointer,intent(in)::dmy1
character(LEN=:),pointer,intent(in)::dmy2(:)
if(.not.associated(dmy1))print*,101 
if(.not.associated(dmy2))print*,102 
if (LEN(dmy1)/=3 .or. LEN(dmy2)/=3)print*,103
if (size(dmy2)/=2)print*,104
if (ubound(dmy2,1)/=2)print*,105
if (dmy1/="xxx" .or. dmy2(2)/="yyy")print*,106
dmy1="aaa"
dmy2(1)="bbb"
end subroutine
end module

program main
use m1
type(ty)::obj
integer::ii
ii=fun(obj)
if (obj%alc1 /="aaaxx")print*,107
if (obj%alc2(2) /="yyyyy")print*,108
if (obj%alc2(3) /="ybbby")print*,109
if (ii==10)print*,"pass"
contains
integer function fun(d1)
type(ty),target::d1
allocate(character(LEN=d1%jj)::d1%alc1)
allocate(character(LEN=d1%jj)::d1%alc2(2:5))
d1%alc1="xxxxx"
d1%alc2="yyyyy"
call sub(d1%alc1(1:3),d1%alc2(3:4)(2:4))
fun=10
end function
end


