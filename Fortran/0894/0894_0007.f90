type ty1
integer::ii
end type
type,extends(ty1)::ty2 
integer::jj
end type
class(ty2),pointer::ptr(:)
call sub(ptr)
contains
subroutine sub(d1)
class(ty2),pointer::d1(:)
allocate(d1(2:5))
call s1(d1)
end subroutine
subroutine s1(dmy)
class(ty1),pointer,intent(in)::dmy(:)
if (.not.associated(dmy))print*,101
end subroutine
end
