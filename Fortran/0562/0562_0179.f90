subroutine sub
interface
subroutine s2(d1)
character(:),pointer,intent(in)::d1
end subroutine
end interface
character(LEN=5),target::ch1(2:5)
type ty
character(LEN=5)::ch2(4)
end type
type(ty),target::tar
ch1="aaaaa"
tar%ch2="bbbbb"
call s1(ch1(3:5))
call s2(tar%ch2(3))
if (ch1(4)/="xxxxx")print*,108
if (tar%ch2(3) /="yyyyy")print*,109
print*,"Pass"
contains
subroutine s1(dmy1)
character(LEN=:),pointer,intent(in)::dmy1(:)
if(.not.associated(dmy1))print*,101
if (LEN(dmy1)/=5)print*,102
if (SIZE(dmy1)/=3 .or. ubound(dmy1,1)/=3)print*,103
if (dmy1(1)/="aaaaa")print*,104
dmy1(2)="xxxxx"
end subroutine
end subroutine

Program main
call sub
end

subroutine s2(c1)
character(LEN=:),pointer,intent(in)::c1
if(.not.associated(c1))print*,105
if (LEN(c1)/=5)print*,106
if (c1/="bbbbb")print*,107
c1="yyyyy"
end subroutine

