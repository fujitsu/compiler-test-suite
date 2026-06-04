type::ty
integer,allocatable::k
end type
type(ty)::obj
call sub(NULL(obj%k))
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a
if(allocated(a))print*,"101"
allocate(a)
a=10
end subroutine
end
