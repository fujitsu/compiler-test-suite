module m1
  type t
    real y
  contains
    procedure p1
    generic :: operator(-) => p1
  end type

  type t2
    real x
  contains
    procedure,pass(b) :: p2
    generic :: operator(+) => p2
  end type

contains
  real function p1(a,b)
    class(t),intent(in) :: a
    class(t2),intent(in) :: b
    p1 = a%y + b%x
  end function

  real function p2(b, a)
    class(t),intent(in) :: a
    class(t2),intent(in) :: b
    p2 = a%y + b%x
  end function
end

use m1
type(t) :: objt1;
type(t2) :: objt2;
real :: i=5.00
real::a(3)
objt2%x=12.50
objt1%y=15.50
a=(/i,(objt1 - objt2),(objt1 - objt2)/)
if(a(1) .NE. 5.0 ) print*, 'Error -1'
objt2%x=16.50
objt1%y=15.50
a=(/i,(objt2 + objt1),(objt2 + objt1)/)
if(a(2) .NE. 32.0 ) print*, 'Error -2'

print* ,'pass'
end
