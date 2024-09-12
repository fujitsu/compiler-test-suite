module m1
  type t
   integer  y
  contains
    procedure t_myop
    generic :: operator(.USINGMYOPERATOR.) => t_myop
  end type
contains
  type(t) function t_myop(a, b)
    class(t),intent(in) ::a
    integer, intent(in) ::b
    t_myop%y = a%y + b
  end function
end module

use m1
type(t)     :: obj
obj%y=20;
print *, obj .USINGMYOPERATOR. 5
print* ,'pass'
end
