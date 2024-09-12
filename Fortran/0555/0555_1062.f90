MODULE montype
 IMPLICIT NONE
 TYPE mon
  logical :: p
 END TYPE mon
 INTERFACE OPERATOR (.not.)
   MODULE PROCEDURE ntmon
 END INTERFACE
CONTAINS
  FUNCTION ntmon(a)
   IMPLICIT NONE
   TYPE (mon) :: ntmon
   CLASS (*), INTENT(IN) :: a

   select type(a)
   type is (mon)
   ntmon%p = .not.a%p
   end select

  END FUNCTION ntmon
END MODULE montype

program main
 use montype
 type(mon) :: p1,p2
 class(*),pointer::up
 p2%p = .true.
 
 allocate(up,source=p2)
 p1 = .not.up
 if(p1%p .eqv. .false.) print*,'PASS'
end program
