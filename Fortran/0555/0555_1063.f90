MODULE montype
 IMPLICIT NONE
 TYPE mon
  integer :: p
 END TYPE mon
 INTERFACE OPERATOR (**)
   MODULE PROCEDURE ntmon
 END INTERFACE
CONTAINS
  FUNCTION ntmon(a,b)
   IMPLICIT NONE
   TYPE (mon) :: ntmon
   CLASS (*), INTENT(IN) :: a
   CLASS (*), INTENT(IN) :: b

   select type(a)
   type is (mon)
    select type(b)
     type is (mon)
      ntmon%p = a%p**b%p
    end select
   end select

  END FUNCTION ntmon
END MODULE montype

program main
 use montype
 type(mon) :: p1,p2
 class(*),pointer::up
 p2%p = 3
 
 allocate(up,source=p2)
 p1 = up**up
 if(p1%p==27) print*,'PASS'
end program
