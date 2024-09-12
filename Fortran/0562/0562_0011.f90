module m1
type ty1
integer::ii
end type
type,extends(ty1)::ty2
character(LEN=10)::ch
end type
type,extends(ty2)::ty3
complex::cc
end type
type,extends(ty3)::ty4
real::rr
end type
contains
subroutine sub(p1,p2,p3)
character(LEN=*),pointer,intent(in)::p1
integer,pointer,intent(in)::p2
real,pointer,intent(in)::p3
if (.NOT.associated(p1))print*,101
if (.NOT.associated(p2))print*,102
if (.NOT.associated(p3))print*,103
if (LEN(p1)/=10)print*,106
p1 = "FORTRAN"
p3 = 2.50
end subroutine
end module

call s1
contains
subroutine s1
use m1
type(ty4),target::tar
call sub(tar%ch(1:10),tar%ii,tar%rr)
print*,"Pass"
if (tar%ch /= "FORTRAN")print*,104
if (tar%rr /= 2.50)print*,105
end subroutine
end
