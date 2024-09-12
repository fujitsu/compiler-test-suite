program main
type ty
	integer :: ii
end type ty

 type(ty),pointer:: act
allocate(act)
call sub(act)
print*,"PASS"

contains
subroutine sub(dmy)
	class(ty) :: dmy
	dmy%ii = 2
end subroutine
end
