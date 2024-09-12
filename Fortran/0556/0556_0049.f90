program main
type ty
	integer :: ii
end type ty

 class(*),pointer:: act
 allocate(INTEGER::act)
call sub(act)
print *,"PASS"

contains
subroutine sub(dmy)
	class(*) :: dmy
end subroutine
end
