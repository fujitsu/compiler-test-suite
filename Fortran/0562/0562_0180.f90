subroutine sub
interface
subroutine s2(d1,d2)
character(:),pointer,intent(in)::d1(:)
character(:),pointer,intent(in)::d2(:)
end subroutine
end interface
integer,parameter::var=5
character(LEN=var),target::ch1(2:5)
type ty
character(LEN=var+1)::ch2(4)
end type
type(ty),target::tar
ch1="aaaaa"
tar%ch2="bbbbbb"
call s2(tar%ch2(2:4),ch1(3:4))
if (ch1(4)/="yyyyy")print*,108
if (tar%ch2(3) /="xxxxxx")print*,109
print*,"Pass"
end subroutine

Program main
call sub
end

subroutine s2(c1,c2)
character(LEN=:),pointer,intent(in)::c1(:)
character(LEN=:),pointer,intent(in)::c2(:)
if(.not.associated(c1))print*,101
if(.not.associated(c2))print*,102
if (LEN(c1)/=6 .or. LEN(c2)/=5)print*,103
if (size(c1)/=3 .or. size(c2)/=2)print*,104
if (ubound(c1,1)/=3 .or. ubound(c2,1)/=2)print*,105
if (c1(1)/="bbbbbb")print*,106
if (c2(1)/="aaaaa")print*,107
c1(2)="xxxxxx"
c2(2)="yyyyy"
end subroutine

