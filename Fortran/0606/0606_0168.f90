module m1
  type t
    real y
  contains
    procedure, pass(b) :: prc=>p1
    generic :: operator(.USERDEFINEMINUSOPERATOR.) => prc
  end type
contains
  real function p1(b,a)
    real , intent (in):: a
    class(t),intent(in) :: b
    p1 = b%y - a
  end function
end module

use m1
call sub()
contains 
subroutine sub()
type(t) :: objt1
real :: res, val
objt1%y = 12.50 
val = 12.50
res = objt1 .USERDEFINEMINUSOPERATOR. val
if(0.0000 .NE. res ) print*, 'Error'
print* ,'pass'
end subroutine 
end
