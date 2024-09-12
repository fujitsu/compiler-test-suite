type ty1
character(LEN=:),allocatable::alc1
character(LEN=:),allocatable::alc2(:)
integer::ii
end type
type(ty1)::obj
obj%ii = fun1(obj)
print*,"pass"
if (obj%alc1 /= "video")print*,105
if (obj%alc2(3) /= "xxxx")print*,106
if (obj%alc2(5) /= "abcd")print*,107
contains
integer function fun1(d1)
type(ty1),target::d1
allocate(character(LEN=8)::d1%alc1)
allocate(character(LEN=4)::d1%alc2(3:5))
d1%alc2 = "xxxx"
fun1=fun2(d1%alc1,d1%alc2(4:5))
end function
integer function fun2(dmy1,dmy2)
character(LEN=:),pointer,intent(in)::dmy1
character(LEN=:),pointer,intent(in)::dmy2(:)
if (.not.associated(dmy1))print*,"error",101
if (.not.associated(dmy2))print*,"error",102
if (LEN(dmy1) /=8)print*,"error",103
if (LEN(dmy2) /=4)print*,"error",104
if (SIZE(dmy2)/=2)print*,105
if (ubound(dmy2,1)/=2)print*,106
dmy1="video"
dmy2(2)="abcd"
fun2=10
end function
end

