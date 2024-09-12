module m1
integer,parameter::var=5
character(LEN=var),target::ch1(2:5)
type ty
character(LEN=var+1)::ch2(4)
end type
end module
program main
use m1
interface
subroutine s2(d1,d2,d3)
import ty
character(:),pointer,intent(in)::d1(:)
character(:),pointer,intent(in)::d2(:)
type(ty),pointer,intent(in)::d3(:)
end subroutine
end interface
type(ty),target::tar(2:4)
ch1="aaaaa"
tar(3)%ch2="bbbbbb"
tar(2)%ch2="mmmmmm"
tar(4)%ch2="mmmmmm"
call s2(tar(3)%ch2(2:4),ch1(3:4),tar(3:4))
if (ch1(4)/="yyyyy")print*,112
if (tar(3)%ch2(3) /="xxxxxx")print*,113
if (tar(4)%ch2(1)/="zzzzzz")print*,114
print*,"Pass"
end

subroutine s2(c1,c2,c3)
use m1
character(LEN=:),pointer,intent(in)::c1(:)
character(LEN=:),pointer,intent(in)::c2(:)
type(ty),pointer,intent(in)::c3(:)
if(.not.associated(c1))print*,101
if(.not.associated(c2))print*,102
if(.not.associated(c3))print*,103
if (LEN(c1)/=6 .or. LEN(c2)/=5)print*,104
if (size(c1)/=3 .or. size(c2)/=2)print*,105
if (ubound(c1,1)/=3 .or. ubound(c2,1)/=2)print*,106
if (size(c3)/=2 .or. ubound(c3,1)/=2)print*,107
if (c1(1)/="bbbbbb")print*,108
if (c2(1)/="aaaaa")print*,109
if (c3(1)%ch2(1) /="bbbbbb")print*,110
if (c3(2)%ch2(1) /="mmmmmm")print*,111
c1(2)="xxxxxx"
c2(2)="yyyyy"
c3(2)%ch2="zzzzzz"
end subroutine

