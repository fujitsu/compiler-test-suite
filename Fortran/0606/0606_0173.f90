module m1
  type t
   integer  y
    contains
    procedure t_plus
    generic :: operator(+) => t_plus
  end type
contains
  type(t) function t_plus(a)
    class(t),intent(in) :: a
    t_plus%y = a%y + 2
  end function
end

use m1

type(t)     :: obj
obj%y=20;
print *, +obj
print* ,'pass' 
end
