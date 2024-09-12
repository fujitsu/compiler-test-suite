MODULE montype
 IMPLICIT NONE
 TYPE mon
  integer :: p
 END TYPE mon
CONTAINS
  SUBROUTINE sub(a)
   CLASS (*), INTENT(OUT) :: a
  END SUBROUTINE
END MODULE montype

program main
 use montype
 class(*),pointer::up

 allocate(mon::up)
 call sub(up)
print*,'pass'
end program
