type ty1
character(LEN=:),allocatable::alc1(:)
end type
type ty2
integer,pointer::ptr=>NULL()
end type
type ty3
character(LEN=:),allocatable::alc2
end type

type(ty1)::obj1
type(ty2)::obj2
type(ty3)::obj3

call s1(obj1,obj2,obj3)
if (obj1%alc1(2)/="xxxxxx")print*,106
if (obj1%alc1(4)/="xxmmmm")print*,107
if (obj3%alc2/="ykkky")print*,108
print*,"pass"
contains
subroutine s1(d1,d2,d3)
type(ty1),target::d1
type(ty2),target::d2
type(ty3),target::d3
allocate(d2%ptr)
d2%ptr=5
allocate(character(LEN=d2%ptr)::d3%alc2)
d3%alc2="yyyyy"
allocate(character(LEN=d2%ptr+1)::d1%alc1(2:4))
d1%alc1 = "xxxxxx"
call s2(d3%alc2(2:4),d1%alc1(3:4)(3:6))
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
end

