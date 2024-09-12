call sub
contains
subroutine sub
integer,allocatable::ii(:)
character(LEN=:),allocatable::ch1
character(LEN=:),allocatable::ch2(:)
complex,allocatable::com(:)
call s1(ii,ch1,ch2,com)
if (ch1/="aaoooaaa")print*,110
if (ch2(3)/="xxxxxxxxxx")print*,111
if (ch2(5)/="xmmmmmxxxx")print*,112
print*,"pass"
end subroutine
subroutine s1(d1,d2,d3,d4)
integer,allocatable,target::d1(:)
character(LEN=:),allocatable,target::d2
character(LEN=:),allocatable,target::d3(:)
complex,allocatable,target::d4(:)
allocate(d1(2:5))
allocate(character(8)::d2)
allocate(character(10)::d3(3:6))
allocate(d4(4:6))
d2="aaaaaaaa"
d3="xxxxxxxxxx"
call s2(d1,d2(3:5),d3(4:5)(2:6),d4)
end subroutine
subroutine s2(a1,a2,a3,a4)
integer,pointer,intent(in)::a1(:)
character(LEN=:),pointer,intent(in)::a2
character(LEN=:),pointer,intent(in)::a3(:)
complex,pointer,intent(in)::a4(:)
if (.not.associated(a1))print*,101
if (.not.associated(a2))print*,102
if (.not.associated(a3))print*,103
if (.not.associated(a4))print*,104
if (SIZE(a1) /=4 .or. SIZE(a3)/=2 .or.SIZE(a4)/=3)print*,105
if (LEN(a2)/=3 .or. LEN(a3)/=5)print*,106
if (ubound(a3,1)/=2 .or. ubound(a4,1)/=6)print*,107
if (a2/="aaa")print*,108
if (a3(1)/="xxxxx")print*,109
a2="ooo"
a3(2)="mmmmm"
end subroutine
end
