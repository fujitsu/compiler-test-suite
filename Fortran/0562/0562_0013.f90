subroutine sub
type ty
character(LEN=:),allocatable::alc
integer::ii=5
end type

type(ty)::obj
call s1(obj)
if (obj%alc/="xxaaa")print*,105
print*,"pass"
contains
subroutine s1(d1)
type(ty),target::d1
allocate(character(LEN=d1%ii)::d1%alc)
d1%alc = "xxxxx"
call s2(d1,d1%alc)
end subroutine
subroutine s2(dmy1,dmy2)
type(ty),pointer,intent(in)::dmy1
character(LEN=:),pointer,intent(in)::dmy2
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
if (LEN(dmy2)/=5)print*,103
if (dmy2/="xxxxx")print*,104
dmy2(3:5)="aaa"
end subroutine
end subroutine

call sub
end
