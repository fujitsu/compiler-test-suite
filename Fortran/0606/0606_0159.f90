module m1
  type t
    real y
  contains
    procedure , pass(b) :: p1
    generic :: operator(+) => p1
  end type

  type t2
    real x
  contains
    procedure,pass(b) :: p2
    generic :: operator(-) => p2
  end type

contains
  real function p1(a,b)
    real, intent (in) :: a
    class(t),intent(in) :: b
    p1 = a + b%y
  end function

  real function p2(b, a)
    class(t),intent(in) :: a
    class(t2),intent(in) :: b
    p2 = a%y - b%x
  end function
end

use m1

TYPE :: point
    REAL :: x, y
END TYPE point

type(t)     :: objt1;
type(t2)    :: objt2;
type(point) :: obj;
real val ;
objt2%x=12.50
objt1%y=15.50
val = 12.50;
obj=point(val+objt1, objt2-objt1)
if(obj%x .NE. 28.0) print*, 'Error'
print* ,'pass' 
end
