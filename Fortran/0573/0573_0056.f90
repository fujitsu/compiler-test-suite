type ty
integer,allocatable::x(:)
end type
type(ty)::obj
allocate(obj%x(5))
obj%x =[1,2,3,4,5]
call sub(NULL(obj%x))
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a(:)
if(allocated(a))print*,"101"
allocate(a(10))
print*,"pass"
end subroutine
end
