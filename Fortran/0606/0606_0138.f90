module m1
  type t
    real y
  contains
    procedure, pass(b) :: p1
    generic :: operator(+) => p1
  end type
contains
  real function p1(b,a)
    real, intent (in):: a
    class(t),intent(in) :: b
    p1 = b%y + a
  end function
end module

use m1
type(t) :: objt1
real :: res, val
objt1%y = 12.50 
val = 12.50
res =  objt1 + val 
if(val*2 /= res )  print*, 'Error'
print* ,'pass' 
end
