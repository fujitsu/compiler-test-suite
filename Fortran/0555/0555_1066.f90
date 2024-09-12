MODULE moneytype
 IMPLICIT NONE
 TYPE money
  logical :: pounds, pence
 END TYPE money
 INTERFACE OPERATOR (.not.)
   MODULE PROCEDURE negatemoney
 END INTERFACE
CONTAINS
  FUNCTION negatemoney(a)
   IMPLICIT NONE
   TYPE (money) :: negatemoney
   CLASS (*), INTENT(IN) :: a

   select type(a)
   type is (money)
   negatemoney%pounds = .not.a%pounds
   negatemoney%pence = .not.a%pence
   end select

  END FUNCTION negatemoney
END MODULE moneytype

program main
 use moneytype
 type(money) :: p1,p
 class(*),pointer::up
 p%pounds = .true.
 p%pence = .true.
 
 allocate(up,source=p)
 p1 = .not.up
 if(p1%pounds .eqv. .false.) print*,'pass1'
 if(p1%pence .eqv. .false.) print*,'PASS2'
end program
