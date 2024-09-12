program main
type ty
	integer :: ii
end type ty

 class(ty),pointer:: act
call sub(act)
print *, "PASS"
contains
subroutine sub(dmy)
	class(ty),pointer :: dmy
        allocate(dmy)
	dmy%ii = 2
end subroutine
end
