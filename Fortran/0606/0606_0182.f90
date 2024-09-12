module m1
  type t
   integer  y
  contains
    procedure , pass(a):: t_myop
    generic :: operator(.USINGMYOPERATOR.) => t_myop
  end type
contains
  type(t) function t_myop(b, a)
    class(t),intent(in) ::a
    integer, intent(in) ::b
    t_myop%y = a%y + b
  end function
end module

use m1
type(t)     :: obj
obj%y=20;
print *, 5 .USINGMYOPERATOR. obj
print* ,'pass'
end
