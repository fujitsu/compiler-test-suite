type::ty
integer,allocatable::k(:,:)
end type
type(ty)::obj
allocate(obj%k(3,3))
call sub(NULL(obj%k))
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a(:,:)
if(allocated(a))print*,"101"
allocate(a(3,3))
end subroutine
end
