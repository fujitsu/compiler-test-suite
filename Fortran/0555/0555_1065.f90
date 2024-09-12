MODULE montype
 IMPLICIT NONE
 TYPE mon
  logical :: p
 END TYPE mon
 INTERFACE OPERATOR (.and.)
   MODULE PROCEDURE ntmon
 END INTERFACE
CONTAINS
  FUNCTION ntmon(a,b)
   IMPLICIT NONE
   logical :: ntmon
   CLASS (*), INTENT(IN) :: a
   CLASS (*), INTENT(IN) :: b

   select type(a)
   type is (mon)
    select type(b)
     type is (mon)
      ntmon = a%p.and.b%p
    end select
   end select

  END FUNCTION ntmon
END MODULE montype

program main
 use montype
 type(mon) :: p2
 logical::p1
 class(*),pointer::up
 p2%p = .true.
 
 allocate(up,source=p2)
 p1 = up.and.up
 if(p1 .eqv. .true.)  print*,'PASS'
end program
