module m1
  type t
   integer  y
  contains
    procedure t_minus
    generic :: operator(-) => t_minus
  end type
contains
  type(t) function t_minus(a)
    class(t),intent(in) :: a
    t_minus%y = a%y -2
  end function
end

use m1
type(t)     :: obj
obj%y=20;
DO WHILE(obj%y > 10 )
obj =  -obj
print *,obj
END DO
if(obj%y .NE. 10) print*,'Error'
print* ,'pass' 
end
