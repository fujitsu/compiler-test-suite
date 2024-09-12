module m1
  type t
    real y
  contains
    procedure ::  prc1 =>p1
    procedure, pass(a) :: prc2 => p2
    generic :: operator(.PLUSTWODTOBJECTS.) => prc1
    generic :: operator(.MULTIPLICATIONTWODTOBJ.) => prc2
  end type

  type ,extends(t) :: t2
    real x
  contains
    procedure ::  prc1 =>p4
    procedure,pass(a) :: prc2 => p3
  end type

contains

  real function p1(a,b)
    class(t),intent(in) :: a
    real,intent(in)  :: b
    p1 = a%y + b
    print*, 'Base Version p1 OPERATOR(+(.PLUSTWODTOBJECTS.))  call'
  end function

  real function p4(a,b)
    class(t2),intent(in) :: a
    real,intent(in)  :: b
    p4 = a%y + b
  end function

  real function p2(a, b)
    class(t),intent(in) :: a
    class(t2),intent(in) :: b
    p2 = a%y * b%x
    print*, 'Base version p4 OPERATOR(*(.MULTIPLICATIONTWODTOBJ.))  call'
  end function

  real function p3(a, b)
    class(t2),intent(in) :: a
    class(t2),intent(in) :: b
    p3 = a%y * b%x
  end function
end

use m1

TYPE :: point
    REAL :: x, y
END TYPE point

type(t2), target  :: objt2;
type(t2)    :: objt3;
type(point) :: obj;
class(t),pointer :: ptr  
real val
val= 12.50
objt2%x=12.50
objt3%x=10.00

objt2%y=12.50
objt3%y=10.00

ptr => objt2
obj=point(ptr.PLUSTWODTOBJECTS.val, ptr.MULTIPLICATIONTWODTOBJ.objt3)
print*, "Point = " , obj
if(obj%x .NE. 25.0000) print*, 'Error'
print*,'pass'
end
