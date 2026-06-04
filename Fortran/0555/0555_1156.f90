MODULE montype
 IMPLICIT NONE
 TYPE mon
  integer :: p
 END TYPE mon
 INTERFACE ASSIGNMENT (=)
   MODULE PROCEDURE ntmon
 END INTERFACE
CONTAINS
  subroutine ntmon(a,b)
   IMPLICIT NONE
   CLASS (*), INTENT(OUT) :: a
   CLASS (*), INTENT(IN) :: b

   select type(a)
   type is (mon)
    select type(b)
     type is (mon)
       a%p = b%p
    end select
   end select

  END SUBROUTINE ntmon
END MODULE montype

program main
 use montype
 type(mon) :: p2
 class(*),pointer::up
 p2%p = 3
 
 allocate(up,source=p2)
  up = up
print*,'PASS'
end program
