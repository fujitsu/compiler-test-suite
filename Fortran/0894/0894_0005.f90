subroutine sub
type ty
integer::ii
end type
type(ty),pointer::ptr(:)
allocate(ptr(2:5))
ptr%ii=1
call s1(ptr)
contains
subroutine s1(d1)
class(ty),pointer,intent(in)::d1(:)
end subroutine
end subroutine
program main
call sub
end
