program main
type ty
	integer :: ii
end type ty

 class(*),pointer:: act
call sub(act)
print *, "PASS"

contains
subroutine sub(dmy)
	class(*),pointer :: dmy
        allocate(INTEGER :: dmy)
end subroutine
end
