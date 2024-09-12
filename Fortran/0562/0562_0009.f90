type ty1
real::r1
end type
type,extends(ty1)::ty2
logical::l1
end type
type(ty2),target::obj
call sub(obj%r1)
print*,"Pass"
if (obj%r1 /= 2.50)print*,101
contains
subroutine sub(ptr1)
real,pointer,intent(in)::ptr1
if (.NOT.associated(ptr1))print*,"error"
ptr1=2.50
end subroutine
end
