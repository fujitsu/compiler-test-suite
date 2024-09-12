module m1
  type t
   integer  y
  contains
    procedure t_minus
    generic :: operator(>) => t_minus
  end type
contains
  logical function t_minus(a, b)
    class(t),intent(in) :: a
    integer, intent(in) :: b 
    t_minus = a%y > b
    print*, "t_minus Operator(>) call"
  end function
end

use m1
type(t)     :: obj
obj%y=20;
DO WHILE(obj%y > 10 )
obj%y = obj%y - 1
print *, obj
END DO
if(obj%y .NE. 10)print*,'Error'
print* ,'pass' 
end
