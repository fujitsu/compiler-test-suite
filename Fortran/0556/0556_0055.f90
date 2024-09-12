module mymod
 interface
   subroutine sub(a)
	class(*),pointer::a
    end subroutine
  end interface
end module

subroutine sub(dum)

class(*) ,pointer :: dum
allocate(integer :: dum)
end subroutine

program main
use mymod
class (*), pointer:: objt1

call sub(objt1)
print *, "PASS"

end program
