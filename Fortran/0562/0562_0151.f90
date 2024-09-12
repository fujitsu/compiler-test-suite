module m1
type ty1
character(LEN=:),allocatable::alc1(:)
end type

type ty2
integer,pointer::ptr=>NULL()
end type

type ty3
character(LEN=:),allocatable::alc2
end type

type(ty1),protected,target::d1
type(ty2),protected,target::d2
type(ty3),protected,target::d3

contains
subroutine fun()
allocate(d2%ptr)
d2%ptr=5
allocate(character(LEN=d2%ptr)::d3%alc2)
allocate(character(LEN=d2%ptr+1)::d1%alc1(2:4))
d3%alc2="yyyyy"
d1%alc1 = "xxxxxx"

call s2(d3%alc2(2:4),d1%alc1(3:4)(3:6))
if (d1%alc1(2)/="xxxxxx")print*,106
if (d1%alc1(4)/="xxmmmm")print*,107
if (d3%alc2/="ykkky")print*,108
print*,"Pass"
end subroutine

subroutine s2(dmy1,dmy2)
character(LEN=:),pointer,intent(in)::dmy1
character(LEN=:),pointer,intent(in)::dmy2(:)
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
if (size(dmy2)/=2 .or. ubound(dmy2,1)/=2)print*,103
if (LEN(dmy1)/=3 .or. LEN(dmy2)/=4)print*,104
if (dmy1/="yyy" .or. dmy2(2)/="xxxx")print*,105
dmy1="kkk"
dmy2(2)="mmmm"
end subroutine
end module

program main
USE m1
call fun
end
