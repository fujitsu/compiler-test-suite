module m1
  type t
   integer  y
  contains
    procedure t_myop
    generic :: operator(.USINGMYOPERATOR.) => t_myop
  end type
contains
  type(t) function t_myop(a)
    class(t),intent(in) ::a
    t_myop%y = a%y -2
  end function
end module

use m1
type(t)     :: obj
obj%y=20;
print *, .USINGMYOPERATOR.obj
print* ,'pass'
end
