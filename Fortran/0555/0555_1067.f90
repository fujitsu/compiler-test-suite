MODULE moneytype
 IMPLICIT NONE
 TYPE money
  integer :: pounds, pence
 END TYPE money
 INTERFACE OPERATOR (-)
   MODULE PROCEDURE negatemoney
 END INTERFACE
CONTAINS
  FUNCTION negatemoney(a,b)
   IMPLICIT NONE
   TYPE (money) :: negatemoney
   CLASS (*), INTENT(IN) :: a,b

   select type(a)
   type is (money)
   select type(b)
   type is (money)
   negatemoney%pounds = b%pounds-a%pounds
   negatemoney%pence = b%pence-a%pence
   end select
   end select

  END FUNCTION negatemoney
END MODULE moneytype

program main
 use moneytype
 type(money) :: p1,p
 class(*),pointer::up
 p%pounds = 5
 p%pence = 6
 
 allocate(up,source=p)
 p1 = up-up
 if(p1%pounds==0 .and. p1%pence==0) print *,'PASS'
end program
