module m1
  type t
   integer  y
  contains
    procedure t_minus
    generic,PRIVATE :: operator(-) => t_minus
  end type
contains
  type(t) function t_minus(a)
    class(t),intent(in) :: a
    t_minus%y = a%y - 2
    print *,"t_minus"
  end function
  function fun1()
  type(t)     :: fun1

  fun1%y=20;
  end function
end

use m1

type(t)     :: obj
obj = fun1()
if(obj%y .NE. 20) print* ,'121'
print*,"pass"

end
